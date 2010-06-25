
#include "Valve.h"
#include "TLocker.h"
#include "CtrlCardComm.h"
#include "ConfigInfo.h"

size_t					Valve::m_allCount		= 0;	//全部胶囊数量
size_t					Valve::m_badCount		= 0;	//次品胶囊数量

Valve::Valve()
:   m_stamp(0),
  m_resultInterval(0),
  m_pushedIndex(eFirst),
  m_enable(true),
  m_ioBdEnable(true)
{
	memset			(m_resultStack, 0, sizeof(m_resultStack));
	memset(m_finalResult, 0, sizeof(m_finalResult));
	memset(m_preResullt, 0, sizeof(m_preResullt));
}

Valve::~Valve()
{
}

Valve& Valve::TheValve()
{
	static Valve theValve;
	return theValve;
}

bool Valve::IsEnable( )
{
	return m_enable;
}

void Valve::Enable(bool enable)
{
	m_enable = enable;
	Control(eFirst, 0x1);
}

/*******************************************************************************
*	函数名称：	Control
*	
*	参数	：	result		处理结果	
*				delayTime	延迟时间
*				period		单幅图像需要的时间
*			  
*	输出	：	成功	true
*				失败	false
*
*
*	功能	：将处理结果换算成为相应的延迟时间
*
*
********************************************************************************/

bool Valve::Control(ETIndex testIndex,	unsigned int result)
{
	if(!m_enable)	return false;
	for(int i=0; i<4; i++)
	{
		if((result>>i) & 0x01)
		{			
			CtrlCardComm::TheComm().SendBadInfo(1, 4-i);
		}
	}
	return true;
}

Valve::ETIndex Valve::TheOtherTest (ETIndex testIndex)
{
	return (eFirst == testIndex) ? eSecond : eFirst;
}


/*******************************************************************************
*	函数名称：	PushResult
*	
*	参数	：	testIndex	相机序列
*				result		处理结果
*			  
*	输出	：	成功 true 失败 false
*
*
*	功能	：将处理的结果压入队列
*
*
********************************************************************************/
bool Valve::PushResult(ETIndex testIndex, size_t period)
{
	GrabIndex	indexMode = static_cast<GrabIndex>(ConfigInfo::TheConfigInfo().GetGrabIndex());
	switch (indexMode)
	{
	case ONEBYONE:
		PushResultMode1(testIndex, period);
		break;
	case TWOBYTWO:
		PushResultMode2(testIndex, period);
		break;
	}
	return true;
}

bool Valve::PushResultMode1(ETIndex testIndex, size_t period)
{
	if (m_excuteFlag[testIndex])
	{
		if (eSecond == testIndex)
		{
			for(int i = m_resultInterval; i >0; i--)
			{
				m_resultStack[i] = m_resultStack[i-1];
			}
			
			m_resultStack[0]			= m_finalResult[testIndex]&0xf;
			m_finalResult[testIndex]	= 0;
			m_pushedIndex = eSecond;
		}
	}
	return true;
}

bool Valve::PushResultMode2(ETIndex testIndex, size_t period)
{
	static lastPeriod =  period;
	m_interType[testIndex] = lastPeriod > period ? eShortInterval:eLongInterval;
	lastPeriod = period;
	if (eLongInterval == m_interType[testIndex])
	{
		return true;
	}
	if (eSecond == testIndex)
	{
		for(int i = m_resultInterval; i >0; i--)
		{
			m_resultStack[i] = m_resultStack[i-1];
		}

		m_resultStack[0]			= m_finalResult[testIndex]&0xf;
        m_finalResult[testIndex]	= 0;
		m_pushedIndex = eSecond;
	}
	return true;
}

/*******************************************************************************
*	函数名称：	CtrlResult
*	
*	参数	：	testIndex		相机序列
*				resultIndex		处理结果
*				delayTime		延迟时间
*				period			相机触发周期
*			  
*	输出	：	废品胶囊数
*
*
*	功能	：执行定时操作
*
*
********************************************************************************/
unsigned int  Valve::CtrlResult(ETIndex testIndex, size_t	period)
{
	GrabIndex	indexMode = static_cast<GrabIndex>(ConfigInfo::TheConfigInfo().GetGrabIndex());
	switch (indexMode)
	{
	case ONEBYONE:
		return CtrlResultMode1(testIndex, period);
		
	case TWOBYTWO:
		return CtrlResultMode2(testIndex, period);
	default:
		return 0;
	}
}

