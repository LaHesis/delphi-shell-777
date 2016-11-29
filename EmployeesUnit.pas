unit EmployeesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls;

type
  TEmployeesForm = class(TForm)
    DBNavigatorEmployees: TDBNavigator;
    DBGridEmployees: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    DBGridPosts: TDBGrid;
    Label4: TLabel;
    DBNavigator2: TDBNavigator;
    Label5: TLabel;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    SortLastName: TButton;
    SortFirstName: TButton;
    SortMiddleName: TButton;
    SortGender: TButton;
    DBGrid1: TDBGrid;
    DBNavigator4: TDBNavigator;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    ButtonSortAccDate: TButton;
    ButtonSortDismDate: TButton;
    ButtonSortWageN: TButton;
    ButtonSortPost: TButton;
    ButtonSortPostN: TButton;
    ButtonSortSalary: TButton;
    ButtonSortWage: TButton;
    ButtonSortEmp: TButton;
    procedure N6Click(Sender: TObject);
    procedure SortLastNameClick(Sender: TObject);
    procedure SortFirstNameClick(Sender: TObject);
    procedure SortMiddleNameClick(Sender: TObject);
    procedure SortGenderClick(Sender: TObject);
    procedure ButtonSortAccDateClick(Sender: TObject);
    procedure ButtonSortDismDateClick(Sender: TObject);
    procedure ButtonSortWageNClick(Sender: TObject);
    procedure ButtonSortPostClick(Sender: TObject);
    procedure ButtonSortEmpClick(Sender: TObject);
    procedure ButtonSortPostNClick(Sender: TObject);
    procedure ButtonSortSalaryClick(Sender: TObject);
    procedure ButtonSortWageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmployeesForm: TEmployeesForm;

implementation

uses
  DataModule, Unit1;

{$R *.dfm}


procedure TEmployeesForm.N6Click(Sender: TObject);   // Вернуться на главную
begin
  MainForm.Show;
end;

procedure TEmployeesForm.SortLastNameClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableEmployees.IndexFieldNames:= 'Last_name';
end;

procedure TEmployeesForm.SortFirstNameClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableEmployees.IndexFieldNames:= 'First_name';
end;

procedure TEmployeesForm.SortMiddleNameClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableEmployees.IndexFieldNames:= 'Middle_name';
end;

procedure TEmployeesForm.SortGenderClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableEmployees.IndexFieldNames:= 'id_gender';
end;

procedure TEmployeesForm.ButtonSortAccDateClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableAppEmpoyees.IndexFieldNames:= 'Recruitment_date';
end;

procedure TEmployeesForm.ButtonSortDismDateClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableAppEmpoyees.IndexFieldNames:= 'Dismissal_date';
end;

procedure TEmployeesForm.ButtonSortWageNClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableAppEmpoyees.IndexFieldNames:= 'Wage_number';
end;

procedure TEmployeesForm.ButtonSortPostClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableAppEmpoyees.IndexFieldNames:= 'id_post';
end;

procedure TEmployeesForm.ButtonSortEmpClick(Sender: TObject);
begin
  DataModuleUnit.ADOTableAppEmpoyees.IndexFieldNames:= 'id_employee';
end;

procedure TEmployeesForm.ButtonSortPostNClick(Sender: TObject);
begin
  DataModuleUnit.ADOTablePosts.IndexFieldNames:= 'Post_name';
end;

procedure TEmployeesForm.ButtonSortSalaryClick(Sender: TObject);
begin
  DataModuleUnit.ADOTablePosts.IndexFieldNames:= 'Salary';
end;

procedure TEmployeesForm.ButtonSortWageClick(Sender: TObject);
begin
  DataModuleUnit.ADOTablePosts.IndexFieldNames:= 'Wages_number';
end;

end.
