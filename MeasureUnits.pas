unit MeasureUnits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TMeasureForm = class(TForm)
    DBGridGenders: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeasureForm: TMeasureForm;

implementation

{$R *.dfm}

uses
  DataModule;

end.
