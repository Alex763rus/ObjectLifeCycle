unit fUHFReader09demomain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, StdActns, ActnList, DateUtils,ExtCtrls,
  UHFReader09_Head,UHFReader09_DLL_Head,fProgress;


type
  TfrmUHFReader09demomain = class(TForm)
    PageControl1: TPageControl;
    TabSheet_CMD: TTabSheet;
    TabSheet_EPCC1G2: TTabSheet;
    GroupBox_ReaderInfo: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit_Version: TEdit;
    Edit_ComAdr: TEdit;
    Edit_scantime: TEdit;
    Edit_Type: TEdit;
    Button3: TButton;
    GroupBox_COM: TGroupBox;
    Label6: TLabel;
    Label12: TLabel;
    ComboBox_COM: TComboBox;
    Button2: TButton;
    Button4: TButton;
    StaticText1: TStaticText;
    Edit_CmdComAddr: TEdit;
    ComboBox_AlreadyOpenCOM: TComboBox;
    Edit_dmaxfre: TEdit;
    Edit_dminfre: TEdit;
    Edit_powerdBm: TEdit;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    Button5: TButton;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox5: TGroupBox;
    ComboBox_EPC1: TComboBox;
    Button_SetProtectState: TButton;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    ListView_EPC: TListView;
    Label17: TLabel;
    ComboBox_baud: TComboBox;
    Label1: TLabel;
    Edit_NewComAdr: TEdit;
    Label7: TLabel;
    ComboBox_scantime: TComboBox;
    Label5: TLabel;
    Button1: TButton;
    ComboBox_EPC2: TComboBox;
    Label9: TLabel;
    Edit_AccessCode2: TEdit;
    Edit_WriteData: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit_WordPtr: TEdit;
    Edit_Len: TEdit;
    Button_DestroyCard: TButton;
    Edit_DestroyCode: TEdit;
    Label33: TLabel;
    ComboBox_EPC3: TComboBox;
    Edit_AccessCode1: TEdit;
    Label24: TLabel;
    ActionList1: TActionList;
    Action_GetReaderInformation: TAction;
    Action_OpenCOM: TAction;
    Action_OpenRf: TAction;
    Action_CloseCOM: TAction;
    Action_CloseRf: TAction;
    Action_WriteComAdr: TAction;
    Action_WriteInventoryScanTime: TAction;
    Action_OpenTestMode: TAction;
    Action_CloseTestMode: TAction;
    Action_GetSystemInformation: TAction;
    StatusBar1: TStatusBar;
    Memo_DataShow: TMemo;
    GroupBox1: TGroupBox;
    P_Reserve: TRadioButton;
    P_EPC: TRadioButton;
    P_TID: TRadioButton;
    P_User: TRadioButton;
    GroupBox6: TGroupBox;
    C_Reserve: TRadioButton;
    C_EPC: TRadioButton;
    C_TID: TRadioButton;
    C_User: TRadioButton;
    Action_SetReaderInformation: TAction;
    ComboBox_dminfre: TComboBox;
    ComboBox_dmaxfre: TComboBox;
    Action_SetReaderInformation_0: TAction;
    Timer_Test_: TTimer;
    Action_Inventory: TAction;
    Action_ShowOrChangeData: TAction;
    Action_SetProtectState: TAction;
    Action_DestroyCard: TAction;
    ComboBox_PowerDbm: TComboBox;
    TabSheet_6B: TTabSheet;
    GroupBox12: TGroupBox;
    ListView_ID_6B: TListView;
    Action_Inventroy_6B: TAction;
    Action_Query_6B: TAction;
    Timer_Test_6B: TTimer;
    GroupBox13: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    ComboBox_ID1_6B: TComboBox;
    Edit_WriteData_6B: TEdit;
    Edit_StartAddress_6B: TEdit;
    Edit_Len_6B: TEdit;
    Button11: TButton;
    Memo_DataShow_6B: TMemo;
    Button12: TButton;
    Button14: TButton;
    Button15: TButton;
    Action_WriteData_6B: TAction;
    Action_ReadData_6B: TAction;
    Action_LockByte_6B: TAction;
    Action_CheckLock_6B: TAction;
    Button16: TButton;
    Button22: TButton;
    GroupBox14: TGroupBox;
    Label34: TLabel;
    Label28: TLabel;
    Edit_Query_StartAddress_6B: TEdit;
    Edit_ConditionContent_6B: TEdit;
    Less_6B: TRadioButton;
    Different_6B: TRadioButton;
    Same_6B: TRadioButton;
    Greater_6B: TRadioButton;
    Action_Query2_6B: TAction;
    GroupBox16: TGroupBox;
    GroupBox4: TGroupBox;
    DestroyCode: TRadioButton;
    AccessCode: TRadioButton;
    NoProect: TRadioButton;
    Always: TRadioButton;
    Proect: TRadioButton;
    AlwaysNot: TRadioButton;
    Button_DataWrite: TButton;
    Button_BlockErase: TButton;
    Action_ShowOrChangeData_write: TAction;
    Action_ShowOrChangeData_BlockErase: TAction;
    GroupBox17: TGroupBox;
    Label25: TLabel;
    ComboBox_IntervalTime: TComboBox;
    SpeedButton_Query: TSpeedButton;
    GroupBox18: TGroupBox;
    NoProect2: TRadioButton;
    AlwaysNot2: TRadioButton;
    Proect2: TRadioButton;
    Always2: TRadioButton;
    GroupBox19: TGroupBox;
    SpeedButton_Query_6B: TSpeedButton;
    GroupBox20: TGroupBox;
    ComboBox_EPC4: TComboBox;
    Label32: TLabel;
    Edit_AccessCode4: TEdit;
    Button_SetReadProtect_G2: TButton;
    Action_SetReadProtect_G2: TAction;
    Action_RemoveReadProtect_G2: TAction;
    Action_SetMultiReadProtect_G2: TAction;
    Action_CheckReadProtected_G2: TAction;
    Button_SetMultiReadProtect_G2: TButton;
    Button_RemoveReadProtect_G2: TButton;
    Button_CheckReadProtected_G2: TButton;
    GroupBox21: TGroupBox;
    Button_SetEASAlarm_G2: TButton;
    Action_SetEASAlarm_G2: TAction;
    ComboBox_EPC5: TComboBox;
    Action_CheckEASAlarm_G2: TAction;
    Edit_AccessCode5: TEdit;
    Label35: TLabel;
    GroupBox22: TGroupBox;
    Button_LockUserBlock_G2: TButton;
    Action_LockUserBlock_G2: TAction;
    ComboBox_BlockNum: TComboBox;
    Label36: TLabel;
    ComboBox_EPC6: TComboBox;
    Edit_AccessCode6: TEdit;
    Label37: TLabel;
    GroupBox23: TGroupBox;
    Label38: TLabel;
    Edit_AccessCode3: TEdit;
    Button_WriteEPC_G2: TButton;
    Action_WriteEPC_G2: TAction;
    Edit_WriteEPC: TEdit;
    Label39: TLabel;
    GroupBox24: TGroupBox;
    Alarm_G2: TRadioButton;
    NoAlarm_G2: TRadioButton;
    SpeedButton_CheckAlarm_G2: TSpeedButton;
    Timer_G2_Alarm: TTimer;
    ComboBox_IntervalTime_6B: TComboBox;
    Label27: TLabel;
    Byone_6B: TRadioButton;
    Bycondition_6B: TRadioButton;
    CheckBox_SameFre: TCheckBox;
    Timer_G2_Read: TTimer;
    SpeedButton_Read_G2: TSpeedButton;
    Timer_6B_ReadWrite: TTimer;
    SpeedButton_Write_6B: TSpeedButton;
    SpeedButton_Read_6B: TSpeedButton;
    Label_Alarm: TLabel;
    EPCC1G2: TCheckBox;
    ISO180006B: TCheckBox;
    GroupBox3: TGroupBox;
    RadioButton_band1: TRadioButton;
    RadioButton_band2: TRadioButton;
    RadioButton_band3: TRadioButton;
    RadioButton_band4: TRadioButton;
    GroupBox29: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    RadioButton_band5: TRadioButton;
    Label46: TLabel;
    ComboBox_baud2: TComboBox;
    Button_writeblock: TButton;
    GroupBox7: TGroupBox;
    Label22: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    CheckBox_TID: TCheckBox;
    CheckBox2: TCheckBox;
    Edit_PC: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure InitComList; //串口号初始化列表函数
    procedure InitReaderList;
    procedure RefreshStatus; //通讯端口更新函数
    procedure ClearLastInfo;
    procedure Action_CloseCOMExecute(Sender: TObject); //关闭串口函数,并清空相应的显示
    procedure Action_OpenCOMExecute(Sender: TObject);
    procedure Action_GetReaderInformationExecute(Sender: TObject); //打开串口函数
    procedure AddCmdLog(cmd, cmdName: string; cmdRet: Byte; errorCode: LongInt = -1);
    procedure Action_SetReaderInformationExecute(Sender: TObject);
    procedure ComboBox_dfreSelect(Sender: TObject);
    procedure Action_OpenTestModeExecute(Sender: TObject);
    procedure Timer_Test_Timer(Sender: TObject);
    procedure Action_InventoryExecute(Sender: TObject); //操作状态成功或错误提示函数
    function getStr(pStr: pchar; len: Integer): string;
    function getHexStr(sBinStr: string): string;
    procedure getCharStr(s:string;cStr: pchar);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure Action_ShowOrChangeDataExecute(Sender: TObject);
    procedure Action_SetProtectStateExecute(Sender: TObject);
    procedure Action_SetProtectStateUpdate(Sender: TObject);
    procedure Action_DestroyCardExecute(Sender: TObject);
    procedure Action_GetReaderInformationUpdate(Sender: TObject);
    procedure ComboBox_IntervalTimeChange(Sender: TObject);
    procedure Edit_NewComAdrKeyPress(Sender: TObject; var Key: Char);
    procedure Timer_G2_Timer(Sender: TObject);
    procedure ComboBox_IntervalTime_6BChange(Sender: TObject);
    procedure Action_Inventory_6BExecute(Sender: TObject);
    procedure Action_Query_6BExecute(Sender: TObject);
    procedure Action_CheckLock_6BExecute(Sender: TObject);
    procedure Action_LockByte_6BExecute(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Action_SetReadProtect_G2Execute(Sender: TObject);
    procedure Action_SetMultiReadProtect_G2Execute(Sender: TObject);
    procedure Action_CheckReadProtected_G2Execute(Sender: TObject);
    procedure Action_CheckEASAlarm_G2Execute(Sender: TObject);
    procedure Action_SetEASAlarm_G2Execute(Sender: TObject);
    procedure Action_LockUserBlock_G2Execute(Sender: TObject);
    procedure Action_RemoveReadProtect_G2Execute(Sender: TObject);
    procedure Action_WriteEPC_G2Execute(Sender: TObject);
    procedure Timer_G2_AlarmTimer(Sender: TObject);
    procedure ComboBox_AlreadyOpenCOMCloseUp(Sender: TObject);
    procedure CheckBox_SameFreClick(Sender: TObject);
    procedure Timer_G2_ReadTimer(Sender: TObject);
    procedure SpeedButton_ReadWrite_6BClick(Sender: TObject);
    procedure Timer_6B_ReadWriteTimer(Sender: TObject);
    procedure SpeedButton_Read_G2Click(Sender: TObject);
    procedure Action_CheckLock_6BUpdate(Sender: TObject);
    procedure RadioButton_band1Click(Sender: TObject);
    procedure RadioButton_band2Click(Sender: TObject);
    procedure RadioButton_band3Click(Sender: TObject);
    procedure RadioButton_band4Click(Sender: TObject);
    procedure RadioButton_band5Click(Sender: TObject);
    procedure ComboBox_COMChange(Sender: TObject);
    procedure Button_writeblockClick(Sender: TObject);
    procedure CheckBox_TIDClick(Sender: TObject);
    procedure Edit_LenKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure Edit_WriteDataChange(Sender: TObject);
    procedure C_EPCClick(Sender: TObject);
    procedure C_ReserveClick(Sender: TObject);
    procedure C_TIDClick(Sender: TObject);
    procedure C_UserClick(Sender: TObject);
  private
    { Private declarations }
    fAppClosed: Boolean; //在测试模式下响应关闭应用程序
    fComAdr: Byte; //当前操作的ComAdr
    ComIsOpen:Boolean;
    ferrorcode:LongInt;
    fBaud:Byte;
    fdminfre:Real;
    fdmaxfre:Real;
    fCmdRet: LongInt; //所有执行指令的返回值
    fOpenComIndex: Integer; //打开的串口索引号
    fIsInventoryScan: Boolean;
    fisinventoryscan_6B:Boolean;
    fOperEPC: array[0..35] of Char;
    fPassWord:array[0..4] of Char;
    fOperID_6B: array[0..8] of Char;
    fTimer_G2_Alarm: Boolean;
    fTimer_G2_Read:Boolean;
    fTimer_6B_ReadWrite:Boolean;
    maskadr,maskLen,maskFlag:Byte;


  private
    fInventory_EPC_List: string; //存贮询查列表（如果读取的数据没有变化，则不进行刷新）
    fInventory_TID_List: string; //存贮询查列表（如果读取的数据没有变化，则不进行刷新）
    Istemps02Save: boolean;
    temps02Save: string; // 存储继续询查前上次已经询查到的卡

  public
    { Public declarations }
  end;

var
  frmUHFReader09demomain: TfrmUHFReader09demomain;
  frmcomportindex :longint;
implementation


{$R *.dfm}

procedure TfrmUHFReader09demomain.Edit_NewComAdrKeyPress(Sender: TObject;
  var Key: Char);
  var L:Boolean;
begin
    L:=(key<#8)or(key>#8)and(key<#48)or(key>#57)and (key<#65)or(key>#70)and (key<#97)or(key>#102);
    if l then key:=#0;
    if ( (key>#96)and(key<#103))   then  key:=  char(Ord(key)-32) ;
end;

function TfrmUHFReader09demomain.getStr(pStr: pchar; len: Integer): string;
var
  i: Integer;
begin
  result := '';
  for i := 0 to len - 1 do
    result := result + (pStr + i)^;
end;

function TfrmUHFReader09demomain.getHexStr(sBinStr: string): string; //获得十六进制字符串
var
  i: Integer;
begin
  result := '';
  for i := 1 to Length(sBinStr) do
    result := result + IntToHex(ord(sBinStr[i]), 2);
end;

procedure TfrmUHFReader09demomain.getCharStr(s:string;cStr: pchar); //获得字符串
var
  i: Integer;
begin
  try
    for i := 0 to Length(s) div 2-1 do
    (cStr+i)^ := Char(StrToInt('$' + copy(s, i * 2 + 1, 2)));
  except
  end;
end;

procedure TfrmUHFReader09demomain.FormCreate(Sender: TObject);
begin
  fOpenComIndex := -1;
  fComAdr := 0;
  ferrorcode:= -1;
  fBaud:=5;
  InitComList;
  InitReaderList;
  NoAlarm_G2.checked :=True;

  Byone_6B.Checked:=True;
  Different_6B.Checked:=True;

  P_EPC.Checked:=True;
  C_EPC.Checked:=True;
  DestroyCode.Checked:=True;
  NoProect.Checked:=True;
  NoProect2.Checked:=True;
  Istemps02Save := false;
  fAppClosed := False;
  Timer_Test_.Enabled := False;
  Timer_Test_6B.Enabled := False;
  Timer_G2_Alarm.Enabled := False;
  Timer_G2_Read.Enabled := False;
  Timer_6B_ReadWrite.Enabled:=False;

  PageControl1.ActivePage := TabSheet_CMD;
  Label_Alarm.Visible:=False;                       //v2.1 add
   ComboBox_baud.ItemIndex:=3;
  RadioButton_band1.Checked:=True;
end;

procedure TfrmUHFReader09demomain.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     fAppClosed:=True;
end;

procedure TfrmUHFReader09demomain.InitReaderList;
var
  i:Integer;
begin
  for i:=0 to 62 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(902.6+i*0.4)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(902.6+i*0.4)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex := 0;
  ComboBox_dmaxfre.ItemIndex := 62;
  for i:=$03 to $ff do
  ComboBox_scantime.Items.Add(IntToStr(i)+'*100ms');
  ComboBox_scantime.ItemIndex := 27;
  i:=40;
  while i<=300 do
  begin
  ComboBox_IntervalTime.Items.Add(IntToStr(i)+'ms');
  i:=i+10;
  end;
  ComboBox_IntervalTime.ItemIndex :=1;
  for i:= 0 to 6 do
  ComboBox_BlockNum.Items.Add(IntToStr(i*2)+' and '+IntToStr(i*2+1));
  ComboBox_BlockNum.ItemIndex :=0;
  i:=40;
  while i<=300 do
  begin
  ComboBox_IntervalTime_6B.Items.Add(IntToStr(i)+'ms');
  i:=i+10;
  end;
  ComboBox_IntervalTime_6B.ItemIndex :=1;
  ComboBox_PowerDbm.ItemIndex:=13;
  ComboBox_baud2.ItemIndex:=3;
end;
procedure TfrmUHFReader09demomain.InitComList; //串口号初始化列表函数
var
  i: Integer;
begin
  ComboBox_COM.Items.Clear;
  ComboBox_COM.Items.Add(' AUTO');
  for i := 1 to 12 do
    ComboBox_COM.Items.Add(' COM' + IntToStr(i));
  ComboBox_COM.ItemIndex := 0;
  RefreshStatus;
end;

procedure TfrmUHFReader09demomain.RefreshStatus; //通讯端口更新函数
begin
  if not (ComboBox_AlreadyOpenCOM.Items.Count <> 0) then
    StatusBar1.Panels.Items[1].Text := 'COM Closed'
  else
    StatusBar1.Panels.Items[1].Text := ' COM' + IntToStr(frmcomportindex);
  StatusBar1.Panels.Items[0].Text :='';
  StatusBar1.Panels.Items[2].Text :='';
end;

procedure TfrmUHFReader09demomain.ClearLastInfo;
begin

  ComboBox_AlreadyOpenCOM.Repaint;
  RefreshStatus;
  Edit_Type.Text := '';
  Edit_Version.Text := '';
  ISO180006B.Checked:=False;
  EPCC1G2.Checked:=False;
  Edit_ComAdr.Text := '';
  Edit_powerdBm.Text := '';
  Edit_scantime.Text := '';
  Edit_dminfre.Text := '';
  Edit_dmaxfre.Text := '';
  PageControl1.TabIndex := 0;
  RadioButton_band1.Checked:=True;
end;

procedure TfrmUHFReader09demomain.Action_CloseCOMExecute(Sender: TObject); //关闭串口函数,并清空相应的显示
var
port:byte;
SelectCom :string;
begin
ClearLastInfo;
  try
    if ComboBox_AlreadyOpenCOM.itemindex < 0 then
      begin
        Application.MessageBox('Please Choose COM Port to close', 'Information', MB_ICONINFORMATION);
        exit;
      end
    else
    begin
      SelectCom := copy(ComboBox_AlreadyOpenCOM.Items[ComboBox_AlreadyOpenCOM.ItemIndex],4,2);
      port := strtoint(SelectCom);
      fComAdr := CloseSpecComPort(port) ;
      if fComAdr  = 0 then
      begin
        ComIsOpen:=False;
        ComboBox_AlreadyOpenCOM.DeleteSelected;
        if ComboBox_AlreadyOpenCOM.items.Count <> 0 then
          begin
            ComIsOpen:=True;
            port := strtoint(copy(ComboBox_AlreadyOpenCOM.items[0],4,2));
            CloseSpecComPort(port);
            fComAdr := $FF;
            opencomport(port,fComAdr,fBaud,frmcomportindex);
            fOpenComIndex := frmcomportindex;
            RefreshStatus;
            Action_GetReaderInformationExecute(Sender); //自动执行读取写卡器信息
          end;
      end
      else
      begin
        Application.MessageBox('Serial Communication Error', 'Information', MB_ICONINFORMATION);
        exit;
      end;
    end;
  finally

  end;

  if ComboBox_AlreadyOpenCOM.items.Count <> 0 then
    ComboBox_AlreadyOpenCOM.ItemIndex := 0
  else
    begin
      fOpenComIndex := -1;
      ComboBox_AlreadyOpenCOM.clear;
      ComboBox_AlreadyOpenCOM.Repaint;
      RefreshStatus;
    end;
end;

procedure TfrmUHFReader09demomain.ComboBox_AlreadyOpenCOMCloseUp(
  Sender: TObject);
var
  SelectCom:string;
  port :byte;
begin
  if ComboBox_AlreadyOpenCOM.items.count <>0 then
  begin
    SelectCom := copy(ComboBox_AlreadyOpenCOM.Items[ComboBox_AlreadyOpenCOM.ItemIndex],4,2);
    port := strtoint(SelectCom);
    CloseSpecComPort(port);
    fComAdr := $FF;
    if opencomport(port,fComAdr,fBaud,frmcomportindex) <> 0 then
    begin
      Application.MessageBox('Serial Communication Error', 'Information',MB_ICONINFORMATION);
      exit;
    end;
    fOpenComIndex := frmcomportindex;
    ClearLastInfo;
    RefreshStatus;
    Action_GetReaderInformationExecute(Action_GetReaderInformation); //自动执行读取写卡器信息
  end;
end;

procedure TfrmUHFReader09demomain.Action_OpenCOMExecute(Sender: TObject); //打开串口函数
var
  port,i: LongInt;
  openresult :byte;
begin
  Screen.Cursor := crHourGlass;
  if  Edit_CmdComAddr.Text='' then
  Edit_CmdComAddr.Text:='FF';
  fComAdr := StrToInt('$' + Edit_CmdComAddr.Text); // $FF;
  try
      if ComboBox_COM.ItemIndex = 0 then //Auto
      begin
        fbaud:=ComboBox_baud2.ItemIndex;
        if fbaud>2 then fbaud:=fbaud+2;
        openresult := AutoOpenComPort(port,fComAdr,fBaud,frmcomportindex);
        fOpenComIndex := frmcomportindex;
        if openresult = 0 then
        begin
          if(fBaud>3)then
              ComboBox_baud.ItemIndex:=fBaud-2
          else
              ComboBox_baud.ItemIndex:=fBaud;
          Action_GetReaderInformationExecute(Sender); //自动执行读取写卡器信息
          if (fCmdRet=$35) or (fCmdRet=$30)then
          begin
           Application.MessageBox('Serial Communication Error or Occupied', 'Information', MB_ICONINFORMATION);
           CloseSpecComPort(frmcomportindex) ;
           exit;
          end;
        end;          
      end
      else
      begin
        port := strtoint(copy(ComboBox_COM.items[ComboBox_COM.itemindex],5,2));
        for i:=6 downto 0 do
        begin
          fBaud:=i;
          if(fBaud=3)then
          Continue;
          openresult := opencomport(port,fComAdr,fBaud,frmcomportindex);
          fOpenComIndex := frmcomportindex;
          if openresult= $35 then
          begin
           Application.MessageBox('COM Opened', 'Information',MB_ICONINFORMATION);
            Exit;
          end;
          if openresult = 0 then
          begin
            if(fBaud>3)then
              ComboBox_baud.ItemIndex:=fBaud-2
            else
              ComboBox_baud.ItemIndex:=fBaud;
            Action_GetReaderInformationExecute(Sender); //自动执行读取写卡器信息
            if (fCmdRet=$35) or (fCmdRet=$30)then
            begin
              Application.MessageBox('Serial Communication Error or Occupied', 'Information', MB_ICONINFORMATION);
             CloseSpecComPort(frmcomportindex) ;
            end;
            Break;
          end;
        end;
      end;
  finally
    Screen.Cursor := crDefault;
  end;

  if (fOpenComIndex <> -1) and
     (openresult <> $35)  and
     (openresult <> $30)  then
  begin
    ComboBox_AlreadyOpenCOM.Items.Add('COM'+inttostr(fOpenComIndex)) ;
    ComboBox_AlreadyOpenCOM.ItemIndex := ComboBox_AlreadyOpenCOM.ItemIndex + 1;

    ComIsOpen:=True;
  end;
  if (fOpenComIndex = -1) and
     (openresult = $30)  then
  begin
    Application.MessageBox('Serial Communication Error', 'Information', MB_ICONINFORMATION);
  end;

  if (ComboBox_AlreadyOpenCOM.Items.Count <> 0) then
  begin
    fComAdr := StrToInt('$' +Edit_ComAdr.Text);
    frmcomportindex := strtoint(copy(ComboBox_AlreadyOpenCOM.items[ComboBox_AlreadyOpenCOM.itemindex],4,2));
  end;
  RefreshStatus;
end;

procedure TfrmUHFReader09demomain.Action_GetReaderInformationExecute(
  Sender: TObject);
  function getNoStr(no: Integer; noLen: Integer): string;
  begin
    result := intToStr(no);
    while Length(result) < noLen do
      result := '0' + result;
  end;
var
  TrType, VersionInfo: array[0..2] of Char;
  ReaderType, ScanTime,dmaxfre,dminfre,powerdBm,FreBand: Byte;
begin
  Edit_Version.Text := '';
  Edit_ComAdr.Text := '';
  Edit_ScanTime.Text := '';
  Edit_Type.text := '';
  ISO180006B.Checked:=False;
  EPCC1G2.Checked:=False;
  Edit_powerdBm.text := '';
  Edit_dminfre.text := '';
  Edit_dmaxfre.text := '';
  fCmdRet:=GetReaderInformation(fComAdr,@VersionInfo,ReaderType,@TrType, dmaxfre ,dminfre,powerdBm,
                                 ScanTime,frmComPortindex);
  Edit_Version.Text := getnostr(Ord(versioninfo[0]),2)+'.'+getnostr(Ord(versioninfo[1]),2);
  Edit_ComAdr.Text := IntToHex(fComAdr,2);
  Edit_NewComAdr.Text := IntToHex(fComAdr,2);
  Edit_ScanTime.Text := inttostr(ScanTime)+'*100ms';
  ComboBox_scantime.ItemIndex:= scantime-3;
  Edit_powerdBm.Text   :=IntToStr(powerdBm);
  if(powerDbm>13)then
  ComboBox_PowerDbm.ItemIndex:=13
  else
  ComboBox_PowerDbm.ItemIndex:=powerDbm;
 FreBand:= ((dmaxfre and $c0)shr 4)or(dminfre shr 6) ;
 case FreBand of
 $00:begin
         RadioButton_band1.Checked:=True;
         fdminfre :=902.6+(dminfre and $3F)*0.4;
         fdmaxfre :=902.6+(dmaxfre and $3F)*0.4;
     end;
 $01:begin
         RadioButton_band2.Checked:=True;
         fdminfre := 920.125+(dminfre and $3F)*0.25;
         fdmaxfre := 920.125+(dmaxfre and $3F)*0.25;
     end;
 $02:begin
         RadioButton_band3.Checked:=True;
         fdminfre := 902.75+(dminfre and $3F)*0.5;
         fdmaxfre := 902.75+(dmaxfre and $3F)*0.5;
     end;
 $03:begin
         RadioButton_band4.Checked:=True;
         fdminfre := 917.1+(dminfre and $3F)*0.2;
         fdmaxfre := 917.1+(dmaxfre and $3F)*0.2;
     end;
  $04:begin
         RadioButton_band5.Checked:=True;
         fdminfre := 865.1+(dminfre and $3F)*0.2;
         fdmaxfre := 865.1+(dmaxfre and $3F)*0.2;
     end;
 end;
  Edit_dminfre.Text := FloatToStr(fdminfre)+'MHz';
  Edit_dmaxfre.Text := FloatToStr(fdmaxfre)+'MHz';
  if fdmaxfre<>fdminfre then
  CheckBox_SameFre.Checked:=False;
  ComboBox_dminfre.ItemIndex:=dminfre;
  ComboBox_dmaxfre.ItemIndex:=dmaxfre;
  case ReaderType of
      $08: begin
           Edit_Type.text := 'UHFReader09';
           end;
  end;
    if (ord(TrType[0]) and $02) = $02 then //第二个字节低第四位代表支持的协议“ISO/IEC 15693”
    begin
    ISO180006B.Checked:=True;
    EPCC1G2.Checked:=True;
    end
    else
    begin
    ISO180006B.Checked:=False;
    EPCC1G2.Checked:=False;
    end;  
  AddCmdLog('GetReaderInformation','GetReaderInformation', fCmdRet);

end;

procedure TfrmUHFReader09demomain.AddCmdLog(cmd, cmdName: string; cmdRet: Byte; errorCode: LongInt = -1); //操作状态成功或错误提示函数
var
  s: string;
begin
  if cmdRet <> 0 then
  begin
    s :='Command Response=0x'+ IntToHex(cmdRet, 2) + '(' + UHFReader09_GetReturnCodeDesc(cmdRet) + ')';
    if ErrorCode <> -1 then
    begin
        s := s + #13#10 + 'ErrorCode=0x' + IntToHex(ErrorCode, 2) + '(' + UHFReader09_GetErrorCodeDesc(ErrorCode) + ')';
      Application.MessageBox(pchar(s), 'Error Information', MB_ICONINFORMATION);
    end;
  end;
  ferrorcode:=-1;
  if cmdRet = 0 then
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) + '"' + cmdName + '"successfully'
  else
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) + '' + s;
end;

procedure TfrmUHFReader09demomain.CheckBox_SameFreClick(Sender: TObject);
begin
    if   CheckBox_SameFre.Checked then
    ComboBox_dmaxfre.ItemIndex:=ComboBox_dminfre.ItemIndex;
end;

procedure TfrmUHFReader09demomain.Action_SetReaderInformationExecute(
  Sender: TObject);
var
  aNewComAdr,powerDbm,dminfre, dmaxfre ,scantime,band: Byte;
  returninfo:string;
  returninfoDlg:string;
  setinfo:string;
begin
  frmProgress.Show;
  frmUHFReader09demomain.Enabled:=False;
   if(RadioButton_band1.Checked)then
  band:=0;
  if(RadioButton_band2.Checked)then
  band:=1;
  if(RadioButton_band3.Checked)then
  band:=2;
  if(RadioButton_band4.Checked)then
  band:=3;
  if(RadioButton_band5.Checked)then
  band:=4;
  frmProgress.ProgressBar1.Position:=0;
  if Sender = Action_SetReaderInformation then
  begin
    dminfre := ((band and 3)shl 6)or (ComboBox_dminfre.ItemIndex and $3F) ;
    dmaxfre := ((band and $c)shl 4)or (ComboBox_dmaxfre.ItemIndex and $3F) ;
    aNewComAdr := StrToInt('$' + Edit_NewComAdr.Text);
    powerDbm:=ComboBox_PowerDbm.ItemIndex;
    fbaud:=ComboBox_baud.ItemIndex;
    if fbaud>2 then fbaud:=fbaud+2;
    scantime:= ComboBox_scantime.ItemIndex+3;
    setinfo:=' Write ';
  end
  else
  begin
    dminfre := 0;
    dmaxfre := 62;
    aNewComAdr :=$00;
    powerDbm:=13;
    fbaud:=5;
    scantime:=30;
    setinfo:=' Recovery ';
    ComboBox_baud.ItemIndex:= 3;
  end;

  frmProgress.ProgressBar1.StepBy(20);
  fCmdRet := WriteComAdr(fComAdr, aNewComAdr,frmcomportindex);
  if fCmdRet=ParameterSaveFailCanUseBeforeNoPower then
  fComAdr := aNewComAdr;
  if fCmdRet = 0 then
  begin
    fComAdr := aNewComAdr;
    returninfo:=returninfo+setinfo+'Address Successfully';
  end
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+setinfo+'Address Response Command Error'
  else
  begin
  returninfo:=returninfo+setinfo+'Address Fail';
  returninfoDlg:=returninfoDlg+setinfo+'Address Fail Command Response=0x'
       +inttostr(fCmdRet)+'('+UHFReader09_GetReturnCodeDesc(fCmdRet)+')';
  end;

  frmProgress.ProgressBar1.StepBy(20);
  fCmdRet := SetPowerDbm(fComAdr,powerDbm,frmcomportindex);
  if fCmdRet = 0 then
   returninfo:=returninfo+',Power Success'
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+',Power Response Command Error'
  else
  begin
  returninfo:=returninfo+',Power Fail';
  returninfoDlg:=returninfoDlg+#13#10+setinfo+'Power Fail Command Response=0x'
       +inttostr(fCmdRet)+'('+UHFReader09_GetReturnCodeDesc(fCmdRet)+')';
  end;

  frmProgress.ProgressBar1.StepBy(20);
  fCmdRet := Writedfre(fComAdr,dmaxfre,dminfre,frmcomportindex);
  if fCmdRet = 0 then
   returninfo:=returninfo+',Frequency Success'
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+',Frequency Response Command Error'
  else
  begin
  returninfo:=returninfo+',Frequency Fail';
  returninfoDlg:=returninfoDlg+#13#10+setinfo+'Frequency Fail Command Response=0x'
       +inttostr(fCmdRet)+'('+UHFReader09_GetReturnCodeDesc(fCmdRet)+')';
  end;

  frmProgress.ProgressBar1.StepBy(20);
  fCmdRet := Writebaud(fComAdr, fBaud,frmcomportindex);
  if fCmdRet = 0 then
   returninfo:=returninfo+',Baud Rate Success'
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+',Baud Rate Response Command Error'
  else
  begin
  returninfo:=returninfo+',Baud Rate Fail';
  returninfoDlg:=returninfoDlg+#13#10+setinfo+'Baud Rate Fail Command Response=0x'
       +inttostr(fCmdRet)+'('+UHFReader09_GetReturnCodeDesc(fCmdRet)+')';
  end;

  frmProgress.ProgressBar1.StepBy(20);
  fCmdRet := Writescantime(fComAdr, scantime,frmcomportindex);
  if fCmdRet = 0 then
   returninfo:=returninfo+',InventoryScanTime Success'
  else if fCmdRet=RecmdErr then
  returninfo:=returninfo+',InventoryScanTime Response Command Error'
  else
  begin
  returninfo:=returninfo+',InventoryScanTime Fail';
  returninfoDlg:=returninfoDlg+#13#10+setinfo+'InventoryScanTime Fail Command Response=0x'
       +inttostr(fCmdRet)+'('+UHFReader09_GetReturnCodeDesc(fCmdRet)+')';
  end;

  frmProgress.ProgressBar1.StepBy(20);
  Action_GetReaderInformationExecute(Sender);
  frmProgress.Close;
  frmUHFReader09demomain.Enabled:=True;
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  returninfo;
  if  returninfoDlg<>'' then
  MessageDlg(returninfoDlg, mtInformation, [mbOK], 0);
end;

procedure TfrmUHFReader09demomain.ComboBox_dfreSelect(Sender: TObject);
begin
  if CheckBox_SameFre.Checked then
  begin
    if TComboBox(Sender).Tag=1 then
    ComboBox_dminfre.ItemIndex:=ComboBox_dmaxfre.ItemIndex
    else
    ComboBox_dmaxfre.ItemIndex:=ComboBox_dminfre.ItemIndex;
  end
  else if  ComboBox_dminfre.ItemIndex> ComboBox_dmaxfre.ItemIndex  then
  begin
    if TComboBox(Sender).Tag=0 then
    ComboBox_dminfre.ItemIndex:=ComboBox_dmaxfre.ItemIndex
    else
    ComboBox_dmaxfre.ItemIndex:=ComboBox_dminfre.ItemIndex;
    Application.MessageBox('Min.Frequency is equal or lesser than Max.Frequency', 'Error Information', MB_ICONINFORMATION);
  end;

end;

procedure TfrmUHFReader09demomain.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePage <> TabSheet_EPCC1G2) then
  begin
    Timer_Test_.Enabled := False;
    SpeedButton_Query.Down:=False;
    SpeedButton_CheckAlarm_G2.Down:=False;
    SpeedButton_Read_G2.Down:=False;
    Timer_G2_Alarm.Enabled:=False;
    Timer_G2_Read.Enabled:=False;
    Timer_6B_ReadWrite.Enabled:=False;
    SpeedButton_Write_6B.Down:=False;
    SpeedButton_Read_6B.Down:=False;
  end;
  if (PageControl1.ActivePage <> TabSheet_6B) then
  begin
    Timer_Test_6B.Enabled := False;
    SpeedButton_Query_6B.Down:=False;
  end;
end;

procedure TfrmUHFReader09demomain.Action_GetReaderInformationUpdate(
  Sender: TObject);
begin
  Button3.Enabled:=ComIsOpen;
  Button5.Enabled:=ComIsOpen;
  Button1.Enabled:=ComIsOpen;
end;

//EPC 6C G2 协议函数

procedure TfrmUHFReader09demomain.ComboBox_IntervalTimeChange(Sender: TObject);
begin
  if   ComboBox_IntervalTime.ItemIndex<6  then
  Timer_Test_.Interval :=100
  else
  Timer_Test_.Interval :=(ComboBox_IntervalTime.ItemIndex+4)*10;
end;

procedure TfrmUHFReader09demomain.Action_OpenTestModeExecute(Sender: TObject);
var
   i:   Integer;
begin
    if(CheckBox_TID.Checked)then
  begin
    if(Length(Edit1.Text)<>2)or(Length(Edit4.Text)<>2)then
    begin
     StatusBar1.Panels[0].Text:='TID Parameter Error';
     SpeedButton_Query.down:=False;
     Exit;
    end;
  end;
  if not (SpeedButton_Query.down) then
  begin
    AddCmdLog('Inventory', 'Exit Query', 0);
    Timer_Test_.Enabled:=False;
     Edit4.Enabled:=true;
    Edit1.Enabled:=true;
    CheckBox_TID.Enabled:=True;
  end
  else
  begin
    fInventory_EPC_List := ''; //先清除原来的缓冲
    ListView_EPC.Items.Clear;
    Timer_Test_.Enabled:=True;
    ListView_EPC.Clear;
    ComboBox_EPC1.Clear;
    ComboBox_EPC2.Clear;
    ComboBox_EPC3.Clear;
    ComboBox_EPC4.Clear;
    ComboBox_EPC5.Clear;
    ComboBox_EPC6.Clear;
    Edit4.Enabled:=False;
    Edit1.Enabled:=False;
    CheckBox_TID.Enabled:=False;
  end;
end;

procedure TfrmUHFReader09demomain.Timer_Test_Timer(Sender: TObject);
begin
    if fisinventoryscan then    Exit;
    Action_inventoryExecute(sender);

end;

procedure TfrmUHFReader09demomain.Action_InventoryExecute(Sender: TObject);
  procedure ChangeSubItem1(aListItem: TListItem; subItemIndex: Integer; ItemText: string);
  begin
    if aListItem.SubItems[subItemIndex] = ItemText then
    begin
      if (aListItem.SubItems[2]='99999') or (aListItem.SubItems[2]='')then              //aListItem.SubItems[2]为次数
       aListItem.SubItems[2]:='0'                        //aListItem.SubItems[0]为 EPC号
      else
      begin
       aListItem.SubItems[2]:= IntToStr(StrToInt(aListItem.SubItems[2])+1);
       exit; //内容相同则不需要修改，可以不闪烁
      end;
    end;
    aListItem.SubItems[2]:='1';
    aListItem.SubItems[subItemIndex] := ItemText;

  end;
  procedure ChangeSubItem2(aListItem: TListItem; subItemIndex: Integer; ItemText: string);
  begin
    if aListItem.SubItems[subItemIndex] = ItemText then         //aListItem.SubItems[1]为 EPC长度
    exit; //内容相同则不需要修改，可以不闪烁
    aListItem.SubItems[subItemIndex] := ItemText;
  end;
var
  CardNum:LongInt;
  EPClen,m,Totallen:Integer;
  EPC: array[0..5000] of Char;
  isonstring:Boolean;
  isonlistview:Boolean;
  CardIndex: Integer;
  temps: string;
  s,ss, sEPC: string;
  aListItem: TListItem;
  temps2, temps3: string;
  i, j: integer;
    AdrTID,LenTID,TIDFlag:Byte;
begin
 if(CheckBox_TID.Checked)then
  begin
    AdrTID:=StrToInt('$'+Trim(Edit1.Text));
    LenTID:=StrToInt('$'+Trim(Edit4.Text));
    TIDFlag:=1;
  end
  else
  begin
    AdrTID:=0;
    LenTID:=0;
    TIDFlag:=0;
  end;
  fIsInventoryScan := true;
  try
  fCmdRet :=Inventory_G2(fComAdr,AdrTID,LenTID,TIDFlag,@EPC,Totallen,CardNum,frmcomportindex);
    if  (fCmdRet = $01)or (fCmdRet = $02)or (fCmdRet = $03)or (fCmdRet = $04)or(fCmdRet = $FB)  then //代表已查找结束，并且内容有发生变化
    begin
       temps :=getStr(EPC,Totallen);
      begin
        fInventory_EPC_List := tempS;            //存贮记录
          m:=1;
        for CardIndex := 1 to CardNum do
        begin
            EPClen:=ord(tempS[m])+1;
            sEPC := copy(tempS,m,EPClen) ;
            m:=m+EPClen;
            if Length(sEPC) <> EPClen then Continue;
            s := getHexStr(sEPC);
          isonlistview:=False;
          for i:=1 to ListView_EPC.Items.Count do      //判断是否在Listview列表内
          begin
            if copy(s, 3, Length(s))=(ListView_EPC.Items[i - 1]).SubItems[0] then
            begin
             aListItem := ListView_EPC.Items[i - 1];
             isonlistview:=True;
            end;
          end;
          if (not isonlistview) then
          begin
            aListItem := ListView_EPC.Items.Add;
            aListItem.Caption := IntToStr(aListItem.Index + 1);
            aListItem.SubItems.Add('');
            aListItem.SubItems.Add('');
            aListItem.SubItems.Add('');
            aListItem.SubItems.Add('');
            aListItem.SubItems.Add('');
            aListItem := ListView_EPC.Items[ListView_EPC.Items.Count - 1];
            ChangeSubItem2(aListItem, 1, IntToHex(ord(sEPC[1]), 2));
            if(not CheckBox_TID.Checked)then
            begin
            ComboBox_EPC1.Items.Add(copy(s, 3, Length(s)-2));
            ComboBox_EPC2.Items.Add(copy(s, 3, Length(s)-2));
            ComboBox_EPC3.Items.Add(copy(s, 3, Length(s)-2));
            ComboBox_EPC4.Items.Add(copy(s, 3, Length(s)-2));
            ComboBox_EPC5.Items.Add(copy(s, 3, Length(s)-2));
            ComboBox_EPC6.Items.Add(copy(s, 3, Length(s)-2));
            end;
          end;
          ChangeSubItem1(aListItem, 0, copy(s, 3, Length(s)-2));
          if(not CheckBox_TID.Checked)then
          begin
          ComboBox_EPC1.Itemindex:=0;
          ComboBox_EPC2.Itemindex:=0;
          ComboBox_EPC3.Itemindex:=0;
          ComboBox_EPC4.Itemindex:=0;
          ComboBox_EPC5.Itemindex:=0;
          ComboBox_EPC6.Itemindex:=0;
          end;
        end;
      end;
    end;
    if Timer_Test_.Enabled then
    begin
        if  fCmdRet<>0 then
        AddCmdLog('Inventory', 'Query Tag', fCmdRet);
    end;
  finally
     fIsInventoryScan := False;
  end;
  if fAppClosed then Close;
end;

procedure TfrmUHFReader09demomain.SpeedButton_Read_G2Click(Sender: TObject);
begin
  if SpeedButton_Read_G2.Down  then
  begin
    if Length(Edit_AccessCode2.Text)<8 then
    begin       //
      SpeedButton_Read_G2.Down:=False;
      MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
      Exit;
    end;
    if (Edit_WordPtr.Text='')or (Edit_Len.Text='')then
    begin
      SpeedButton_Read_G2.Down:=False;
      MessageDlg('Start address or length is empty!Please input!', mtInformation, [mbOK], 0);
      Exit;
    end;
  Timer_G2_Read.Enabled:=True;
  end
  else
  begin
  Timer_G2_Read.Enabled:=False;
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Read" over' ;
  end;
end;

procedure TfrmUHFReader09demomain.Timer_G2_ReadTimer(Sender: TObject);
var
    Mem,Num,WordPtr:Byte;
    EPClength:byte;
    i: Integer;
    s2: string;
    CardData: array[0..320] of Char;
begin
  if  fTimer_G2_Read then    exit;
  fTimer_G2_Read:=true;
  try
    if SpeedButton_Read_G2.Down  then
    begin
      if(edit2.Text='')or(edit2.Text='')then
        Exit;
      if CheckBox1.Checked then
        maskFlag:=1
      else
        maskFlag:=0;
      maskadr:=StrToInt('$'+edit2.Text);
      maskLen:=StrToInt('$'+edit3.Text);
      getCharStr(ComboBox_EPC2.text,fOperEPC);
      getCharStr(Edit_AccessCode2.text,fPassword);
      EPClength:=Length(ComboBox_EPC2.text) div 2;
      WordPtr:=StrToInt('$'+Edit_WordPtr.Text);
      Num:=StrToInt(Edit_Len.Text);
      if  C_Reserve.Checked then
        Mem:=0
      else if  C_EPC.Checked then
        Mem:=1
      else if  C_TID.Checked then
        Mem:=2
      else if  C_User.Checked then
        Mem:=3;
      fCmdRet:=ReadCard_G2(fComAdr,@fOperEPC,Mem,WordPtr,Num,@fPassword,maskadr,maskLen,maskFlag,@CardData,EPClength,ferrorcode,frmComPortindex);
      if fCmdRet=0 then
      begin
        for i := 0 to Num*2 - 1 do
        s2 := s2 + IntToHex(ord(CardData[i]), 2);
        Memo_DataShow.Lines.Add(s2);
      end;
      if  fErrorCode<>-1 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +
       ' "Read" Response ErrorCode=0x'+ IntToHex(fErrorCode, 2) +
       '(' + UHFReader09_GetErrorCodeDesc(fErrorCode) + ')';
        ferrorcode:=-1;
      end
      else      
      AddCmdLog('ReadData','Read', fCmdRet);
      if not (SpeedButton_Read_G2.Down)  then
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Read" over' ;
    end;
  finally
  fTimer_G2_Read:=false;
  end;
  if fAppClosed then Close;
end;

procedure TfrmUHFReader09demomain.Action_ShowOrChangeDataExecute(
  Sender: TObject);
var
    Mem,Num,WordPtr:Byte;
    Writedata:array[0..320] of Char;
    Writedatalen:byte;
    EPClength:byte;
    i: Integer;
    s,s2: string;
    CardData: array[0..320] of Char;
    WrittenDataNum:LongInt;
begin
     if(edit2.Text='')or(edit3.Text='')then
        Exit;
      if CheckBox1.Checked then
        maskFlag:=1
      else
        maskFlag:=0;
      maskadr:=StrToInt('$'+edit2.Text);
      maskLen:=StrToInt('$'+edit3.Text);
    if Length(Edit_AccessCode2.Text)<8 then
    begin
      MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
      Exit;
    end;
    if (Edit_WordPtr.Text='')or (Edit_Len.Text='')then
    begin
      MessageDlg('Start address or length is empty!Please input!', mtInformation, [mbOK], 0);
      Exit;
    end;
    getCharStr(ComboBox_EPC2.text,fOperEPC);
    getCharStr(Edit_AccessCode2.text,fPassword);
    EPClength:=Length(ComboBox_EPC2.text) div 2;
    WordPtr:=StrToInt('$'+Edit_WordPtr.Text);
    Num:=StrToInt(Edit_Len.Text);
    if  C_Reserve.Checked then
      Mem:=0
    else if  C_EPC.Checked then
      Mem:=1
    else if  C_TID.Checked then
      Mem:=2
    else if  C_User.Checked then
      Mem:=3;
    if Sender=Action_ShowOrChangeData_write then
    begin
      if ( Edit_WriteData.Text='' )or (Length(Edit_WriteData.Text)mod 4<>0) then
      begin
      MessageDlg('Please input Data in words in hexadecimal form!'+#13+#10+'For example: 1234、12345678', mtInformation, [mbOK], 0);
      Exit;
      end;
      Writedatalen:= Length(Edit_WriteData.text)div 2 ;
      getCharStr(Edit_WriteData.text,Writedata);
     if(CheckBox2.Checked)and(C_EPC.Checked)then
      begin
       WordPtr:=1;
       Writedatalen:= Length(Edit_WriteData.text)div 2 +2;
       getCharStr(edit_pc.Text+Edit_WriteData.text,Writedata);
      end;
      fCmdRet:=WriteCard_G2(fComAdr,@fOperEPC,Mem,WordPtr,Writedatalen,@Writedata,@fPassword,maskadr,maskLen,maskFlag,WrittenDataNum,EPClength,ferrorcode,frmComPortindex);
      AddCmdLog('WriteData','Write', fCmdRet,ferrorcode);
      if fCmdRet=0 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  '"Write"Command Response=0x00' +
                  '(completely write Data successfully)';
      end;
    end;
    if Sender=Action_ShowOrChangeData_BlockErase then
    begin
      if Length(Edit_AccessCode2.Text)<8 then
      begin
        MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
        Exit;
      end;
      if (Edit_WordPtr.Text='')or (Edit_Len.Text='')then
      begin
        SpeedButton_Read_G2.Down:=False;
        MessageDlg('Start address or Length of Block erase is empty!Please input!', mtInformation, [mbOK], 0);
        Exit;
      end;
      if (strtoint(Edit_WordPtr.Text)<1 )and C_EPC.checked then
      begin
        MessageDlg('the length of start Address of erasing EPC area is equal or greater than 0x01!', mtInformation, [mbOK], 0);
        Exit;
      end;
      if (strtoint(Edit_Len.Text)>16 )then
      begin
        MessageDlg('erasing length is equal or lesser than 16 word!Please input again!', mtInformation, [mbOK], 0);
        Exit;
      end;
      fCmdRet:=EraseCard_G2(fComAdr,@fOperEPC,Mem,WordPtr,Num,@fPassword,maskadr,maskLen,maskFlag,EPClength,ferrorcode,frmComPortindex);
      AddCmdLog('EraseCard', 'Erase data', fCmdRet,ferrorcode);
      if fCmdRet=0 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Block Erase"Command Response=0x00' +
                '(Block Erase successfully)';
      end;
    end;
end;

procedure TfrmUHFReader09demomain.Button16Click(Sender: TObject);
begin
 Memo_DataShow.Clear;
end;

procedure TfrmUHFReader09demomain.Action_SetProtectStateExecute(Sender: TObject);
var
  select:byte;
  setprotect:Byte;
  return:Integer;
  EPClength:Byte;
begin
  if(edit2.Text='')or(edit3.Text='')then
        Exit;
      if CheckBox1.Checked then
        maskFlag:=1
      else
        maskFlag:=0;
      maskadr:=StrToInt('$'+edit2.Text);
      maskLen:=StrToInt('$'+edit3.Text);
    getCharStr(ComboBox_EPC1.text,fOperEPC);
    EPClength:=Length(ComboBox_EPC1.text) div 2;
    getCharStr(Edit_AccessCode1.text,fPassword);
    if P_Reserve.Checked and DestroyCode.Checked  then
     select:=$00
    else if P_Reserve.Checked and AccessCode.Checked then
     select:=$01
    else if P_EPC.Checked then
     select:=$02
    else if P_TID.Checked then
     select:=$03
    else if P_User.Checked then
     select:=$04;
    if P_Reserve.Checked then
    begin
      if NoProect.Checked then
       setprotect:=$00
      else if Proect.Checked then
       setprotect:=$02
      else if Always.Checked then
      begin
       setprotect:=$01;
       return:=MessageDlg('Set permanently readable and writeable Confirmed?', mtInformation, [mbOK, mbCancel], 0);
       if return = IDCancel then
       Exit;
      end
      else if AlwaysNot.Checked then
      begin
       setprotect:=$03;
       return:=MessageDlg('Set never readable and writeable Confirmed?', mtInformation, [mbOK, mbCancel], 0);
       if return = IDCancel then
       Exit;
      end;
    end
    else
    begin
      if NoProect2.Checked then
       setprotect:=$00
      else if Proect2.Checked then
       setprotect:=$02
      else if Always2.Checked then
      begin
       setprotect:=$01;
       return:=MessageDlg('Set permanently writeable Confirmed?', mtInformation, [mbOK, mbCancel], 0);
       if return = IDCancel then
       Exit;
      end
      else if AlwaysNot2.Checked then
      begin
       setprotect:=$03;
       return:=MessageDlg('Set never writeable Confirmed?', mtInformation, [mbOK, mbCancel], 0);
       if return = IDCancel then
       Exit;
      end;
    end;
    if Length(Edit_AccessCode1.Text)<8 then
    begin
      MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
      Exit;
    end;
    fCmdRet:=SetCardProtect_G2(fComAdr,@fOperEPC,select,setprotect,@fPassword,maskadr,maskLen,maskFlag,EPClength,ferrorcode,frmComPortindex);  ;
    AddCmdLog('SetCardProtect', 'SetProtect', fCmdRet,ferrorcode);
end;

procedure TfrmUHFReader09demomain.Action_SetProtectStateUpdate(Sender: TObject);
var
  CanEnabled:Boolean;
  CanEnabled2:Boolean;
begin
    SpeedButton_Query .Enabled:=ComIsOpen and (not (SpeedButton_CheckAlarm_G2.Down) )
                                 and (not (SpeedButton_Read_G2.Down) ) ;
    CanEnabled:=not (SpeedButton_Query.down) and  ComIsOpen and (ListView_EPC.Items.Count<>0)
                and (not (SpeedButton_CheckAlarm_G2.Down))and (not (SpeedButton_Read_G2.Down) );
    CanEnabled2:=not (SpeedButton_Query.down) and  ComIsOpen
                and (not (SpeedButton_CheckAlarm_G2.Down))and (not (SpeedButton_Read_G2.Down) );
    ComboBox_IntervalTime.Enabled:= CanEnabled2;

    AccessCode.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    DestroyCode.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    NoProect.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    Proect.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    Always.Enabled:=CanEnabled and (P_Reserve.Checked) ;
    AlwaysNot.Enabled:=CanEnabled and (P_Reserve.Checked) ;

    NoProect2.Enabled:=not (P_Reserve.Checked)and CanEnabled;
    Proect2.Enabled:=not (P_Reserve.Checked)and CanEnabled;
    Always2.Enabled:=not (P_Reserve.Checked)and CanEnabled;
    AlwaysNot2.Enabled:=not (P_Reserve.Checked)and CanEnabled;

    GroupBox5.Enabled:=CanEnabled;
    Label24.Enabled:=CanEnabled;
    ComboBox_EPC1.Enabled:=CanEnabled;
    GroupBox18.Enabled:=CanEnabled;

    Edit_AccessCode1.Enabled:=CanEnabled;
    GroupBox1.Enabled:=CanEnabled;
    P_Reserve.Enabled:=CanEnabled;
    P_EPC.Enabled:=CanEnabled;
    P_TID.Enabled:=CanEnabled;
    P_User.Enabled:=CanEnabled;
    GroupBox9.Enabled:=CanEnabled;
    Label33.Enabled:=CanEnabled;
    Edit_DestroyCode.Enabled:=CanEnabled;
    ComboBox_EPC3.Enabled:=CanEnabled;

    GroupBox10.Enabled:=not (SpeedButton_Query.down) and  ComIsOpen and (ListView_EPC.Items.Count<>0)
                        and (not (SpeedButton_CheckAlarm_G2.Down));
    SpeedButton_Read_G2.Enabled:=GroupBox10.Enabled ;
    Memo_DataShow.Enabled:=GroupBox10.Enabled ;
    Button16.Enabled:=GroupBox10.Enabled ;
    
    Label9.Enabled:=CanEnabled;
    Label18.Enabled:=CanEnabled;
    Label19.Enabled:=CanEnabled;
    Label20.Enabled:=CanEnabled;
    ComboBox_EPC2.Enabled:=CanEnabled;
    Edit_AccessCode2.Enabled:=CanEnabled;
    Edit_WriteData.Enabled:=CanEnabled;
    Edit_WordPtr.Enabled:=CanEnabled;
    Edit_Len.Enabled:=CanEnabled;

    GroupBox6.Enabled:=CanEnabled;
    C_Reserve.Enabled:=CanEnabled;
    C_EPC.Enabled:=CanEnabled;
    C_TID.Enabled:=CanEnabled;
    C_User.Enabled:=CanEnabled;
    Button_SetProtectState.Enabled:=CanEnabled;


    Button_DataWrite.Enabled:=CanEnabled;
    Button_BlockErase.Enabled:=CanEnabled;
    Button_DestroyCard.Enabled:=CanEnabled;
    Button_writeblock.Enabled:= CanEnabled;



    GroupBox23.Enabled:=CanEnabled2;
    Label38.Enabled:=CanEnabled2;
    Label39.Enabled:=CanEnabled2;
    Edit_AccessCode3.Enabled:=CanEnabled2;
    Button_WriteEPC_G2.Enabled:=CanEnabled2;
    Edit_WriteEPC.Enabled:=CanEnabled2;

    ComboBox_EPC4.Enabled:=CanEnabled;
    Button_SetReadProtect_G2.Enabled:=CanEnabled;

    GroupBox20.Enabled:=CanEnabled2;
    Label32.Enabled:=CanEnabled2;
    Edit_AccessCode4.Enabled:=CanEnabled2;
    Button_SetMultiReadProtect_G2.Enabled:=CanEnabled2;
    Button_RemoveReadProtect_G2.Enabled:=CanEnabled2;
    Button_CheckReadProtected_G2.Enabled:=CanEnabled2;



    Label35 .Enabled:=CanEnabled;
    Button_SetEASAlarm_G2.Enabled:=CanEnabled;
    ComboBox_EPC5.Enabled:=CanEnabled;
    Edit_AccessCode5.Enabled:=CanEnabled;
    GroupBox24 .Enabled:=CanEnabled;
    Alarm_G2 .Enabled:=CanEnabled;
    NoAlarm_G2.Enabled:=CanEnabled;

    GroupBox21.Enabled:=not (SpeedButton_Query.down) and  ComIsOpen
                        and(not (SpeedButton_Read_G2.Down) ) ;



    SpeedButton_CheckAlarm_G2.Enabled:=GroupBox21.Enabled;

    GroupBox22.Enabled:=CanEnabled;
    Label36   .Enabled:=CanEnabled;
    Label37   .Enabled:=CanEnabled;
    Button_LockUserBlock_G2.Enabled:=CanEnabled;
    ComboBox_BlockNum.Enabled:=CanEnabled;
    ComboBox_EPC6 .Enabled:=CanEnabled;
    Edit_AccessCode6.Enabled:=CanEnabled;


end;

procedure TfrmUHFReader09demomain.Action_DestroyCardExecute(Sender: TObject);
var
  return:Integer;
  EPClength:byte;
begin
  if(edit2.Text='')or(edit3.Text='')then
    Exit;
  if CheckBox1.Checked then
    maskFlag:=1
  else
    maskFlag:=0;
  maskadr:=StrToInt('$'+edit2.Text);
  maskLen:=StrToInt('$'+edit3.Text);
  return:=MessageDlg('Kill the Tag  Confirmed?', mtInformation, [mbOK, mbCancel], 0);
  if return = IDok then
  begin
    if Length(Edit_DestroyCode.Text)<8 then
    begin
      MessageDlg('Kill Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
      Exit;
    end;

    EPClength:=Length(ComboBox_EPC3.text) div 2;
    getCharStr(ComboBox_EPC3.text,fOperEPC);
    getCharStr(Edit_DestroyCode.text,fPassword);
    fCmdRet:=DestroyCard_G2(fComAdr,@fOperEPC,@fPassword,maskadr,maskLen,maskFlag,EPClength,ferrorcode,frmComPortindex);
    AddCmdLog('DestroyCard', 'Kill Tag', fCmdRet,ferrorcode);
    if fCmdRet=0 then
    begin
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Kill Tag"Command Response=0x00' +
              '(Kill successfully)'
    end;
  end;
end;

procedure TfrmUHFReader09demomain.Action_WriteEPC_G2Execute(Sender: TObject);
var
  EPClength:byte;
  WriteEPC:array[0..100] of Char;
  WriteEPClen:Byte;
begin
  if Length(Edit_AccessCode3.Text)<8 then
  begin
    MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
    Exit;
  end;
  if (Length(Edit_WriteEPC.Text)mod 4<>0) then
  begin
  MessageDlg('Please input Data in words in hexadecimal form!'+#13+#10+'For example: 1234、12345678', mtInformation, [mbOK], 0);
  Exit;
  end;
  WriteEPClen:= Length(Edit_WriteEPC.text)div 2 ;
  getCharStr(Edit_WriteEPC.text,WriteEPC);
  getCharStr(Edit_AccessCode3.text,fPassword);
  fCmdRet:=WriteEPC_G2(fComAdr,@fPassword,@WriteEPC,WriteEPClen,ferrorcode,frmComPortindex);
  AddCmdLog('WriteEPC_G2', 'Write EPC', fCmdRet,ferrorcode);
  if fCmdRet=0 then
  begin
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Write EPC"Command Response=0x00' +
            '(Write EPC successfully)'
  end;
end;


procedure TfrmUHFReader09demomain.Action_SetReadProtect_G2Execute(
  Sender: TObject);
var
  EPClength:byte;
begin
  if(edit2.Text='')or(edit3.Text='')then
    Exit;
  if CheckBox1.Checked then
    maskFlag:=1
  else
    maskFlag:=0;
  maskadr:=StrToInt('$'+edit2.Text);
  maskLen:=StrToInt('$'+edit3.Text);
  if Length(Edit_AccessCode4.Text)<8 then
  begin
    MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
    Exit;
  end;
  EPClength:=Length(ComboBox_EPC4.text)div 2;
  getCharStr(ComboBox_EPC4.text,fOperEPC);
  getCharStr(Edit_AccessCode4.text,fPassword);
  fCmdRet:=SetReadProtect_G2(fComAdr,@fOperEPC,@fPassword,maskadr,maskLen,maskFlag,EPClength,ferrorcode,frmComPortindex);
  AddCmdLog('SetReadProtect_G2', 'Set Single Tag Read Protection', fCmdRet,ferrorcode);
  if fCmdRet=0 then
  begin
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Set Single Tag Read Protection"Command Response=0x00' +
            'Set Single Tag Read Protection successfully'
  end;
end;

procedure TfrmUHFReader09demomain.Action_SetMultiReadProtect_G2Execute(
  Sender: TObject);
begin
  if Length(Edit_AccessCode4.Text)<8 then
  begin
    MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
    Exit;
  end;
  getCharStr(Edit_AccessCode4.text,fPassword);
  fCmdRet:=SetMultiReadProtect_G2(fComAdr,@fPassword,ferrorcode,frmComPortindex);
  AddCmdLog('SetMultiReadProtect_G2', 'Set Single Tag Read Protection without EPC', fCmdRet,ferrorcode);
  if fCmdRet=0 then
  begin
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Set Single Tag Read Protection without EPC"Command Response=0x00' +
            '(Set Single Tag Read Protection without EPC successfully)'
  end;
end;

procedure TfrmUHFReader09demomain.Action_RemoveReadProtect_G2Execute(
  Sender: TObject);
begin
  if Length(Edit_AccessCode4.Text)<8 then
  begin
    MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
    Exit;
  end;
  getCharStr(Edit_AccessCode4.text,fPassword);
  fCmdRet:=RemoveReadProtect_G2(fComAdr,@fPassword,ferrorcode,frmComPortindex);
  AddCmdLog('RemoveReadProtect_G2', 'Reset Single Tag Read Protection', fCmdRet,ferrorcode );
  if fCmdRet=0 then
  begin
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Reset Single Tag Read Protection"Command Response=0x00' +
            '(Reset Single Tag Read Protection successfully)'
  end;
end;

procedure TfrmUHFReader09demomain.Action_CheckReadProtected_G2Execute(
  Sender: TObject);
var readpro:byte;
begin
  fCmdRet:=CheckReadProtected_G2(fComAdr,readpro,ferrorcode,frmComPortindex);
  AddCmdLog('CheckReadProtected_G2', 'Detect Single Tag Read Protection', fCmdRet);
  if fCmdRet=0 then
  begin
   if readpro=0 then
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Detect Single Tag Read Protection"Command Response=0x00' +
            '(Single Tag is unprotected)';
   if readpro=1 then
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Detect Single Tag Read Protection"Command Response=0x01' +
            '(Single Tag is protected)';
  end ;
end;

procedure TfrmUHFReader09demomain.Action_SetEASAlarm_G2Execute(Sender: TObject);
var
  EPClength:byte;
  EAS:Byte;
begin
  if(edit2.Text='')or(edit3.Text='')then
    Exit;
  if CheckBox1.Checked then
    maskFlag:=1
  else
    maskFlag:=0;
  maskadr:=StrToInt('$'+edit2.Text);
  maskLen:=StrToInt('$'+edit3.Text);
  if Length(Edit_AccessCode5.Text)<8 then
  begin
    MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
    Exit;
  end;
  EPClength:=Length(ComboBox_EPC5.text) div 2;
  getCharStr(ComboBox_EPC5.text,fOperEPC);
  getCharStr(Edit_AccessCode5.text,fPassword);
  if Alarm_G2.checked then EAS:= $01
  else EAS:=$00;
  fCmdRet:=SetEASAlarm_G2(fComAdr,@fOperEPC,@fPassword,maskadr,maskLen,maskFlag,EAS,EPClength,ferrorcode,frmComPortindex);
  AddCmdLog('SetEASAlarm_G2', 'Alarm Setting', fCmdRet,ferrorcode);     //v2.1 change
  if fCmdRet=0 then
  begin
  if Alarm_G2.checked then                                 //v2.1 add
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Alarm Setting"Command Response=0x00' +
            '(Set EAS Alarm successfully)'
  else
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Alarm Setting"Command Response=0x00' +
            '(Clear EAS Alarm successfully)'
  end;
end;

procedure TfrmUHFReader09demomain.Action_CheckEASAlarm_G2Execute(Sender: TObject);

begin
  if SpeedButton_CheckAlarm_G2.Down  then
  begin
  Timer_G2_Alarm.Enabled:=True;
  end
  else
  begin
  Timer_G2_Alarm.Enabled:=False;
  Label_Alarm.Visible:=False;                       //v2.1 add
  StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Check EAS Alarm"over' ;
  end;
end;

procedure TfrmUHFReader09demomain.Timer_G2_AlarmTimer(Sender: TObject);
var
  EPClength:byte;
begin
  if  fTimer_G2_Alarm then    exit;
  fTimer_G2_Alarm:=true;
  try
  if SpeedButton_CheckAlarm_G2.Down  then
  begin
    fCmdRet:=CheckEASAlarm_G2(fComAdr,ferrorcode,frmComPortindex);
    if fCmdRet=0 then
    begin
     StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Check EAS Alarm"Command Response=0x00' +
              '(EAS alarm detected)';
     Label_Alarm.Visible:=True;                       //v2.1 add
    end
    else
    begin
      Label_Alarm.Visible:=False;                       //v2.1 add
      AddCmdLog('CheckEASAlarm_G2', 'Check EAS Alarm', fCmdRet);
    end;
    if not(SpeedButton_CheckAlarm_G2.Down)then
    begin
    Label_Alarm.Visible:=False;                       //v2.1 add
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Check EAS Alarm"over' ;
    end;
  end;
  finally
  fTimer_G2_Alarm:=false;
  end;
  if fAppClosed then Close;
end;

procedure TfrmUHFReader09demomain.Action_LockUserBlock_G2Execute(Sender: TObject);
var
  EPClength:byte;
  BlockNum:Byte;
begin
  if(edit2.Text='')or(edit3.Text='')then
        Exit;
      if CheckBox1.Checked then
        maskFlag:=1
      else
        maskFlag:=0;
      maskadr:=StrToInt('$'+edit2.Text);
      maskLen:=StrToInt('$'+edit3.Text);
      if Length(Edit_AccessCode6.Text)<8 then
      begin
        MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
        Exit;
      end;
      EPClength:=Length(ComboBox_EPC6.text) div 2;
      getCharStr(ComboBox_EPC6.text,fOperEPC);
      getCharStr(Edit_AccessCode6.text,fPassword);
      BlockNum:=ComboBox_BlockNum.itemindex*2 ;
      fCmdRet:=LockUserBlock_G2(fComAdr,@fOperEPC,@fPassword,maskadr,maskLen,maskFlag,BlockNum,EPClength,ferrorcode,frmComPortindex);
      AddCmdLog('LockUserBlock_G2', 'Lock User Block', fCmdRet,ferrorcode);
      if fCmdRet=0 then
      begin
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Lock User Block"Command Response=0x00' +
                '(Lock successfully)'
      end
end;
//18000-6B 协议函数

procedure TfrmUHFReader09demomain.Action_Query_6BExecute(Sender: TObject);
var
   i:   Integer;
begin
    if not (SpeedButton_Query_6B.down) then
    begin
      AddCmdLog('Inventory', 'Exit query', 0);
      Timer_Test_6B.Enabled:=False;
    end
    else
    begin
      if Bycondition_6B.Checked then
      begin
        if (Edit_Query_StartAddress_6B.Text='') or (Edit_ConditionContent_6B.Text='') then
        begin
        MessageDlg('Start address or condition is empty!Please input!', mtInformation, [mbOK], 0);
        SpeedButton_Query_6B.down:=False;
          Exit;
        end;
      end;
      Timer_Test_6B.Enabled:=True;
      ListView_ID_6B.Clear;
      ComboBox_ID1_6B.Clear;
    end;
end;

procedure TfrmUHFReader09demomain.Timer_G2_Timer(Sender: TObject);
begin
    if fisinventoryscan_6B then    Exit;
    Action_inventory_6BExecute(sender);
end;

procedure TfrmUHFReader09demomain.Action_Inventory_6BExecute(Sender: TObject);
  procedure ChangeSubItem1(aListItem: TListItem; subItemIndex: Integer; ItemText: string);
  begin
    if aListItem.SubItems[subItemIndex] = ItemText then
    begin
      if (aListItem.SubItems[1]='99999') or (aListItem.SubItems[1]='')then              //aListItem.SubItems[2]为次数
       aListItem.SubItems[1]:='0'                        //aListItem.SubItems[0]为 EPC号
      else
      begin
       aListItem.SubItems[1]:= IntToStr(StrToInt(aListItem.SubItems[1])+1);
       exit; //内容相同则不需要修改，可以不闪烁
      end;
    end;
    aListItem.SubItems[1]:='1';
    aListItem.SubItems[subItemIndex] := ItemText;

  end;
  procedure ChangeSubItem2(aListItem: TListItem; subItemIndex: Integer; ItemText: string);
  begin
    if aListItem.SubItems[subItemIndex] = ItemText then         //aListItem.SubItems[1]为 EPC长度
    exit; //内容相同则不需要修改，可以不闪烁
    aListItem.SubItems[subItemIndex] := ItemText;
  end;
var
  CardNum:LongInt;
  EPClen,m,Totallen:Integer;
  ID_6B: array[0..2000] of Char;
  ID2_6B: array[0..5000] of Char;
  isonstring:Boolean;
  isonlistview:Boolean;
  CardIndex: Integer;
  temps: string;
  s,ss, sID: string;
  aListItem: TListItem;
  temps2, temps3: string;
  i, j: integer;
  Condition:Byte;
  StartAddress,mask:Byte;
  ConditionContent:array[0..300] of Char;
  Contentlen:Byte;
begin
  fIsInventoryScan_6B := true;
  try
    if Byone_6B.Checked then
    begin
    fCmdRet :=inventory_6B(fComAdr,@ID_6B,frmcomportindex);
      if  fCmdRet = $00  then //代表已查找结束，并且内容有发生变化
      begin
        temps :=getStr(ID_6B,8);
        begin
            s := getHexStr(temps);
            isonlistview:=False;
            for i:=1 to ListView_ID_6B.Items.Count do      //判断是否在Listview列表内
            begin
              if s=(ListView_ID_6B.Items[i - 1]).SubItems[0] then
              begin
               aListItem := ListView_ID_6B.Items[i - 1];
               isonlistview:=True;
              end;
            end;
            if (not isonlistview) then
            begin
              aListItem := ListView_ID_6B.Items.Add;
              aListItem.Caption := IntToStr(aListItem.Index + 1);
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem := ListView_ID_6B.Items[ListView_ID_6B.Items.Count - 1];
              ComboBox_ID1_6B.Items.Add(s);
            end;
              ChangeSubItem1(aListItem, 0, S);
              ComboBox_ID1_6B.Itemindex:=0;
        end;
      end;
    end
    else if Bycondition_6B.Checked then
    begin
      if  Same_6B.Checked then
      Condition:=$00
      else if Different_6B.Checked then
      Condition:=$01
      else if Greater_6B.Checked  then
      Condition:=$02
      else if Less_6B.Checked then
      Condition:=$03;
      ss:=Edit_ConditionContent_6B.text;
      Contentlen:=Length(Edit_ConditionContent_6B.text) ;
      for i:=1 to 16-Contentlen do
      ss:=ss+'0';
      getCharStr(ss,ConditionContent);
      case (Contentlen div 2) of
        1: mask:=$80;
        2: mask:=$C0;
        3: mask:=$E0;
        4: mask:=$F0;
        5: mask:=$F8;
        6: mask:=$FC;
        7: mask:=$FE;
        8: mask:=$FF;
      end;
      StartAddress:= StrToInt(Edit_Query_StartAddress_6B.Text);
      fCmdRet :=inventory2_6B(fComAdr,Condition,StartAddress,mask,@ConditionContent,@ID2_6B,Cardnum,frmcomportindex);
      if  (fCmdRet = $15)or (fCmdRet = $16)or (fCmdRet = $17)or (fCmdRet = $18)or(fCmdRet = $FB)    then
      begin
        temps :=getStr(ID2_6B,Cardnum*8);
        begin
          fInventory_EPC_List := tempS;            //存贮记录
            m:=1;
          for CardIndex := 1 to CardNum do
          begin
              sID := copy(tempS,m,8) ;
              m:=m+8;
              if Length(sID) <> 8 then Continue;
              s := getHexStr(sID);
            isonlistview:=False;
            for i:=1 to ListView_ID_6B.Items.Count do      //判断是否在Listview列表内
            begin
              if copy(s, 1, Length(s))=(ListView_ID_6B.Items[i - 1]).SubItems[0] then
              begin
               aListItem := ListView_ID_6B.Items[i - 1];
               isonlistview:=True;
              end;
            end;
            if (not isonlistview) then
            begin
              aListItem := ListView_ID_6B.Items.Add;
              aListItem.Caption := IntToStr(aListItem.Index + 1);
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem.SubItems.Add('');
              aListItem := ListView_ID_6B.Items[ListView_ID_6B.Items.Count - 1];
              ComboBox_ID1_6B.Items.Add(copy(s, 1, Length(s)));
            end;
            ChangeSubItem1(aListItem, 0, copy(s, 1, Length(s)));
            ComboBox_ID1_6B.Itemindex:=0;
          end;
        end;
      end;
    end;
    if Timer_Test_6B.Enabled then
    begin
      if Bycondition_6B.Checked then
      begin
        if  fCmdRet<>0 then
        AddCmdLog('Inventory', 'Query tag', fCmdRet);
      end
      else if fCmdRet = $FB then //说明还未将所有卡读取完
      begin

          StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) + ' "Query Tag"Command Response=0xFB' +
               '(No Tag Operable)'
      end
      else if fCmdRet = $00 then
          StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Query Tag"Command Response=0x00' +
               '(Find a Tag)'
      else
         AddCmdLog('Inventory', 'Query Tag', fCmdRet);
      if fCmdRet=RecmdErr then
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Query Tag"Command Response=0xee' +
                    '(Response Command Error)' ;
    end;
  finally
     fIsInventoryScan_6B := False;
  end;
  if fAppClosed then Close;
end;


procedure TfrmUHFReader09demomain.ComboBox_IntervalTime_6BChange(
  Sender: TObject);
begin
  if   ComboBox_IntervalTime_6B.ItemIndex<6  then
  Timer_Test_6B.Interval :=100
  else
  Timer_Test_6B.Interval :=(ComboBox_IntervalTime_6B.ItemIndex+4)*10;
end;

procedure TfrmUHFReader09demomain.SpeedButton_ReadWrite_6BClick(Sender: TObject);
begin
    if SpeedButton_Write_6B.Down  then
    begin
    if ( Edit_WriteData_6B.Text='' )or (Length(Edit_WriteData_6B.Text)mod 2<>0) then
    begin
    MessageDlg('Please input in bytes in hexadecimal form!'+#13+#10+'for example: 12、1234', mtInformation, [mbOK], 0);
    SpeedButton_Write_6B.Down:=False;
    Exit;
    end;
    end;
    if SpeedButton_Read_6B.Down or SpeedButton_Write_6B.Down  then
    begin
    if ( Edit_StartAddress_6B.Text='' )or (Edit_Len_6B.Text='') then
    begin
    MessageDlg('Start address or length is empty!Please input!', mtInformation, [mbOK], 0);
    SpeedButton_Read_6B.Down:=False;
    SpeedButton_Write_6B.Down:=False;
    Exit;
    end;
    Timer_6B_ReadWrite.Enabled:=True;
    end
    else
    begin
    if Sender= SpeedButton_Read_6B  then
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Read"over' ;
    if Sender= SpeedButton_Write_6B  then
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Write"over' ;
    Timer_6B_ReadWrite.Enabled:=False;
    end;

end;

procedure TfrmUHFReader09demomain.Timer_6B_ReadWriteTimer(Sender: TObject);
var
    i: Integer;
    s2: string;
    CardData: array[0..320] of Char;
    Mem,Num,StartAddress:Byte;
    Writedata:array[0..320] of Char;
    Writedatalen:byte;
    writtenbyte:longint;
begin
  if  fTimer_6B_ReadWrite then    exit;
  fTimer_6B_ReadWrite:=true;
  try

    if SpeedButton_Read_6B.Down  then
    begin
      getCharStr(ComboBox_ID1_6B.text,fOperID_6B);
      StartAddress:=StrToInt('$'+Edit_StartAddress_6B.Text);
      Num:=StrToInt(Edit_Len_6B.Text);
      fCmdRet:=ReadCard_6B(fComAdr,@fOperID_6B,StartAddress,Num,CardData,ferrorcode,frmComPortindex);
      if fCmdRet=0 then
      begin
        for i := 0 to Num - 1 do
        s2 := s2 + IntToHex(ord(CardData[i]), 2);
        Memo_DataShow_6B.Lines.Add(s2);
      end;
      AddCmdLog('ReadCard', 'Read', fCmdRet);
      if not (SpeedButton_Read_6B.Down)  then
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Read"over' ;
    end;
    
    if SpeedButton_Write_6B.Down  then
    begin
      getCharStr(ComboBox_ID1_6B.text,fOperID_6B);
      StartAddress:=StrToInt('$'+Edit_StartAddress_6B.Text);
      getCharStr(Edit_WriteData_6B.text,Writedata);
      Writedatalen:= Length(Edit_WriteData_6B.text)div 2 ;
      fCmdRet:=WriteCard_6B(fComAdr,@fOperID_6B,StartAddress,Writedata,Writedatalen,writtenbyte,ferrorcode,frmComPortindex);
      AddCmdLog('WriteCard', 'Write', fCmdRet);
      if not (SpeedButton_Write_6B.Down)  then
      StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Write"over' ;
    end;
  finally
  fTimer_6B_ReadWrite:=false;
  end;
  if fAppClosed then Close;
end;

procedure TfrmUHFReader09demomain.Action_LockByte_6BExecute(Sender: TObject);
var
   return,Address:Byte;
begin
   getCharStr(ComboBox_ID1_6B.text,fOperID_6B);
   Address:=StrToInt('$'+Edit_StartAddress_6B.Text);
   return:=MessageDlg('permanently Lock the address Confirmed?', mtInformation, [mbOK, mbCancel], 0);
   if return = IDCancel then
   Exit;
   fCmdRet:=LockByte_6B(fComAdr,@fOperID_6B,Address,ferrorcode,frmComPortindex);
   AddCmdLog('LockByte_6B', 'Lock', fCmdRet);
end;

procedure TfrmUHFReader09demomain.Action_CheckLock_6BExecute(Sender: TObject);
var
Address,ReLockState:Byte;
begin
   getCharStr(ComboBox_ID1_6B.text,fOperID_6B);
   Address:=StrToInt('$'+Edit_StartAddress_6B.Text);
   fCmdRet:=CheckLock_6B(fComAdr,@fOperID_6B,Address,ReLockState,ferrorcode,frmComPortindex);
   AddCmdLog('CheckLock_6B', 'Check Lock', fCmdRet);
   if fCmdRet=0 then
   begin
     if  ReLockState=$00  then
     StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Check Lock"Command Response=0x00' +
               '(The Byte is unlocked)' ;
     if  ReLockState=$01  then
     StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' "Check Lock"Command Response=0x01' +
               '(The Byte is locked)';

   end;
end;

procedure TfrmUHFReader09demomain.Button22Click(Sender: TObject);
begin
 Memo_DataShow_6B.Clear;
end;

procedure TfrmUHFReader09demomain.Action_CheckLock_6BUpdate(Sender: TObject);
var
  CanEnabled_6B:Boolean;
  CanEnabled2_6B:Boolean;
begin
    SpeedButton_Query_6B .Enabled:=ComIsOpen and not (SpeedButton_Read_6B.down)
                                   and not (SpeedButton_Write_6B.down);



    ComboBox_IntervalTime_6B.Enabled:=not (SpeedButton_Query_6B.down) and  ComIsOpen
                   and not (SpeedButton_Read_6B.down)and not (SpeedButton_Write_6B.down);
    CanEnabled_6B:=not (SpeedButton_Query_6B.down) and  ComIsOpen and (ComboBox_ID1_6B.Text<>'')
                   and not (SpeedButton_Read_6B.down)and not (SpeedButton_Write_6B.down);
    CanEnabled2_6B:=not (SpeedButton_Query_6B.down) and  ComIsOpen and (Bycondition_6B.Checked)
                   and not (SpeedButton_Read_6B.down)and not (SpeedButton_Write_6B.down);
    if  Byone_6B.Checked then
    SpeedButton_Query_6B.Caption:='Query by one'
    else
    begin
    SpeedButton_Query_6B.Caption:='Query by Condition';
    end;

    GroupBox14.Enabled:=CanEnabled2_6B;
    Label34.Enabled:=CanEnabled2_6B;
    Label28.Enabled:=CanEnabled2_6B;
    Edit_Query_StartAddress_6B.Enabled:=CanEnabled2_6B;
    Edit_ConditionContent_6B.Enabled:=CanEnabled2_6B;
    Less_6B.Enabled:=CanEnabled2_6B;
    Different_6B.Enabled:=CanEnabled2_6B;
    Same_6B.Enabled:=CanEnabled2_6B;
    Greater_6B.Enabled:=CanEnabled2_6B;
    
    GroupBox13.Enabled:=not (SpeedButton_Query_6B.down) and  ComIsOpen
                        and (ComboBox_ID1_6B.Text<>'');
    Memo_DataShow_6B.Enabled:=GroupBox13.Enabled;
    Button22.Enabled:=GroupBox13.Enabled;
    SpeedButton_Read_6B.Enabled:=GroupBox13.Enabled and not (SpeedButton_Write_6B.down);
    SpeedButton_Write_6B.Enabled:=GroupBox13.Enabled and not (SpeedButton_Read_6B.down);


    Label29.Enabled:=CanEnabled_6B;
    Label30.Enabled:=CanEnabled_6B;
    Label31.Enabled:=CanEnabled_6B;
    ComboBox_ID1_6B.Enabled:=CanEnabled_6B;
    Edit_WriteData_6B.Enabled:=CanEnabled_6B;
    Edit_StartAddress_6B.Enabled:=CanEnabled_6B;
    Edit_Len_6B.Enabled:=CanEnabled_6B;
    Button14.Enabled:=CanEnabled_6B;
    Button15.Enabled:=CanEnabled_6B;

end;

procedure TfrmUHFReader09demomain.RadioButton_band1Click(Sender: TObject);
var
  i:Integer;
begin
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
  CheckBox_SameFre.Checked:=False;
 for i:=0 to 62 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(902.6+i*0.4)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(902.6+i*0.4)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex := 0;
  ComboBox_dmaxfre.ItemIndex := 62;
end;

procedure TfrmUHFReader09demomain.RadioButton_band2Click(Sender: TObject);
var
  i:Integer;
begin
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
  CheckBox_SameFre.Checked:=False;
 for i:=0 to 19 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(920.125+i*0.25)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(920.125+i*0.25)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex := 0;
  ComboBox_dmaxfre.ItemIndex := 19;
end;

procedure TfrmUHFReader09demomain.RadioButton_band3Click(Sender: TObject);
var
  i:Integer;
begin
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
  CheckBox_SameFre.Checked:=False;
 for i:=0 to 49 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(902.75+i*0.5)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(902.75+i*0.5)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex := 0;
  ComboBox_dmaxfre.ItemIndex := 49;
end;

procedure TfrmUHFReader09demomain.RadioButton_band4Click(Sender: TObject);
var
  i:Integer;
begin
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
  CheckBox_SameFre.Checked:=False;
 for i:=0 to 31 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(917.1+i*0.2)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(917.1+i*0.2)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex:=0;
  ComboBox_dmaxfre.ItemIndex:=31;
end;

procedure TfrmUHFReader09demomain.RadioButton_band5Click(Sender: TObject);
var
  i:Integer;
begin
  ComboBox_dminfre.Items.Clear;
  ComboBox_dmaxfre.Items.Clear;
  CheckBox_SameFre.Checked:=False;
 for i:=0 to 14 do
  begin
    ComboBox_dminfre.Items.Add(floattostr(865.1+i*0.2)+' MHz');
    ComboBox_dmaxfre.Items.Add( floattostr(865.1+i*0.2)+' MHz');
  end;
  ComboBox_dminfre.ItemIndex:=0;
  ComboBox_dmaxfre.ItemIndex:=14;
end;

procedure TfrmUHFReader09demomain.ComboBox_COMChange(Sender: TObject);
begin
ComboBox_baud2.Items.Clear;
if(ComboBox_COM.ItemIndex=0)then
begin
  ComboBox_baud2.Items.Add('9600bps');
  ComboBox_baud2.Items.Add('19200bps');
  ComboBox_baud2.Items.Add('38400bps');
  ComboBox_baud2.Items.Add('57600bps');
  ComboBox_baud2.Items.Add('115200bps');
  ComboBox_baud2.ItemIndex:=3;
end
else
begin
  ComboBox_baud2.Items.Add('Auto');
  ComboBox_baud2.ItemIndex:=0;
end;
end;

procedure TfrmUHFReader09demomain.Button_writeblockClick(Sender: TObject);
var
    Mem,Num,WordPtr:Byte;
    Writedata:array[0..320] of Char;
    Writedatalen:byte;
    EPClength:byte;
    i: Integer;
    s,s2: string;
    CardData: array[0..320] of Char;
    WrittenDataNum:LongInt;
begin
    if(Edit2.Text='')or(Edit3.Text='')then
    Exit ;
    if CheckBox1.Checked then
    maskFlag:=1
    else
    maskFlag:=0;
    maskadr:= StrToInt('$'+Edit2.Text);
    maskLen:= StrToInt('$'+Edit3.Text);
    if Length(Edit_AccessCode2.Text)<8 then
    begin
      MessageDlg('Access Password Less Than 8 digit!Please input again!', mtInformation, [mbOK], 0);
      Exit;
    end;
    if (Edit_WordPtr.Text='')or (Edit_Len.Text='')then
    begin
      MessageDlg('Start address or length is empty!Please input!', mtInformation, [mbOK], 0);
      Exit;
    end;
    getCharStr(ComboBox_EPC2.text,fOperEPC);
    getCharStr(Edit_AccessCode2.text,fPassword);
    EPClength:=Length(ComboBox_EPC2.text) div 2;
    WordPtr:=StrToInt('$'+Edit_WordPtr.Text);
    Num:=StrToInt(Edit_Len.Text);
    if  C_Reserve.Checked then
      Mem:=0
    else if  C_EPC.Checked then
      Mem:=1
    else if  C_TID.Checked then
      Mem:=2
    else if  C_User.Checked then
      Mem:=3;
    if ( Edit_WriteData.Text='' )or (Length(Edit_WriteData.Text)mod 4<>0) then
    begin
    MessageDlg('Please input Data in words in hexadecimal form!'+#13+#10+'For example: 1234、12345678', mtInformation, [mbOK], 0);
    Exit;
    end;
    Writedatalen:= Length(Edit_WriteData.text)div 2 ;
    getCharStr(Edit_WriteData.text,Writedata);
    if(CheckBox2.Checked)and(C_EPC.Checked)then
    begin
     WordPtr:=1;
     Writedatalen:= Length(Edit_WriteData.text)div 2 +2;
     getCharStr(edit_pc.Text+Edit_WriteData.text,Writedata);
    end;
    fCmdRet:=WriteBlock_G2(fComAdr,@fOperEPC,Mem,WordPtr,Writedatalen,@Writedata,@fPassword,maskadr,maskLen,maskFlag,WrittenDataNum,EPClength,ferrorcode,frmComPortindex);
    AddCmdLog('WriteBlock','Write Block', fCmdRet,ferrorcode);
    if fCmdRet=0 then
    begin
    StatusBar1.Panels.Items[0].text := FormatDateTime('hh:mm:ss', Now) +  ' “WriteBlock”Command Response=0x00' +
                '(completely write Block successfully)';
    end;

end;

procedure TfrmUHFReader09demomain.CheckBox_TIDClick(Sender: TObject);
begin
  if(CheckBox_TID.Checked)then
  begin
  GroupBox7.Enabled:=True;
  Edit1.Enabled:=True;
  Edit4.Enabled:=True;
  end
  else
  begin
  GroupBox7.Enabled:=False;
  Edit4.Enabled:=False;
  Edit1.Enabled:=False;
  end;
end;

procedure TfrmUHFReader09demomain.Edit_LenKeyPress(Sender: TObject;
  var Key: Char);
  var L:Boolean;
begin
    L:=(key<#8)or(key>#8)and(key<#48)or(key>#57);
    if l then key:=#0;
    if ( (key>#96)and(key<#103))   then  key:=  char(Ord(key)-32) ;
end;

procedure TfrmUHFReader09demomain.CheckBox2Click(Sender: TObject);
var
  m,n:Integer;
begin
  if(CheckBox2.Checked)then
  begin
    if(C_EPC.Checked)then
    begin
    Edit_WordPtr.Text:='02';
    Edit_WordPtr.ReadOnly:=True;
    end;
    n:= Length(Trim(Edit_WriteData.Text));
    if(CheckBox2.Checked)and(n mod 4=0)and(C_EPC.Checked)then
    begin
      m:=n div 4;
      m:=(m and $3F) shl 3;
      Edit_PC.Text:=IntToHex(m,2)+'00';
    end;

  end
  else
  begin
    Edit_WordPtr.ReadOnly:=False;;
  end;
end;

procedure TfrmUHFReader09demomain.Edit_WriteDataChange(Sender: TObject);
var
  m,n:Integer;
begin
    n:= Length(Trim(Edit_WriteData.Text));
    if(CheckBox2.Checked)and(n mod 4=0)and(C_EPC.Checked)then
    begin
      m:=n div 4;
      m:=(m and $3F) shl 3;
      Edit_PC.Text:=IntToHex(m,2)+'00';
    end
end;

procedure TfrmUHFReader09demomain.C_EPCClick(Sender: TObject);
begin
if CheckBox2.Checked then
  begin
    Edit_WordPtr.ReadOnly:=True;
    Edit_WordPtr.Text:='02';
  end
  else
  begin
   Edit_WordPtr.ReadOnly:=False;
  end;
end;

procedure TfrmUHFReader09demomain.C_ReserveClick(Sender: TObject);
begin
Edit_WordPtr.ReadOnly:=False;
end;

procedure TfrmUHFReader09demomain.C_TIDClick(Sender: TObject);
begin
Edit_WordPtr.ReadOnly:=False;
end;

procedure TfrmUHFReader09demomain.C_UserClick(Sender: TObject);
begin
Edit_WordPtr.ReadOnly:=False;
end;

end.



