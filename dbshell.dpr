program dbshell;



uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  DataModule in 'DataModule.pas' {DataModuleUnit: TDataModule},
  EmployeesUnit in 'EmployeesUnit.pas' {EmployeesForm},
  AboutUnit in 'AboutUnit.pas' {AboutForm},
  ServiceTypes in 'ServiceTypes.pas' {ServiceTypesForm},
  VisitorsUnit in 'VisitorsUnit.pas' {VisitorsForm},
  CommTypesUnit in 'CommTypesUnit.pas' {CommTypesForm},
  RatesUnit in 'RatesUnit.pas' {RatesForm},
  GendersUnit in 'GendersUnit.pas' {GendersForm},
  MeasureUnits in 'MeasureUnits.pas' {MeasureForm},
  Authorisation in 'Authorisation.pas' {AuthorisationForm},
  EquipmentsUnit in 'EquipmentsUnit.pas' {EquipmentsForm},
  QuickRepSessionsUnit in 'QuickRepSessionsUnit.pas' {QuickRepSessionsForm},
  ChDatesRangeUnit in 'ChDatesRangeUnit.pas' {ChDatesRangeForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Интернет салон «777»';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModuleUnit, DataModuleUnit);
  Application.CreateForm(TEmployeesForm, EmployeesForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TServiceTypesForm, ServiceTypesForm);
  Application.CreateForm(TVisitorsForm, VisitorsForm);
  Application.CreateForm(TCommTypesForm, CommTypesForm);
  Application.CreateForm(TRatesForm, RatesForm);
  Application.CreateForm(TGendersForm, GendersForm);
  Application.CreateForm(TMeasureForm, MeasureForm);
  Application.CreateForm(TAuthorisationForm, AuthorisationForm);
  Application.CreateForm(TEquipmentsForm, EquipmentsForm);
  Application.CreateForm(TQuickRepSessionsForm, QuickRepSessionsForm);
  Application.CreateForm(TChDatesRangeForm, ChDatesRangeForm);
  Application.Run;
end.
