unit Authorisation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls;

type
  TAuthorisationForm = class(TForm)
    EnterButton: TButton;
    PasswordEdit: TEdit;
    AuthExit: TButton;
    DBGrid1: TDBGrid;
    DBEditPasswordOfEmp: TDBEdit;
    Label1: TLabel;
    DBEditIDAppEmp: TDBEdit;
    DBGrid2: TDBGrid;
    CheckBoxRateForSubDef: TCheckBox;
    procedure EnterButtonClick(Sender: TObject);
    procedure AuthExitClick(Sender: TObject);
    procedure PasswordEnterPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuthorisationForm: TAuthorisationForm;

implementation

uses Unit1, DataModule; 

{$R *.dfm}

procedure TAuthorisationForm.EnterButtonClick(Sender: TObject);
begin
if PasswordEdit.Text<>DBEditPasswordOfEmp.text then
  Begin
    ShowMessage('Неверный пароль');
    PasswordEdit.SetFocus;
    Exit;
  End
  else
 Begin
 AuthorisationForm.Close;
 MainForm.AlphaBlend:= false;
 end;
end;

procedure TAuthorisationForm.AuthExitClick(Sender: TObject);
begin
  MainForm.Close;
end;

procedure TAuthorisationForm.PasswordEnterPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then EnterButton.Click;
end;

end.
