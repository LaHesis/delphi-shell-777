unit ServiceTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TServiceTypesForm = class(TForm)
    DBGridGenders: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceTypesForm: TServiceTypesForm;

implementation

{$R *.dfm}

uses
  DataModule;

end.
