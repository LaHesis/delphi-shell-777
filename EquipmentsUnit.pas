unit EquipmentsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TEquipmentsForm = class(TForm)
    DBNavigatorEquipments: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure N6Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentsForm: TEquipmentsForm;

implementation

uses
  DataModule, Unit1;

{$R *.dfm}


procedure TEquipmentsForm.N6Click(Sender: TObject);   // Вернуться на главную
begin
  MainForm.Show;
  EquipmentsForm.close;
end;

procedure TEquipmentsForm.N3Click(Sender: TObject);
begin
  EquipmentsForm.Show;
end;

end.
