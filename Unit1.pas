unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls, Buttons,
  Menus, XPMan, Mask, sSkinProvider, sSkinManager;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    DBGridServicesMF: TDBGrid;
    Label2: TLabel;
    DBNavigatorSessionsMF: TDBNavigator;
    DBNavigatorServicesMF: TDBNavigator;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    SortAccess: TButton;
    ButtonSortStartTime: TButton;
    N1: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    N6: TMenuItem;
    DBGridSessionsMF: TDBGrid;
    N10: TMenuItem;
    ButtonSortVisitor: TButton;
    N11: TMenuItem;
    N12: TMenuItem;
    XPManifest3: TXPManifest;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    ButtonSortRate: TButton;
    ButtonSortAppEmp: TButton;
    ButtonSortH: TButton;
    J1: TMenuItem;
    ButtonSortEquip: TButton;
    ButtonSortCost: TButton;
    Shape1: TShape;
    ButtonCompCostServ: TButton;
    ButtonCompCostSession: TButton;
    Label3: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    N13: TMenuItem;
    N14: TMenuItem;
    ButtonSortDataService: TButton;
    ButtonSortEquipment: TButton;
    ButtonSortVisitorL: TButton;
    ButtonSortAmount: TButton;
    ButtonSortTypeSL: TButton;
    ButtonSortRateL: TButton;
    ButtonSortAppEmpL: TButton;
    ButtonSortSCost: TButton;
    RadioGroupSortType: TRadioGroup;
    N4: TMenuItem;
    N15: TMenuItem;
    sSkinManager1: TsSkinManager;
    procedure N3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SortAccessClick(Sender: TObject);
    procedure ButtonSortStartTimeClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure ButtonSortVisitorClick(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure J1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonSortEquipClick(Sender: TObject);
    procedure ButtonSortRateClick(Sender: TObject);
    procedure ButtonSortAppEmpClick(Sender: TObject);
    procedure ButtonSortHClick(Sender: TObject);
    procedure ButtonSortCostClick(Sender: TObject);
    procedure ButtonSortEndClick(Sender: TObject);
    procedure ButtonCompCostSessionClick(Sender: TObject);
    procedure ButtonCompCostServClick(Sender: TObject);
    procedure SortDataService(Sender: TObject);
    procedure SortEquipment(Sender: TObject);
    procedure SortVisitorL (Sender: TObject);
    procedure SortAmount (Sender: TObject);
    procedure SortServiceTypeL (Sender: TObject);
    procedure SortRateL (Sender: TObject);
    procedure SortAppEmpL (Sender: TObject);
    procedure SortServiceCost (Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ExpExcellRep(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  i: integer;
  fields: array [0..20] of string;
  dataset: string;

implementation

uses
  DataModule, EquipmentsUnit, AboutUnit, GendersUnit, EmployeesUnit,
  CommTypesUnit, VisitorsUnit, RatesUnit, ServiceTypes, MeasureUnits,
  Authorisation, QuickRepSessionsUnit, ChDatesRangeUnit;
  
{$R *.dfm}
// ПРОЦЕДУРЫ ПОКАЗА ДРУГИХ ФОРМ
// Показать форму выбора диапазона дат

procedure TMainForm.N3Click(Sender: TObject);
begin
  EmployeesForm.show;
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
  GendersForm.show;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
  CommTypesForm.show;
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
  AboutForm.show;
  MainForm.AlphaBlend:=true;
  MainForm.AlphaBlendValue:=120;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  VisitorsForm.show;
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
  RatesForm.show;
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
  ServiceTypesForm.show;
end;

procedure TMainForm.N12Click(Sender: TObject);
begin
  MeasureForm.show;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  AuthorisationForm.ShowModal;
end;

procedure TMainForm.J1Click(Sender: TObject);
begin
  EquipmentsForm.Show;
end;

// ПРОЦЕДУРЫ СОРТИРОВКИ
procedure TMainForm.SortAccessClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'With_Internet DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'With_Internet ASC';
end;

procedure TMainForm.ButtonSortStartTimeClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'Start_time DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'Start_time ASC';
end;

procedure TMainForm.ButtonSortVisitorClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'id_visitor DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'id_visitor ASC';
end;

procedure TMainForm.ButtonSortEquipClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'id_equipment DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'id_equipment ASC';
end;

procedure TMainForm.ButtonSortRateClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'id_rate DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'id_rate DESC';
end;

procedure TMainForm.ButtonSortAppEmpClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'id_appointed_employee DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'id_appointed_employee ASC';
end;

procedure TMainForm.ButtonSortHClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'DurationInH DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'DurationInH ASC';
end;

procedure TMainForm.ButtonSortCostClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'Cost DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'Cost ASC';
end;

procedure TMainForm.ButtonSortEndClick(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableSessionsMF.Sort:= 'ADOTableSessionsMFEndDateTimeCalc DESC'
  else DataModuleUnit.ADOTableSessionsMF.Sort:= 'ADOTableSessionsMFEndDateTimeCalc ASC';
end;

procedure TMainForm.SortDataService(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableServicesMF.Sort:= 'Service_date DESC'
  else DataModuleUnit.ADOTableServicesMF.Sort:= 'Service_date ASC';
end;

procedure TMainForm.SortEquipment(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableServicesMF.Sort:= 'id_equipment DESC'
  else DataModuleUnit.ADOTableServicesMF.Sort:= 'id_equipment ASC'
end;

procedure TMainForm.SortVisitorL(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableServicesMF.Sort:= 'id_visitor DESC'
  else DataModuleUnit.ADOTableServicesMF.Sort:= 'id_visitor ASC';
end;

procedure TMainForm.SortAmount(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableServicesMF.Sort:= 'Amount DESC'
  else DataModuleUnit.ADOTableServicesMF.Sort:= 'Amount ASC';
end;

procedure TMainForm.SortServiceTypeL(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableServicesMF.Sort:= 'id_service_type DESC'
  else DataModuleUnit.ADOTableServicesMF.Sort:= 'id_service_type ASC'
end;

procedure TMainForm.SortRateL(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableServicesMF.Sort:= 'id_rate DESC'
  else DataModuleUnit.ADOTableServicesMF.Sort:= 'id_rate ASC';
end;

procedure TMainForm.SortAppEmpL(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableServicesMF.Sort:= 'id_appointment DESC'
  else DataModuleUnit.ADOTableServicesMF.Sort:= 'id_appointment ASC';
end;

procedure TMainForm.SortServiceCost(Sender: TObject);
begin
if RadioGroupSortType.ItemIndex = 0 then
  DataModuleUnit.ADOTableServicesMF.Sort:= 'Cost DESC'
  else DataModuleUnit.ADOTableServicesMF.Sort:= 'Cost ASC';
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  DataModuleUnit.ADOTableRateCompMastMF.Active:= false;
  DataModuleUnit.ADOTableRateCompMastMF.Active:= true;
  MainForm.AlphaBlend:= false;
end;

// Расчет и перерасчет стоимости сеанса
procedure TMainForm.ButtonCompCostSessionClick(Sender: TObject);
var i: integer;
begin
  DataModuleUnit.ADOTableSessionsMF.Refresh; // Без обновления выдает ошибку не удается найти строку для обновления
  DataModuleUnit.ADOTableRateCompMastMF.First;
  // showmessage(inttostr(DataModuleUnit.ADOTableRateCompMastMF.RecordCount));
  if DataModuleUnit.ADOTableRateCompMastMF.RecordCount=0 then
  begin   // Чтобы в подчиненных таблицах появились поля, иначе они пусты после создания новой записи
    DataModuleUnit.ADOTableSessionsMF.Prior; // Выбрать предыдущую запись
    DataModuleUnit.ADOTableSessionsMF.Next;  // Вернуться на следующую запись
  end;
  if DataModuleUnit.ADOTableRateCompMastMF.RecordCount=0 then showmessage('Ошибка при расчете! Проверьте наличие значения в поле «Тариф»');
  for i:= 0 to DataModuleUnit.ADOTableRateCompMastMF.FieldCount-1 do
  begin
    // showmessage('i='+inttostr(i));
    if (DataModuleUnit.ADOTableRateCompMastMFid_service_type.AsInteger = 1) and
    (DataModuleUnit.ADOTableSessionsMF.FieldByName('With_Internet').asboolean = false)
    then
    begin
      // showmessage('success');
      DataModuleUnit.ADOTableSessionsMF.Edit();
      DataModuleUnit.ADOTableSessionsMF.FieldByName('Cost').ascurrency := DataModuleUnit.ADOTableSessionsMFDurationInH.AsFloat*
      DataModuleUnit.ADOTableRateCompMastMFCost.AsFloat;
      DataModuleUnit.ADOTableSessionsMF.Post();
      break;
    end;
  if (DataModuleUnit.ADOTableRateCompMastMFid_service_type.AsInteger = 2) and
  (DataModuleUnit.ADOTableSessionsMF.FieldByName('With_Internet').asboolean = true)
  then
    begin
    DataModuleUnit.ADOTableSessionsMF.Edit();
    DataModuleUnit.ADOTableSessionsMF.FieldByName('Cost').ascurrency := DataModuleUnit.ADOTableSessionsMFDurationInH.AsFloat*
    DataModuleUnit.ADOTableRateCompMastMFCost.AsFloat;
    DataModuleUnit.ADOTableSessionsMF.Post();
    break;
    end;
  DataModuleUnit.ADOTableRateCompMastMF.Next;
  end;
end;

procedure TMainForm.ButtonCompCostServClick(Sender: TObject);
var i: integer;
begin
  DataModuleUnit.ADOTableServicesMF.Refresh;
  DataModuleUnit.ADOTableRateCompMastMFServ.Refresh;
  DataModuleUnit.ADOTableRateCompMastMFServ.First;
// showmessage(inttostr(DataModuleUnit.ADOTableRateCompMastMFServ.RecordCount));
// showmessage(inttostr(DataModuleUnit.ADOTableRateCompMastMFServRecordCount));
  if DataModuleUnit.ADOTableRateCompMastMFServ.RecordCount=0 then
  begin   // Чтобы в подчиненных таблицах появились поля, иначе они пусты после создания новой записи
    DataModuleUnit.ADOTableServicesMF.Prior; // Выбрать предыдущую запись
    DataModuleUnit.ADOTableServicesMF.Next;  // Вернуться на следующую запись
  end;
  if DataModuleUnit.ADOTableRateCompMastMFServ.RecordCount=0 then showmessage('Ошибка при расчете! Проверьте наличие значения в поле «Тариф»');
  for i:= 0 to DataModuleUnit.ADOTableRateCompMastMFServ.RecordCount-1 do
  begin
    if DataModuleUnit.ADOTableServicesMF.FieldByName('id_service_type').AsInteger =
    DataModuleUnit.ADOTableRateCompMastMFServ.FieldByName('id_service_type').AsInteger
    then
    begin
      DataModuleUnit.ADOTableServicesMF.Edit();
      DataModuleUnit.ADOTableServicesMF.FieldByName('Cost').AsCurrency :=
      DataModuleUnit.ADOTableServicesMF.FieldByName('Amount').AsInteger*
      DataModuleUnit.ADOTableRateCompMastMFServCost.AsFloat;
      DataModuleUnit.ADOTableServicesMF.Post();
      break;
    end
    else
    begin
      // showmessage('else'+inttostr(i)+'recc='+inttostr(DataModuleUnit.ADOTableRateCompMastMFServ.RecordCount));
      DataModuleUnit.ADOTableRateCompMastMFServ.Next;
      if i = DataModuleUnit.ADOTableRateCompMastMFServ.RecordCount-1 then showmessage('Ошибка при попытке расчета стоимости услуги! Проверьте наличие данного вида услуг для выбранного тарифа в "Данные/справчники -> Тарифы".');
    end;
  end;
end;

// ОТЧЕТНОСТЬ
// Отчет посредством компонента quickreport
procedure TMainForm.N4Click(Sender: TObject);
begin
  QuickRepSessionsForm.QuickRepSessions.PreviewModal;
end;
// Показ формы ввода диапазона дат и передача тега выбранного пункта меню
procedure TMainForm.ExpExcellRep(Sender: TObject);
begin
  ChDatesRangeForm.MenuItemTag.Text:= inttostr(TMenuItem(Sender).Tag);
  ChDatesRangeForm.ButtonShapeReportSessions.Caption:= TMenuItem(Sender).Caption;
  ChDatesRangeForm.show;
end;

end.
