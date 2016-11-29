unit GendersUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TGendersForm = class(TForm)
    DBGridGenders: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GendersForm: TGendersForm;

implementation

{$R *.dfm}

uses
  DataModule;

end.
