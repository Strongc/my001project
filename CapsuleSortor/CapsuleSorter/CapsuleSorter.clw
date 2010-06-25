; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CapsuleSorterDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "capsulesorter.h"
LastPage=0

ClassCount=13
Class1=CapsuleSorterApp
Class2=CAboutDlg
Class3=CapsuleSorterDlg
Class4=CCButton
Class5=CSelectMode

ResourceCount=10
Resource1=IDD_CAMERA_CONFIG
Resource2=IDD_CTRLBOARD_CONFIG
Resource3=IDD_CAPSULESORTER_DIALOG
Resource4=IDD_VERTIFY_DIALOG
Resource5=IDD_HARDWARE_CONFIG
Class6=CControlBoardSetting
Class7=CCamConfigSetting
Class8=CHardWareConfig
Class9=CSoftWareConfig
Resource6=IDD_SPECIFY_CAPSUAL_CFG
Class10=CKeyBoardDlg
Resource7=IDD_SOFTWARE_CONFIG
Class11=CVertifyDlg
Resource8=IDD_ABOUTBOX
Class12=CSpecifyCapsualeDlg
Resource9=IDD_KEYBOARD
Class13=CPathSelect
Resource10=IDD_DLG_PATHSELECT

[CLS:CapsuleSorterApp]
Type=0
BaseClass=CWinApp
HeaderFile=CapsuleSorter.h
ImplementationFile=CapsuleSorter.cpp

[CLS:CAboutDlg]
Type=0
BaseClass=CDialog
HeaderFile=CapsuleSorterDlg.cpp
ImplementationFile=CapsuleSorterDlg.cpp
LastObject=CAboutDlg

[CLS:CapsuleSorterDlg]
Type=0
BaseClass=CDialog
HeaderFile=CapsuleSorterDlg.h
ImplementationFile=CapsuleSorterDlg.cpp
LastObject=CapsuleSorterDlg
Filter=D
VirtualFilter=dWC

[CLS:CCButton]
Type=0
BaseClass=CButton
HeaderFile=ColorButton.h
ImplementationFile=ColorButton.cpp
Filter=W
LastObject=CCButton

[CLS:CSelectMode]
Type=0
BaseClass=CDialog
HeaderFile=SelectMode.h
ImplementationFile=SelectMode.cpp

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_CAPSULESORTER_DIALOG]
Type=1
Class=CapsuleSorterDlg
ControlCount=35
Control1=IDC_GrabImage,button,1342242827
Control2=IDC_FreezeImg,button,1342242827
Control3=IDC_SOFTCFG,button,1342242827
Control4=IDC_HARDCFG,button,1342242827
Control5=IDC_SOFTKEYBD,button,1342242827
Control6=IDOK,button,1342242827
Control7=IDC_ClearCount,button,1342242827
Control8=IDC_SaveMultImg,button,1342242827
Control9=IDC_IsSim,button,1073807363
Control10=IDC_LoadImage,button,1073807371
Control11=IDC_SaveImage,button,1073807371
Control12=IDC_LoadMultImg,button,1073807371
Control13=IDC_TestTarget,edit,1082196096
Control14=IDC_TestResult,edit,1082196096
Control15=IDC_RawImgRect,static,1342177287
Control16=IDC_HdlImgRect,static,1073741831
Control17=IDC_RawImgRect2,static,1342177287
Control18=IDC_AllCount,edit,1350631552
Control19=IDC_STATIC,static,1342308352
Control20=IDC_ResultTitle,static,1073872896
Control21=IDC_TargetTitle,static,1073872896
Control22=IDC_BadCount,edit,1350631552
Control23=IDC_STATIC,static,1342308352
Control24=IDC_STATIC,button,1342177287
Control25=IDC_STATIC,static,1342308352
Control26=IDC_GREEN,static,1342177283
Control27=IDC_YELLOW,static,1342177283
Control28=IDC_RED,static,1342177283
Control29=IDC_STATIC,button,1342177287
Control30=IDC_TestGroup,button,1073741831
Control31=IDC_STATIC,button,1342177287
Control32=IDC_LoadConfigFile,button,1342242827
Control33=IDC_SaveConfigFile,button,1342242827
Control34=IDC_END_COMTEST,button,1073807371
Control35=IDC_START_COMTEST,button,1073807371

