unit RatesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Menus;

type
  TRatesForm = class(TForm)
    DBGrid1: TDBGrid;
    DBGridRComponent: TDBGrid;
    Label1: TLabel;
    DBNavigatorEmployees: TDBNavigator;
    DBNavigator1: TDBNavigator;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RatesForm: TRatesForm;

implementation

{$R *.dfm}

uses

  DataModule, MeasureUnits, ServiceTypes;

procedure TRatesForm.N3Click(Sender: TObject);
begin
  MeasureForm.show;  
end;

procedure TRatesForm.N2Click(Sender: TObject);
begin
  ServiceTypesForm.show;
end;

procedure TRatesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModuleUnit.ADOTableSessionsMF.Refresh;
end;

end.
