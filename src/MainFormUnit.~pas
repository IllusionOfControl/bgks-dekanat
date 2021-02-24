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
  DataModule1.ADOquery.SQL.Add('select * from Факультеты');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable2Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from Кафедры');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable3Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from Специальности');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable4Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from Группы');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable5Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from Студенты');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable6Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from Предметы');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable7Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from Сессия');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbTable8Click(Sender: TObject);
begin
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add('select * from Зачёт');
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery1Click(Sender: TObject);
var sql_expression: String;
    parameter: String;
begin
  parameter:=InputBox('Отстающие',
	     'Введите название кафедры:', '');
  if parameter = '' then
    exit;

  sql_expression:= 'SELECT Студенты.код_студента, Студенты.имя, Студенты.фамилия, Студенты.отчество, Предметы.предмет '+
    'FROM Предметы INNER JOIN (((Кафедры INNER JOIN Специальности ON Кафедры.код_кафедры = Специальности.код_кафедры) INNER JOIN (Группы INNER JOIN Студенты ON Группы.код_группы = Студенты.код_группы) ' +
    'ON Специальности.код_специальности = Группы.код_специальности) INNER JOIN Сессия ON Студенты.код_студента = Сессия.код_студента) ON Предметы.код_предмета = Сессия.код_предмета '+
    'GROUP BY Студенты.код_студента, Студенты.имя, Студенты.фамилия, Студенты.отчество, Предметы.предмет, Сессия.оценка, Кафедры.кафедра '+
    'HAVING (((Сессия.оценка)=0 Or (Сессия.оценка)=2) AND ((Кафедры.кафедра)=:department));';

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
  parameter:=InputBox('Ср. балл по группе факультета',
	     'Введите название факультета:', '');
  if parameter = '' then
    exit;

  sql_expression:= 'SELECT Группы.обозначение, Avg(Сессия.оценка) AS [Avg-оценка] '+
    'FROM (((Факультеты INNER JOIN Кафедры ON Факультеты.код_факультета = Кафедры.код_факультета) INNER JOIN Специальности ON Кафедры.код_кафедры = Специальности.код_кафедры) '+
    'INNER JOIN (Группы INNER JOIN Студенты ON Группы.код_группы = Студенты.код_группы) ON Специальности.код_специальности = Группы.код_специальности)' +
    'INNER JOIN Сессия ON Студенты.код_студента = Сессия.код_студента '+
    'GROUP BY Факультеты.факультет, Группы.обозначение '+
    'HAVING (((Факультеты.факультет)=:faculty));';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOQuery.Parameters.ParamByName('faculty').Value:=parameter;
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery3Click(Sender: TObject);
var sql_expression: String;
begin
  sql_expression:= 'SELECT Предметы.предмет, Avg(Сессия.оценка) AS Средняя_оценка ' +
    'FROM Предметы INNER JOIN Сессия ON Предметы.код_предмета = Сессия.код_предмета ' +
    'GROUP BY Предметы.предмет;';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery4Click(Sender: TObject);
var sql_expression: String;
    parameter: String;