[DLG:IDD_CAMERA_CONFIG]
Type=1
Class=CCamConfigSetting
ControlCount=54
Control1=IDC_ROIStartX,edit,1350631552
Control2=IDC_ROIStartY,edit,1350631552
Control3=IDC_ROIWidth,edit,1350631552
Control4=IDC_ROIHeight,edit,1350631552
Control5=IDC_WhiteRedVal,edit,1350631552
Control6=IDC_WhiteBlueVal,edit,1350631552
Control7=IDC_ExpTime,edit,1350631552
Control8=IDC_Gain,edit,1350631552
Control9=IDC_SET_COLORCAM,button,1342242816
Control10=IDC_GET_COLORCAM,button,1342242816
Control11=IDC_MONO_ROI_STARTX,edit,1350631552
Control12=IDC_MONO_ROI_STARTY,edit,1350631552
Control13=IDC_MONO_ROI_WIDTH,edit,1350631552
Control14=IDC_MONO_ROI_HEIGHT,edit,1350631552
Control15=IDC_MONO_EXPTIME,edit,1350631552
Control16=IDC_MONO_GAIN,edit,1350631552
Control17=IDC_SET_MONOCAM,button,1342242816
Control18=IDC_GET_MONOCAM,button,1342242816
Control19=IDC_CamSelect,combobox,1344339970
Control20=IDC_CAMCAPTURE,button,1342242816
Control21=IDC_CAMFREEZE,button,1342242816
Control22=IDC_COLOR_RECT,static,1342177287
Control23=IDC_STATIC,static,1342308352
Control24=IDC_MONO_RECT,static,1342177287
Control25=IDC_STATIC,static,1342308352
Control26=IDC_STATIC,static,1342308352
Control27=IDC_STATIC,static,1342308352
Control28=IDC_STATIC,static,1342308352
Control29=IDC_STATIC,static,1342308352
Control30=IDC_STATIC,static,1342308352
Control31=IDC_STATIC,static,1342308352
Control32=IDC_STATIC,static,1342308352
Control33=IDC_STATIC,static,1342308352
Control34=IDC_STATIC,static,1342308352
Control35=IDC_STATIC,static,1342308352
Control36=IDC_STATIC,static,1342308352
Control37=IDC_STATIC,static,1342308352
Control38=IDC_STATIC,static,1342308352
Control39=IDC_STATIC,static,1342308352
Control40=IDC_GenieToGenie,edit,1350633600
Control41=IDC_STATIC,static,1342308865
Control42=IDC_ProciToProci,edit,1350633600
Control43=IDC_STATIC,static,1342308352
Control44=IDC_GenieToProci,edit,1350633600
Control45=IDC_ProciToGenie,edit,1350633600
Control46=IDC_STATIC,static,1342308352
Control47=IDC_STATIC,static,1342308352
Control48=IDC_STATIC,static,1342308352
Control49=IDC_STATIC,button,1342177287
Control50=IDC_STATIC,button,1342177287
Control51=IDC_CamSoftKeyBD,button,1342242816
Control52=IDOK,button,1342242816
Control53=IDC_RECORD,edit,1350633600
Control54=IDC_BUTTON2,button,1342242816

[DLG:IDD_SOFTWARE_CONFIG]
Type=1
Class=CSoftWareConfig
ControlCount=28
Control1=IDC_CVDISPLAY,{289A0006-32DD-11D3-98F3-0060082C35E6},1342242816
Control2=IDC_TEMP_LIST,SysListView32,1350640129
Control3=IDC_LOAD_IMAGE,button,1342242816
Control4=IDC_NEXT_FRAM,button,1342242816
Control5=IDC_DROP_RESULT,button,1342242816
Control6=IDC_COMPLETE,button,1342242816
Control7=IDOK,button,1342242816
Control8=IDC_CapSoftKeyBD,button,1342242816
Control9=IDC_STATIC,static,1342308352
Control10=IDC_STATIC,static,1342308352
Control11=IDC_STATIC,static,1342308352
Control12=IDC_SizeChange1,edit,1350631552
Control13=IDC_Hue1Change,edit,1350631552
Control14=IDC_Hue2Change,edit,1350631552
Control15=IDC_MonoMaxVal,edit,1350631552
Control16=IDC_ColorMaxVal,edit,1350631552
Control17=IDC_STATIC,static,1342308352
Control18=IDC_STATIC,static,1342308352
Control19=IDC_STATIC,static,1342308352
Control20=IDC_SizeChange2,edit,1350631552
Control21=IDC_PROFILE,button,1342242819
Control22=IDC_SCL_RADIUS,scrollbar,1342177280
Control23=IDC_RADIUS,edit,1350633609
Control24=IDC_SCRL_MINBOXWIDTH,scrollbar,1342177280
Control25=IDC_EDT_MINBOXWIDTH,edit,1350633609
Control26=IDC_STATIC,static,1342308352
Control27=IDC_STATIC,static,1342308352
Control28=IDC_STATIC,button,1342177287