unsigned int  Valve::CtrlResultMode1(ETIndex testIndex, size_t	period)
{
	if (m_excuteFlag[testIndex])
	{		
		unsigned int badSum			= 0;
		unsigned int finalResult	= 0;
		unsigned int stackValue		= m_resultStack[m_resultInterval]&0xf;
		unsigned int resultValue	= m_finalResult[testIndex]&0xf;
		
		finalResult = m_finalResult[testIndex]|m_resultStack[m_resultInterval];
	//	finalResult = finalResult|((m_resultStack[m_resultInterval-1]>>3)&0xf);			
		
		Control(testIndex, finalResult);
		for( int i = 0; i < 4; ++i)
		{
			badSum +=((finalResult>>i)&0x1);
		}
		m_pushedIndex = eFirst;
	return badSum;

	}
	return 0;
}

unsigned int  Valve::CtrlResultMode2(ETIndex testIndex, size_t	period)
{
	static size_t lastPeriod = period;
	m_interType[testIndex] = lastPeriod > period ? eShortInterval:eLongInterval;
	lastPeriod = period;
	if (eLongInterval	== m_interType[testIndex])
	{
		return	0;
	}

	unsigned int badSum			= 0;
	unsigned int finalResult	= 0;
	unsigned int stackValue		= m_resultStack[m_resultInterval]&0xf;
	unsigned int resultValue	= m_finalResult[testIndex]&0xf;

	if (testIndex == m_pushedIndex)
	{
		for(int i = m_resultInterval; i >0; i--)
		{
			m_resultStack[i] = m_resultStack[i-1];
		}		
		m_resultStack[0] = 0;
	}

	finalResult = resultValue|((stackValue<<1)&0xf);
	finalResult = finalResult|((m_resultStack[m_resultInterval-1]>>3)&0xf);			
	
	Control(testIndex, finalResult);
	for( int i = 0; i < 4; ++i)
	{
		badSum +=((finalResult>>i)&0x1);
	}
	m_pushedIndex = eFirst;
	return badSum;	
}

void Valve::SetParam(const ValveParam& param)
{
	m_ioBdEnable	 = (param.IOBoard != 0);
	m_resultInterval = param.ResultInterval;
}

ValveParam Valve::GetParam	() const
{
	ValveParam param;
	param.IOBoard		= m_enable ? 1 : 0;
	param.ResultInterval= m_resultInterval;
	return param;
}

void	Valve::ShortInterval(ETIndex testIndex,	  unsigned int	tempResult)
{
	m_finalResult[testIndex] = (((m_preResullt[testIndex]<<1)&0xf)| (tempResult&0xf))&0xf;
}

void	Valve::LongInterval(ETIndex testIndex,	unsigned int	tempResult)
{
	m_finalResult[testIndex]	= ((m_finalResult[testIndex]|((tempResult&0xf)>>3))&0xf);
	m_preResullt[testIndex]		= (tempResult&0xf);
}

void	Valve::SetProcessResult(	ETIndex					index,
									unsigned int			procResult)
{
	GrabIndex	grabMode = ConfigInfo::TheConfigInfo().GetGrabIndex();
	switch(grabMode)
	{
	case ONEBYONE:
		SetResultMode1(index, procResult);
		break;
	case TWOBYTWO:
		if (eShortInterval == m_interType[index])
		{
			ShortInterval(index, procResult);
		}
		else
		{
			LongInterval(index, procResult);
		}
		break;
	}
}

void	Valve::SetResultMode1	(	ETIndex					index,
									unsigned int			procResult)
{
	
	if (m_excuteFlag[index])
	{
		m_preResullt[index] = procResult|(m_preResullt[index]);
	}
	else
	{
		m_finalResult[index]	= (procResult>>2) | m_preResullt[index];
		m_preResullt[index]		= procResult<<2;
	}
	m_excuteFlag[index] = !m_excuteFlag[index];
}