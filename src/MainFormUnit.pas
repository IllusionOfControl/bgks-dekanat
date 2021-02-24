unit MainFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Menus, Grids, DBGrids, DB, ADODB;

type
  TMainForm = class(TForm)
    DataGrid: TDBGrid;
    MainMenu: TMainMenu;
    msProgram: TMenuItem;
    msTables: TMenuItem;
    mbTable1: TMenuItem;
    mbTable2: TMenuItem;
    mbTable3: TMenuItem;
    mbTable4: TMenuItem;
    mbTable5: TMenuItem;
    msQueries: TMenuItem;
    mbQuery1: TMenuItem;
    mbQuery2: TMenuItem;
    mbQuery3: TMenuItem;
    mbQuery4: TMenuItem;
    miExit: TMenuItem;
    DataNav: TDBNavigator;
    mbTable6: TMenuItem;
    mbTable7: TMenuItem;
    mbTable8: TMenuItem;
    msReports: TMenuItem;
    mbReport1: TMenuItem;
    mbQuery5: TMenuItem;
    mbQuery6: TMenuItem;
    mbQuery7: TMenuItem;
    mbQuery8: TMenuItem;
    mbReport2: TMenuItem;
    procedure mbTable1Click(Sender: TObject);
    procedure mbTable4Click(Sender: TObject);
    procedure mbTable2Click(Sender: TObject);
    procedure mbTable3Click(Sender: TObject);
    procedure mbTable5Click(Sender: TObject);
    procedure mbTable6Click(Sender: TObject);
    procedure mbTable7Click(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure mbTable8Click(Sender: TObject);
    procedure mbQuery1Click(Sender: TObject);
    procedure mbQuery2Click(Sender: TObject);
    procedure mbQuery3Click(Sender: TObject);
    procedure mbQuery4Click(Sender: TObject);
    procedure mbQuery5Click(Sender: TObject);
    procedure mbQuery6Click(Sender: TObject);
    procedure mbQuery7Click(Sender: TObject);
    procedure mbQuery8Click(Sender: TObject);
    procedure mbReport1Click(Sender: TObject);
    procedure mbReport2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses DataModuleUnit, ReportForm1Unit, ReportForm2Unit;

{$R *.dfm}

procedure TMainForm.miExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.mbTable1Click(Sender: TObject);
begin
  DataModule1.ADOQuery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from ����������');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable2Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from �������');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable3Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from �������������');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable4Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from ������');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable5Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from ��������');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable6Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from ��������');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable7Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from ������');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable8Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from �����');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery1Click(Sender: TObject);
var sql_expression: String;
    parameter: String;
begin
  parameter:=InputBox('���������',
	     '������� �������� �������:', '');
  if parameter = '' then
    exit;

  sql_expression:= 'SELECT ��������.���_��������, ��������.���, ��������.�������, ��������.��������, ��������.������� '+
    'FROM �������� INNER JOIN (((������� INNER JOIN ������������� ON �������.���_������� = �������������.���_�������) INNER JOIN (������ INNER JOIN �������� ON ������.���_������ = ��������.���_������) ' +
    'ON �������������.���_������������� = ������.���_�������������) INNER JOIN ������ ON ��������.���_�������� = ������.���_��������) ON ��������.���_�������� = ������.���_�������� '+
    'GROUP BY ��������.���_��������, ��������.���, ��������.�������, ��������.��������, ��������.�������, ������.������, �������.������� '+
    'HAVING (((������.������)=0 Or (������.������)=2) AND ((�������.�������)=:department));';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOQuery.Parameters.ParamByName('department').Value:=parameter;
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery2Click(Sender: TObject);
var sql_expression: String;
    parameter: String;
begin
  parameter:=InputBox('��. ���� �� ������ ����������',
	     '������� �������� ����������:', '');
  if parameter = '' then
    exit;

  sql_expression:= 'SELECT ������.�����������, Avg(������.������) AS [Avg-������] '+
    'FROM (((���������� INNER JOIN ������� ON ����������.���_���������� = �������.���_����������) INNER JOIN ������������� ON �������.���_������� = �������������.���_�������) '+
    'INNER JOIN (������ INNER JOIN �������� ON ������.���_������ = ��������.���_������) ON �������������.���_������������� = ������.���_�������������)' +
    'INNER JOIN ������ ON ��������.���_�������� = ������.���_�������� '+
    'GROUP BY ����������.���������, ������.����������� '+
    'HAVING (((����������.���������)=:faculty));';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOQuery.Parameters.ParamByName('faculty').Value:=parameter;
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery3Click(Sender: TObject);
var sql_expression: String;
begin
  sql_expression:= 'SELECT ��������.�������, Avg(������.������) AS �������_������ ' +
    'FROM �������� INNER JOIN ������ ON ��������.���_�������� = ������.���_�������� ' +
    'GROUP BY ��������.�������;';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery4Click(Sender: TObject);