[DLG:IDD_CTRLBOARD_CONFIG]
Type=1
Class=CControlBoardSetting
ControlCount=62
Control1=IDC_STATIC,button,1342177287
Control2=IDC_SENSOR_SHIELD,static,1342308352
Control3=IDC_SENSOR_SHIELD_EDT,edit,1350631552
Control4=IDC_STATIC,static,1342308352
Control5=IDC_CAM1_DELAY,edit,1350631552
Control6=IDC_SENSOR_SEL,static,1342308352
Control7=IDC_SENSOR_COMB,combobox,1344340226
Control8=IDC_STATIC,static,1342308352
Control9=IDC_CAM1_HOLD,edit,1350631552
Control10=IDC_STATIC,static,1342308352
Control11=IDC_STATIC,static,1342308352
Control12=IDC_LIGHT1_DELAY,edit,1350631552
Control13=IDC_LIGHT1_HOLD,edit,1350631552
Control14=IDC_SET_TIMEORDER,button,1342251008
Control15=IDC_STATIC,button,1342177287
Control16=IDC_WORKMODE,combobox,1344339970
Control17=IDC_STATIC,static,1342308352
Control18=IDC_SET_COMPLEX,button,1342251008
Control19=IDC_STATIC,static,1342308352
Control20=IDC_WATCH_DOG_MODE,combobox,1344340226
Control21=IDC_VALVE_COMB,combobox,1344340226
Control22=IDC_STATIC,static,1342308352
Control23=IDC_VALVE_HOLD,edit,1350631552
Control24=IDC_SENSOR_SEL2,static,1342308352
Control25=IDC_CAM_COMB,combobox,1344340226
Control26=IDC_STATIC,button,1342177287
Control27=IDC_STATIC,static,1342308352
Control28=IDC_LAMP_COMB,combobox,1344339970
Control29=IDC_TEST_LAMP,button,1342242816
Control30=IDC_STATIC,button,1342177287
Control31=IDC_STATIC,static,1342308352
Control32=IDC_CAMINTER1,combobox,1344340226
Control33=IDC_STATIC,static,1342308352
Control34=IDC_CAMINTER2,combobox,1344340226
Control35=IDC_CAM_VALVE_DISTANCE1,edit,1350631552
Control36=IDC_CAM_VALVE_DISTANCE2,edit,1350631552
Control37=IDC_STATIC,static,1342308352
Control38=IDC_STATIC,static,1342308352
Control39=IDC_SET_SPACE,button,1342242816
Control40=IDC_STATIC,button,1342177287
Control41=IDC_STATIC,static,1342177793
Control42=IDC_CAPSUAL_INTERVAL,edit,1350631552
Control43=IDC_STATIC,static,1342177793
Control44=IDC_AXIS_RADIUS,edit,1350631552
Control45=IDC_STATIC,static,1342177793
Control46=IDC_CODE_PRECISION,edit,1350631552
Control47=IDC_STATIC,static,1342177793
Control48=IDC_PULSE_INTERVAL,edit,1350631552
Control49=IDC_STATIC,static,1342177793
Control50=IDC_CODE_ADJUST,edit,1350631552
Control51=IDC_SET_OTHER,button,1342242816
Control52=IDC_STATIC,button,1342177287
Control53=IDC_TEST_VALVE,button,1342242816
Control54=IDC_STATIC,static,1342308352
Control55=IDC_VALVE_INDEX,combobox,1344340226
Control56=IDC_SET_VALUE,button,1342242816
Control57=IDC_READ_CURRENT,button,1342242816
Control58=IDC_STATIC,static,1342308352
Control59=IDC_STATIC,static,1342308352
Control60=IDC_VALVE_DELAY,edit,1350631552
Control61=IDOK,button,1342242816
Control62=IDC_CtrlSoftKeyBD,button,1342242816