begin
  parameter:=InputBox('Студенты со стипендией',
	     'Введите название кафедры:', '');
  if parameter = '' then
    exit;

  sql_expression:= 'SELECT Студенты.фамилия, IIf([ЗапросЗачёт]![Кол-во_незач]=0 And [ЗапросСессия]![Кол-во 1]=0 And [ЗапросСессия]![Кол-во 2]=0,IIf([Студенты]![иногородний]=True,IIf([ЗапросСессия]![Кол-во 3]<2,[ЗапросСессия]![код_студента]), ' +
    'IIf([ЗапросСессия]![Кол-во 3]=0,[ЗапросСессия]![код_студента]))) AS код_студента ' +
    'FROM (Кафедры INNER JOIN Специальности ON Кафедры.код_кафедры = Специальности.код_кафедры) INNER JOIN (Группы INNER JOIN ((ЗапросСессия INNER JOIN Студенты ON ЗапросСессия.код_студента = Студенты.код_студента) INNER JOIN ЗапросЗачёт ' +
    'ON Студенты.код_студента = ЗапросЗачёт.код_студента) ON Группы.код_группы = Студенты.код_группы) ON Специальности.код_специальности = Группы.код_специальности '+
    'WHERE (((IIf([ЗапросЗачёт]![Кол-во_незач]=0 And [ЗапросСессия]![Кол-во 1]=0 And [ЗапросСессия]![Кол-во 2]=0,IIf([Студенты]![иногородний]=True,IIf([ЗапросСессия]![Кол-во 3]<2,[ЗапросСессия]![код_студента]), ' +
    'IIf([ЗапросСессия]![Кол-во 3]=0,[ЗапросСессия]![код_студента])))) Is Not Null) AND ((Кафедры.кафедра)=:department));';

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
  parameter:=InputBox('Ср. балл по группе факультета',
	     'Введите название факультета:', '');
  if parameter = '' then
    exit;

  sql_expression:='SELECT Студенты.фамилия, IIf([ЗапросЗачёт]![Кол-во_незач]>1 Or ([ЗапросСессия]![Кол-во 1]>0 And [ЗапросЗачёт]![Кол-во_незач]>0) Or [ЗапросСессия]![Кол-во 1]>1,[Студенты]![код_студента]) AS код_студента ' +
    'FROM ((Факультеты INNER JOIN Кафедры ON Факультеты.код_факультета = Кафедры.код_факультета) INNER JOIN Специальности ON Кафедры.код_кафедры = Специальности.код_кафедры) '+
    'INNER JOIN (Группы INNER JOIN ((Студенты INNER JOIN ЗапросЗачёт ON Студенты.код_студента = ЗапросЗачёт.код_студента) '+
    'INNER JOIN ЗапросСессия ON Студенты.код_студента = ЗапросСессия.код_студента) ON Группы.код_группы = Студенты.код_группы) ON Специальности.код_специальности = Группы.код_специальности '+
    'WHERE (((IIf([ЗапросЗачёт]![Кол-во_незач]>1 Or ([ЗапросСессия]![Кол-во 1]>0 And [ЗапросЗачёт]![Кол-во_незач]>0) Or [ЗапросСессия]![Кол-во 1]>1,[Студенты]![код_студента])) Is Not Null) AND ((Факультеты.факультет)=:faculty));';

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
  parameter:=InputBox('Ср. балл по группе факультета',
	     'Введите название факультета:', '');
  if parameter = '' then
    exit;

  sql_expression:= 'SELECT ЗапросСтипендия.множитель, Count(ЗапросСтипендия.код_студента) AS [количество-студентов] '+
    'FROM ((Факультеты INNER JOIN Кафедры ON Факультеты.код_факультета = Кафедры.код_факультета) INNER JOIN Специальности ON Кафедры.код_кафедры = Специальности.код_кафедры) '+
    'INNER JOIN (Группы INNER JOIN (ЗапросСтипендия INNER JOIN Студенты ON ЗапросСтипендия.код_студента = Студенты.код_студента) ON Группы.код_группы = Студенты.код_группы) ON Специальности.код_специальности = Группы.код_специальности ' +
    'GROUP BY ЗапросСтипендия.множитель, Факультеты.факультет HAVING (((Факультеты.факультет)=:faculty));';

  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOQuery.Parameters.ParamByName('faculty').Value:=parameter;
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery7Click(Sender: TObject);
var sql_expression: String;
begin
  sql_expression:= 'SELECT Предметы.предмет, Count(IIf([Сессия]![оценка]=1 Or [Сессия]![оценка]=2,1)) AS [Кол-во_неуд_оценок] ' +
    'FROM Предметы INNER JOIN Сессия ON Предметы.код_предмета = Сессия.код_предмета ' +
    'GROUP BY Предметы.предмет ' +
    'ORDER BY Count(IIf([Сессия]![оценка]=1 Or [Сессия]![оценка]=2,1)) DESC;';
    
  DataModule1.ADOquery.Active:=false;
  DataModule1.ADOquery.SQL.Clear;
  DataModule1.ADOquery.SQL.Add(sql_expression);
  DataModule1.ADOquery.Active:=true;
end;

procedure TMainForm.mbQuery8Click(Sender: TObject);
var sql_expression: String;

begin
  sql_expression:= 'SELECT Запрос3.предмет, Запрос3.Средняя_оценка FROM Запрос3 ORDER BY Запрос3.Средняя_оценка DESC;';
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
