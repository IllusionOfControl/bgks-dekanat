program Univer;

uses
  Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DataModule1: TDataModule},
  ReportForm1Unit in 'ReportForm1Unit.pas' {ReportForm1},
  ReportForm2Unit in 'ReportForm2Unit.pas' {ReportForm2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TReportForm1, ReportForm1);
  Application.CreateForm(TReportForm2, ReportForm2);
  Application.Run;
end.
