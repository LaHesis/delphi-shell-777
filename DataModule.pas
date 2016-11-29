unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB, Messages, Dialogs;

type
  TDataModuleUnit = class(TDataModule)
    ADOTableSessionsMF: TADOTable;
    DataSourceSessionMF: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTableServicesMF: TADOTable;
    DataSourceServicesMF: TDataSource;
    DataSourceClientsMF: TDataSource;
    ADOTableVisitorsMF: TADOTable;
    ADOTableEquipments: TADOTable;
    DataSourceEquipments: TDataSource;
    ADOTableEquTypes: TADOTable;
    DataSourceEquTypes: TDataSource;
    ADOTableGenders: TADOTable;
    DataSourceGenders: TDataSource;
    ADOTableEmployees: TADOTable;
    DataSourceEmployees: TDataSource;
    ADOTableAddresses: TADOTable;
    DataSourceAddresses: TDataSource;
    ADOTableCommunicationMeans: TADOTable;
    DataSourceCommunications: TDataSource;
    ADOTableCommTypes: TADOTable;
    DataSourceCommTypes: TDataSource;
    ADOTableServicesMFID_service: TAutoIncField;
    ADOTableServicesMFService_date: TDateTimeField;
    ADOTableServicesMFid_appointment: TIntegerField;
    ADOTableServicesMFid_visitor: TIntegerField;
    ADOTableServicesMFid_equipment: TIntegerField;
    ADOTableServicesMFid_service_type: TIntegerField;
    ADOTableServicesMFid_rate: TIntegerField;
    ADOTableVisitorsMFID_visitor: TAutoIncField;
    ADOTableVisitorsMFFirst_name: TWideStringField;
    ADOTableVisitorsMFLast_name: TWideStringField;
    ADOTableVisitorsMFMiddle_name: TWideStringField;
    ADOTableVisitorsMFid_gender: TIntegerField;
    ADOTableEquipmentsID_equipment: TAutoIncField;
    ADOTableEquipmentsNumber: TWideStringField;
    ADOTableEquipmentsBrand: TWideStringField;
    ADOTableEquipmentsid_equipment_type: TIntegerField;
    ADOTableEquTypesID_equipment_type: TAutoIncField;
    ADOTableEquTypesEquipment_type_name: TWideStringField;
    ADOTableGendersID_gender: TAutoIncField;
    ADOTableGendersGender_name: TWideStringField;
    ADOTableGendersName_abbreviation: TWideStringField;
    ADOTableEmployeesID_employee: TAutoIncField;
    ADOTableEmployeesLast_name: TWideStringField;
    ADOTableEmployeesFirst_name: TWideStringField;
    ADOTableEmployeesMiddle_name: TWideStringField;
    ADOTableEmployeesid_gender: TIntegerField;
    ADOTableAddressesID_address: TAutoIncField;
    ADOTableAddressesid_employee: TIntegerField;
    ADOTableAddressesAdress: TWideStringField;
    ADOTableAddressesRegistration: TBooleanField;
    ADOTableCommunicationMeansID_communication_means: TAutoIncField;
    ADOTableCommunicationMeansid_communication_means_type: TIntegerField;
    ADOTableCommunicationMeanscommunication_means_name: TWideStringField;
    ADOTableCommunicationMeansid_employee: TIntegerField;
    ADOTableCommTypesID_communication_means_type: TAutoIncField;
    ADOTableCommTypesCommunication_means_name: TWideStringField;
    ADOTableEmployeesGender: TStringField;
    ADOTableAppEmpoyees: TADOTable;
    DataSourceAppEmpoyees: TDataSource;
    ADOTablePosts: TADOTable;
    DataSourcePosts: TDataSource;
    ADOTablePostsID_post: TAutoIncField;
    ADOTablePostsPost_name: TWideStringField;
    ADOTablePostsSalary: TBCDField;
    ADOTableCommunicationMeansCommunication_means_type: TStringField;
    ADOTableSubEmpl: TADOTable;
    ADOTableAppEmpoyeesID_appointment: TAutoIncField;
    ADOTableAppEmpoyeesRecruitment_date: TDateTimeField;
    ADOTableAppEmpoyeesDismissal_date: TDateTimeField;
    ADOTableAppEmpoyeesWage_number: TFloatField;
    ADOTableAppEmpoyeesPassword: TWideStringField;
    ADOTableAppEmpoyeesid_post: TIntegerField;
    ADOTableAppEmpoyeesid_employee: TIntegerField;
    ADOTableAppEmpoyeesPostL: TStringField;
    ADOTableAppEmpoyeesEmployeeL: TStringField;
    ADOTableSubVisitor: TADOTable;
    ADOTableSubVisitorID_visitor: TAutoIncField;
    ADOTableSubVisitorFirst_name: TWideStringField;
    ADOTableSubVisitorLast_name: TWideStringField;
    ADOTableSubVisitorMiddle_name: TWideStringField;
    ADOTableSubVisitorVisitor: TWideStringField;
    ADOTableVisitorsMFGender: TStringField;
    ADOTableSubRates: TADOTable;
    ADOTableSubRatesID_rate: TAutoIncField;
    ADOTableSubRatesAction_start: TDateTimeField;
    ADOTableSubRatesAction_end: TDateTimeField;
    ADOTableSubRatesRate: TWideStringField;
    ADOTableSubEquipment: TADOTable;
    ADOTableSubEquipmentID_equipment: TAutoIncField;
    ADOTableSubEquipmentEquipment_type_name: TWideStringField;
    ADOTableSubEquipmentNumber: TWideStringField;
    ADOTableSubEquipmentBrand: TWideStringField;
    ADOTableSubEquipmentEquipment: TWideStringField;
    ADOTableRates: TADOTable;
    DataSourceRates: TDataSource;
    ADOTableRateComponents: TADOTable;
    DataSourceRateComponentsRF: TDataSource;
    ADOTableRateComponentsID_rate_component: TAutoIncField;
    ADOTableRateComponentsid_rate: TIntegerField;
    ADOTableRateComponentsid_service_type: TIntegerField;
    ADOTableRateComponentsid_measure_unit: TIntegerField;
    ADOTableMeasureUnits: TADOTable;
    DataSourceMeasureUnits: TDataSource;
    ADOTableServiceTypes: TADOTable;
    DataSourceServiceTypes: TDataSource;
    ADOTableServiceTypesID_services_type: TAutoIncField;
    ADOTableServiceTypesService_name: TWideStringField;
    ADOTableServiceTypesComment: TWideStringField;
    ADOTableMeasureUnitsID_unit: TAutoIncField;
    ADOTableMeasureUnitsUnit_name: TWideStringField;
    ADOTableMeasureUnitsUnit_abbreviation: TWideStringField;
    ADOTableAppEmpMastEmp: TADOTable;
    AutoIncField1: TAutoIncField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField1: TFloatField;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DataSourceAppEmpMastEmp: TDataSource;
    ADOQueryForFieldsVisitorsSessions: TADOQuery;
    ADOQueryForFieldsVisitorsSessionsID_session: TAutoIncField;
    ADOQueryForFieldsVisitorsSessionsStart_time: TDateTimeField;
    ADOQueryForFieldsVisitorsSessionsEnd_time: TDateTimeField;
    ADOQueryForFieldsVisitorsSessionsWith_Internet: TBooleanField;
    ADOQueryForFieldsVisitorsSessionsCost: TBCDField;
    ADOQueryForFieldsVisitorsSessionsid_equipment: TIntegerField;
    ADOQueryForFieldsVisitorsSessionsid_appointed_employee: TIntegerField;
    ADOQueryForFieldsVisitorsSessionsid_visitor: TIntegerField;
    ADOQueryForFieldsVisitorsSessionsid_rate: TIntegerField;
    ADOTableSessionsMFID_session: TAutoIncField;
    ADOTableSessionsMFStart_time: TDateTimeField;
    ADOTableSessionsMFid_equipment: TIntegerField;
    ADOTableSessionsMFid_appointed_employee: TIntegerField;
    ADOTableSessionsMFid_visitor: TIntegerField;
    ADOTableSessionsMFid_rate: TIntegerField;
    ADOTableSessionsMFEquipment: TStringField;
    ADOTableSessionsMFVisitorL: TStringField;
    ADOTableSessionsMFRateL: TStringField;
    ADOTableSubAppEmp: TADOTable;
    ADOTableSubAppEmpID_employee: TAutoIncField;
    ADOTableSubAppEmpLast_name: TWideStringField;
    ADOTableSubAppEmpFirst_name: TWideStringField;
    ADOTableSubAppEmpMiddle_name: TWideStringField;
    ADOTableSubAppEmpPost_name: TWideStringField;
    ADOTableSubAppEmpEmployee: TWideStringField;
    ADOTableSessionsMFAppEmlL: TStringField;
    ADOTableSessionsMFDurationInH: TSmallintField;
    ADOTableSessionsMFEndDateTimeCalc: TDateTimeField;
    ADOTableRateComponentsCost: TBCDField;
    ADOTableRateComponentsServiceTypeL: TStringField;
    ADOTableRateComponentsMeasureTypeL: TStringField;
    ADOTableServicesMFVisitorL: TStringField;
    ADOTableServicesMFEquipmentL: TStringField;
    ADOTableServicesMFServiceTypeL: TStringField;
    ADOTableServicesMFRateL: TStringField;
    ADOTableServicesMFAppEmpL: TStringField;
    ADOTableSubInternetCh: TADOTable;
    ADOTableSubInternetChID_internet: TBooleanField;
    ADOTableSubInternetChBooleanVariant: TWideStringField;
    ADOTableSessionsMFWith_Internet: TBooleanField;
    ADOTableSessionsMFInternetL: TStringField;
    ADOTableRateCompMastMF: TADOTable;
    DataSourceRateCompMastMF: TDataSource;
    ADOTableRatesMastMF: TADOTable;
    DataSourceRatesMastMF: TDataSource;
    ADOTableRatesMastMFID_rate: TAutoIncField;
    ADOTableRatesMastMFAction_start: TDateTimeField;
    ADOTableRatesMastMFAction_end: TDateTimeField;
    ADOTableRateCompMastMFID_rate_component: TAutoIncField;
    ADOTableRateCompMastMFCost: TBCDField;
    ADOTableRateCompMastMFid_rate: TIntegerField;
    ADOTableRateCompMastMFid_service_type: TIntegerField;
    ADOTableRateCompMastMFid_measure_unit: TIntegerField;
    ADOTableSessionsMFCost: TBCDField;
    ADOTablePostsWages_number: TFloatField;
    ADOTableServicesMFCost: TBCDField;
    ADOTableRateCompMastMFServ: TADOTable;
    DataSourceRateCompMastMFServ: TDataSource;
    ADOTableRatesMastMFServ: TADOTable;
    DataSourceRatesMastMFServ: TDataSource;
    ADOTableRateCompMastMFServID_rate_component: TAutoIncField;
    ADOTableRateCompMastMFServCost: TBCDField;
    ADOTableRateCompMastMFServid_rate: TIntegerField;
    ADOTableRateCompMastMFServid_service_type: TIntegerField;
    ADOTableRateCompMastMFServid_measure_unit: TIntegerField;
    ADOTableRatesMastMFServID_rate: TAutoIncField;
    ADOTableRatesMastMFServAction_start: TDateTimeField;
    ADOTableRatesMastMFServAction_end: TDateTimeField;
    ADOTableServicesMFAmount: TIntegerField;
    ADOTableEquipmentsEquTypeL: TStringField;
    ADOTableSTwSessionT: TADOTable;
    AutoIncField2: TAutoIncField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    ADOTableRatesID_rate: TAutoIncField;
    ADOTableRatesAction_end: TDateTimeField;
    ADOTableRatesAction_start: TDateTimeField;
    ADOTableSubEmplID_employee: TAutoIncField;
    ADOTableSubEmplEmployee: TWideStringField;
    ADOTableEquipmentsIP_address: TWideStringField;
    procedure ADOTableSessionsMFCalcFields(DataSet: TDataSet);
    procedure ADOTableSessionsMFSubstDefault(DataSet: TDataSet);
    procedure ADOTableServicesMFSubstDefault(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleUnit: TDataModuleUnit;

implementation

uses Unit1, Authorisation;
                                                                  {
Отправлять рассчитанную стоимость сеанса в вычисляемые поля не удавалось
из-за ошибки

                                                                  }
{$R *.dfm}

       // Обработчик вычисляемых полей в ADOTableSessionsMF
procedure TDataModuleUnit.ADOTableSessionsMFCalcFields(DataSet: TDataSet);
begin
ADOTableSessionsMFEndDateTimeCalc.AsDateTime:=
ADOTableSessionsMFStart_time.AsDateTime + ADOTableSessionsMFDurationInH.Value/24.0;
end;
     // Отредактировать поле ADOTableSessionsMFAfterInsert к текущей дате
     // при событии OnNewRecord
procedure TDataModuleUnit.ADOTableSessionsMFSubstDefault(DataSet: TDataSet);
begin
  ADOTableSessionsMF.Edit;
  ADOTableSessionsMFStart_time.AsDateTime:= Now;
  ADOTableSessionsMFid_appointed_employee.AsInteger:= StrToInt(AuthorisationForm.DBEditIDAppEmp.text);
  ADOTableSessionsMF.FieldByName('id_visitor').AsInteger:= 3;
  if AuthorisationForm.CheckBoxRateForSubDef.Checked = true then
  ADOTableSessionsMF.FieldByName('id_rate').AsInteger:= ADOTableRates.fieldbyname('ID_Rate').AsInteger;
end;

procedure TDataModuleUnit.ADOTableServicesMFSubstDefault(DataSet: TDataSet);
begin
  ADOTableServicesMF.Edit;
  ADOTableServicesMFService_date.AsDateTime:= Now;
  ADOTableServicesMFid_appointment.AsInteger:= StrToInt(AuthorisationForm.DBEditIDAppEmp.text);
  ADOTableServicesMF.FieldByName('id_visitor').AsInteger:= 3;
  if AuthorisationForm.CheckBoxRateForSubDef.Checked = true then
  ADOTableServicesMF.FieldByName('id_rate').AsInteger:= ADOTableRates.fieldbyname('ID_Rate').AsInteger;
end;

end.