var sql_expression: String;
    parameter: String;
begin
  parameter:=InputBox('�������� �� ����������',
	     '������� �������� �������:', '');
  if parameter = '' then
    exit;

  sql_expression:= 'SELECT ��������.�������, IIf([�����������]![���-��_�����]=0 And [������������]![���-�� 1]=0 And [������������]![���-�� 2]=0,IIf([��������]![�����������]=True,IIf([������������]![���-�� 3]<2,[������������]![���_��������]), ' +
    'IIf([������������]![���-�� 3]=0,[������������]![���_��������]))) AS ���_�������� ' +
    'FROM (������� INNER JOIN ������������� ON �������.���_������� = �������������.���_�������) INNER JOIN (������ INNER JOIN ((������������ INNER JOIN �������� ON ������������.���_�������� = ��������.���_��������) INNER JOIN ����������� ' +
    'ON ��������.���_�������� = �����������.���_��������) ON ������.���_������ = ��������.���_������) ON �������������.���_������������� = ������.���_������������� '+
    'WHERE (((IIf([�����������]![���-��_�����]=0 And [������������]![���-�� 1]=0 And [������������]![���-�� 2]=0,IIf([��������]![�����������]=True,IIf([������������]![���-�� 3]<2,[������������]![���_��������]), ' +
    'IIf([������������]![���-�� 3]=0,[������������]![���_��������])))) Is Not Null) AND ((�������.�������)=:department));';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOQuery.Parameters.ParamByName('department').Value:=parameter;
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery5Click(Sender: TObject);
var sql_expression: String;
    parameter: String;
begin
  parameter:=InputBox('��. ���� �� ������ ����������',
	     '������� �������� ����������:', '');
  if parameter = '' then
    exit;

  sql_expression:='SELECT ��������.�������, IIf([�����������]![���-��_�����]>1 Or ([������������]![���-�� 1]>0 And [�����������]![���-��_�����]>0) Or [������������]![���-�� 1]>1,[��������]![���_��������]) AS ���_�������� ' +
    'FROM ((���������� INNER JOIN ������� ON ����������.���_���������� = �������.���_����������) INNER JOIN ������������� ON �������.���_������� = �������������.���_�������) '+
    'INNER JOIN (������ INNER JOIN ((�������� INNER JOIN ����������� ON ��������.���_�������� = �����������.���_��������) '+
    'INNER JOIN ������������ ON ��������.���_�������� = ������������.���_��������) ON ������.���_������ = ��������.���_������) ON �������������.���_������������� = ������.���_������������� '+
    'WHERE (((IIf([�����������]![���-��_�����]>1 Or ([������������]![���-�� 1]>0 And [�����������]![���-��_�����]>0) Or [������������]![���-�� 1]>1,[��������]![���_��������])) Is Not Null) AND ((����������.���������)=:faculty));';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOQuery.Parameters.ParamByName('faculty').Value:=parameter;
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery6Click(Sender: TObject);
var sql_expression: String;
    parameter: String;
begin
  parameter:=InputBox('��. ���� �� ������ ����������',
	     '������� �������� ����������:', '');
  if parameter = '' then
    exit;

  sql_expression:= 'SELECT ���������������.���������, Count(���������������.���_��������) AS [����������-���������] '+
    'FROM ((���������� INNER JOIN ������� ON ����������.���_���������� = �������.���_����������) INNER JOIN ������������� ON �������.���_������� = �������������.���_�������) '+
    'INNER JOIN (������ INNER JOIN (��������������� INNER JOIN �������� ON ���������������.���_�������� = ��������.���_��������) ON ������.���_������ = ��������.���_������) ON �������������.���_������������� = ������.���_������������� ' +
    'GROUP BY ���������������.���������, ����������.��������� HAVING (((����������.���������)=:faculty));';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOQuery.Parameters.ParamByName('faculty').Value:=parameter;
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery7Click(Sender: TObject);
var sql_expression: String;
begin
  sql_expression:= 'SELECT ��������.�������, Count(IIf([������]![������]=1 Or [������]![������]=2,1)) AS [���-��_����_������] ' +
    'FROM �������� INNER JOIN ������ ON ��������.���_�������� = ������.���_�������� ' +
    'GROUP BY ��������.������� ' +
    'ORDER BY Count(IIf([������]![������]=1 Or [������]![������]=2,1)) DESC;';
    
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery8Click(Sender: TObject);
var sql_expression: String;

begin
  sql_expression:= 'SELECT ������3.�������, ������3.�������_������ FROM ������3 ORDER BY ������3.�������_������ DESC;';
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbReport1Click(Sender: TObject);
begin
   ReportForm1.QuickRep1.Preview;
end;

procedure TMainForm.mbReport2Click(Sender: TObject);
begin
   ReportForm2.QuickRep1.Preview;
end;

end.
