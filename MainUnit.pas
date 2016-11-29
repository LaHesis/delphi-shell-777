unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls, Buttons,
  Menus;

type
  TMainForm = class(TForm)
    DBGridSessionsMF: TDBGrid;
    Label1: TLabel;
    DBGridServicesMF: TDBGrid;
    Label2: TLabel;
    DBNavigatorSessionsMF: TDBNavigator;
    DBNavigatorServicesMF: TDBNavigator;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Label6: TLabel;
    DBNavigatorEquipments: TDBNavigator;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    DBGridClients: TDBGrid;
    DBNavigatorClients: TDBNavigator;
    Button1: TButton;
    Button5: TButton;
    Button6: TButton;
    SortStartTime: TButton;
    ButtonSortStartTime: TButton;
    procedure N3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SortStartTimeClick(Sender: TObject);
    procedure ButtonSortStartTimeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  DataModule, EquipmentsUnit, AboutUnit, GendersUnit, EmployeesUnit;
  
{$R *.dfm}

procedure TMainForm.N3Click(Sender: TObject);
begin
  EquipmentsForm.showmodal;
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
  AboutForm.show;
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
  GendersForm.show;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
  EmployeesForm.show;
end;

procedure TMainForm.SortStartTimeClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableSessionsMF.IndexFieldNames:= 'End_time';
end;

procedure TMainForm.ButtonSortStartTimeClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableSessionsMF.IndexFieldNames:= 'Start_time';
end;

end.
