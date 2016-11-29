unit CommTypesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TCommTypesForm = class(TForm)
    DBGridCommTypes: TDBGrid;
    DBNavigatorCommTypes: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CommTypesForm: TCommTypesForm;

implementation

uses
  DataModule;

{$R *.dfm}

end.