[CLS:CControlBoardSetting]
Type=0
HeaderFile=ControlBoardSetting.h
ImplementationFile=ControlBoardSetting.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_CAM_COMB
VirtualFilter=dWC

[CLS:CCamConfigSetting]
Type=0
HeaderFile=CamConfigSetting.h
ImplementationFile=CamConfigSetting.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_GenieToGenie
VirtualFilter=dWC

[DLG:IDD_HARDWARE_CONFIG]
Type=1
Class=CHardWareConfig
ControlCount=7
Control1=IDC_CAM_CFG,button,1342242816
Control2=IDC_CONTROLBOARD_CFG,button,1342242816
Control3=IDC_ValveEnable,button,1342242819
Control4=IDOK,button,1342242816
Control5=IDC_SaveAll,button,1342242819
Control6=IDC_WrongSave,button,1342242819
Control7=IDC_TRANSPARENT,button,1342242819

[CLS:CHardWareConfig]
Type=0
HeaderFile=SelectHDCfg.h
ImplementationFile=SelectHDCfg.cpp
BaseClass=CDialog
Filter=D
LastObject=CHardWareConfig
VirtualFilter=dWC

[CLS:CSoftWareConfig]
Type=0
HeaderFile=SoftWareConfig.h
ImplementationFile=SoftWareConfig.cpp
BaseClass=CDialog
Filter=D
LastObject=CSoftWareConfig
VirtualFilter=dWC

[DLG:IDD_KEYBOARD]
Type=1
Class=CKeyBoardDlg
ControlCount=15
Control1=IDC_BTN_ONE,button,1342242827
Control2=IDC_BTN_TWO,button,1342242827
Control3=IDC_BTN_THREE,button,1342242827
Control4=IDC_BTN_FOUR,button,1342242827
Control5=IDC_BTN_FIVE,button,1342242827
Control6=IDC_BTN_SIX,button,1342242827
Control7=IDC_BTN_SEVEN,button,1342242827
Control8=IDC_BTN_EIGHT,button,1342242827
Control9=IDC_BTN_NINE,button,1342242827
Control10=IDC_BTN_ZERO,button,1342242827
Control11=IDC_BTN_DOT,button,1342242827
Control12=IDC_BTN_BACK,button,1342242827
Control13=IDC_BTN_LEFT,button,1342242827
Control14=IDC_BTN_RIGHT,button,1342242827
Control15=IDC_BTN_ESC,button,1342242827

[CLS:CKeyBoardDlg]
Type=0
HeaderFile=KeyBoardDlg.h
ImplementationFile=KeyBoardDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CKeyBoardDlg
VirtualFilter=dWC

[DLG:IDD_VERTIFY_DIALOG]
Type=1
Class=CVertifyDlg
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_VERTIFYMSG,static,1342308352

[CLS:CVertifyDlg]
Type=0
HeaderFile=VertifyDlg.h
ImplementationFile=VertifyDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CVertifyDlg
VirtualFilter=dWC

[DLG:IDD_SPECIFY_CAPSUAL_CFG]
Type=1
Class=CSpecifyCapsualeDlg
ControlCount=5
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_SPECIFY_CAPSUAL,edit,1350631552
Control5=IDC_CfgSoftKeyBD,button,1342242816

[CLS:CSpecifyCapsualeDlg]
Type=0
HeaderFile=SpecifyCapsualeDlg.h
ImplementationFile=SpecifyCapsualeDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_CfgSoftKeyBD
VirtualFilter=dWC

[CLS:CPathSelect]
Type=0
HeaderFile=PathSelect.h
ImplementationFile=PathSelect.cpp
BaseClass=CDialog
Filter=D
LastObject=CPathSelect
VirtualFilter=dWC

[DLG:IDD_DLG_PATHSELECT]
Type=1
Class=CPathSelect
ControlCount=3
Control1=IDC_BTN_DEF,button,1342242816
Control2=IDC_BTN_SELECT,button,1342242816
Control3=IDC_STATIC,static,1342308352
