unit VisitorsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TVisitorsForm = class(TForm)
    DBNavigatorCommTypes: TDBNavigator;
    DBGridClients: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VisitorsForm: TVisitorsForm;

implementation

uses
  DataModule;

{$R *.dfm}

end.
