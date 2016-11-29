unit ChDatesRangeUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ComObj;

type
  TChDatesRangeForm = class(TForm)
    Label1: TLabel;
    ButtonShapeReportSessions: TButton;
    Label2: TLabel;
    MaskEditStartDate: TMaskEdit;
    Label3: TLabel;
    MaskEditEndDate: TMaskEdit;
    MenuItemTag: TEdit;
    Label4: TLabel;
    procedure ButtonShapeReportSessionsClick(Sender: TObject);
    procedure MaskEditEndDateKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChDatesRangeForm: TChDatesRangeForm;

implementation

uses DataModule, Unit1;

{$R *.dfm}
             // �������� ������ � ����������� �� ���� ���������� ������ ����
             // ������� ������������� ������-���� ������
procedure TChDatesRangeForm.ButtonShapeReportSessionsClick(Sender: TObject);
var
XLApp, Sheet, Colum: OleVariant;
index, i, j: integer;
begin
if MaskEditStartDate.text <> '  .  .    ' then begin
if MaskEditEndDate.text <> '  .  .    ' then begin
  case strtoint(MenuItemTag.Text) of
  1:      // �.�. ������ ����� �� �������
  begin
    XLApp:= CreateOleObject('Excel.Application');
    XLApp.Visible:= true;
    XLApp.Workbooks.Add(-4167);
    XLApp.Workbooks[1].WorkSheets[1].Name:='����� �� ������� �����������';
    Colum:= XLApp.Workbooks[1].WorkSheets['����� �� ������� �����������'].Columns;
    j:= 1;
    for i:= 0 to 14 do
    begin
      if DataModuleUnit.ADOTableSessionsMF.Fields[i].Visible = true then
      begin
        Colum.Columns[j].ColumnWidth:= DataModuleUnit.ADOTableSessionsMF.Fields[i].DisplayWidth;
        inc(j);
      end;
    end;
                         // ��������� ��������������
    Colum:= XLApp.Workbooks[1].WorkSheets['����� �� ������� �����������'].Rows;
    Colum.Rows[3].Font.Bold:= true;
    Colum.Rows[1].Font.Color:= clBlue;
    Colum.Rows[2].Font.Color:= clBlue;
    Colum.Rows[1].Font.Size:= 14;
    Colum.Rows[2].Font.Size:= 14;

    i:= 0;
    j:= 1;                        // ���������� �����
    Sheet:= XLApp.Workbooks[1].WorkSheets['����� �� ������� �����������'];
    Sheet.Cells[1,1]:= '������ ����������� � ' + MaskEditStartDate.Text + ' �� ' + MaskEditEndDate.Text;
    Sheet.Cells[2,1]:= '���� ������������ ������: ' + datetostr(Now);

    while i < 15 do
    begin
      if DataModuleUnit.ADOTableSessionsMF.Fields.Fields[i].Visible = true then
      begin
        Sheet.Cells[3,j]:= DataModuleUnit.ADOTableSessionsMF.Fields[i].DisplayLabel;
        inc(j);
      end;
      inc(i);
    end;
    // ������ ����������� ������ � sheet
    index:= 4;    //  � 3 �.�. 1 � 2 ������ ��� ���������
    DataModuleUnit.ADOTableSessionsMF.First;
    for i:= 0 to DataModuleUnit.ADOTableSessionsMF.RecordCount-1 do
    begin
      if (DataModuleUnit.ADOTableSessionsMF.Fields.Fields[1].AsDateTime <= strtodate(MaskEditEndDate.text)) and (DataModuleUnit.ADOTableSessionsMF.Fields.Fields[1].AsDateTime >= strtodate(MaskEditStartDate.Text)) then
      begin
    //  showmessage(DataModuleUnit.ADOTableSessionsMF.Fields.Fields[1].AsString + ' <= ' + MaskEditEndDate.text + ' and ' + DataModuleUnit.ADOTableSessionsMF.Fields.Fields[1].AsString + ' >= ' + MaskEditStartDate.Text);
        for j:= 1 to 9 do
        Sheet.Cells[index,j].HorizontalAlignment := 2; // ������������ �� ������ ����
        Sheet.Cells[index,1]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[1].AsString;
        Sheet.Cells[index,2]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[2].AsInteger;
        Sheet.Cells[index,3]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[3].AsString;
        Sheet.Cells[index,4]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[8].AsString;
        Sheet.Cells[index,5]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[9].AsString;
        Sheet.Cells[index,6]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[10].AsString;
        Sheet.Cells[index,7]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[11].AsString;
        Sheet.Cells[index,8]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[13].AsCurrency;
        Sheet.Cells[index,9]:= DataModuleUnit.ADOTableSessionsMF.Fields.Fields[14].AsString;
        inc(index);    // ����������� ������ ������ ����� Excel
      end;
      DataModuleUnit.ADOTableSessionsMF.Next;  // ��������� �� ��������� ������ � ADOTableSessionsMF, ���� ���� ����� ������ ������ �� ������ � �������� ������������� ��������
      if DataModuleUnit.ADOTableSessionsMF.Eof then Sheet.Cells[1,5]:= '������������ ������ ���������';
    end;
  end;

  2:   // ������ ����� �� �������
  begin
    XLApp:= CreateOleObject('Excel.Application');
    XLApp.Visible:= true;
    XLApp.Workbooks.Add(-4167);
    XLApp.Workbooks[1].WorkSheets[1].Name:='����� �� �������';
    Colum:= XLApp.Workbooks[1].WorkSheets['����� �� �������'].Columns;
    j:= 1;
    for i:= 0 to DataModuleUnit.ADOTableServicesMF.FieldCount-1 do
    begin
      if DataModuleUnit.ADOTableServicesMF.Fields[i].Visible = true then
      begin
        Colum.Columns[j].ColumnWidth:= DataModuleUnit.ADOTableServicesMF.Fields[i].DisplayWidth + 5;
        inc(j);
      end;
    end;
                         // ��������� ��������������
    Colum:= XLApp.Workbooks[1].WorkSheets['����� �� �������'].Rows;
    Colum.Rows[3].Font.Bold:= true;
    Colum.Rows[1].Font.Color:= clBlue;
    Colum.Rows[2].Font.Color:= clBlue;
    Colum.Rows[1].Font.Size:= 14;
    Colum.Rows[2].Font.Size:= 14;

    i:= 0;
    j:= 1;                  // ���������� �����
    Sheet:= XLApp.Workbooks[1].WorkSheets['����� �� �������'];
    Sheet.Cells[1,1]:= '������ ����������� � ' + MaskEditStartDate.Text + ' �� ' + MaskEditEndDate.Text;
    Sheet.Cells[2,1]:= '���� ������������ ������: ' + datetostr(Now);

    while i < DataModuleUnit.ADOTableServicesMF.FieldCount-1 do
    begin
      if DataModuleUnit.ADOTableServicesMF.Fields.Fields[i].Visible = true then
      begin
        Sheet.Cells[3,j]:= DataModuleUnit.ADOTableServicesMF.Fields[i].DisplayLabel;
        inc(j);
      end;
      inc(i);
    end;

    // ������ ����������� ������ � sheet
    index:= 4;    //  � 3 �.�. 1 � 2 ������ ��� ���������
    DataModuleUnit.ADOTableServicesMF.First;
    for i:= 0 to DataModuleUnit.ADOTableServicesMF.RecordCount-1 do
    begin
      if (DataModuleUnit.ADOTableServicesMF.Fields.Fields[1].AsDateTime <= strtodate(MaskEditEndDate.text)) and (DataModuleUnit.ADOTableServicesMF.Fields.Fields[1].AsDateTime >= strtodate(MaskEditStartDate.Text)) then
      begin
    //  showmessage(DataModuleUnit.ADOTableSessionsMF.Fields.Fields[1].AsString + ' <= ' + MaskEditEndDate.text + ' and ' + DataModuleUnit.ADOTableSessionsMF.Fields.Fields[1].AsString + ' >= ' + MaskEditStartDate.Text);
        for j:= 1 to 9 do
          Sheet.Cells[index,j].HorizontalAlignment := 2; // ������������ �� ������ ����
        Sheet.Cells[index,1]:= DataModuleUnit.ADOTableServicesMF.Fields.Fields[1].AsString;
        Sheet.Cells[index,2]:= DataModuleUnit.ADOTableServicesMF.Fields.Fields[2].AsString;
        Sheet.Cells[index,3]:= DataModuleUnit.ADOTableServicesMF.Fields.Fields[3].AsString;
        Sheet.Cells[index,4]:= DataModuleUnit.ADOTableServicesMF.Fields.Fields[4].AsInteger;
        Sheet.Cells[index,5]:= DataModuleUnit.ADOTableServicesMF.Fields.Fields[5].AsString;
        Sheet.Cells[index,6]:= DataModuleUnit.ADOTableServicesMF.Fields.Fields[6].AsString;
        Sheet.Cells[index,7]:= DataModuleUnit.ADOTableServicesMF.Fields.Fields[7].AsString;
        Sheet.Cells[index,8]:= DataModuleUnit.ADOTableServicesMF.Fields.Fields[13].AsCurrency;
        inc(index);    // ����������� ������ ������ ����� Excel
      end;
      DataModuleUnit.ADOTableServicesMF.Next;  // ��������� �� ��������� ������ � ADOTableSessionsMF, ���� ���� ����� ������ ������ �� ������ � �������� ������������� ��������
      if DataModuleUnit.ADOTableServicesMF.Eof then Sheet.Cells[1,4]:= '������������ ������ ���������';
      end;
  end
  else
  showmessage('��� ������ ����, �� ��������� ���� �����������!');
  end;   // END ��� ��������� ������ CASE
end else showmessage('�� ������� �������� ����!');
end else showmessage('�� ������� ��������� ����!');
end;

procedure TChDatesRangeForm.MaskEditEndDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then ButtonShapeReportSessions.Click;
end;

end.
