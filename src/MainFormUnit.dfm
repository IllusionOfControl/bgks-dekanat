object MainForm: TMainForm
  Left = 572
  Top = 291
  Width = 578
  Height = 471
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DataGrid: TDBGrid
    Left = 8
    Top = 8
    Width = 553
    Height = 361
    DataSource = DataModule1.DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataNav: TDBNavigator
    Left = 8
    Top = 384
    Width = 240
    Height = 25
    DataSource = DataModule1.DataSource
    TabOrder = 1
  end
  object MainMenu: TMainMenu
    Left = 536
    Top = 384
    object msProgram: TMenuItem
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
      object miExit: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = miExitClick
      end
    end
    object msTables: TMenuItem
      Caption = #1058#1072#1073#1083#1080#1094#1099
      object mbTable1: TMenuItem
        Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090#1099
        OnClick = mbTable1Click
      end
      object mbTable2: TMenuItem
        Caption = #1050#1072#1092#1077#1076#1088#1099
        OnClick = mbTable2Click
      end
      object mbTable3: TMenuItem
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        OnClick = mbTable3Click
      end
      object mbTable4: TMenuItem
        Caption = #1043#1088#1091#1087#1087#1099
        OnClick = mbTable4Click
      end
      object mbTable5: TMenuItem
        Caption = #1057#1090#1091#1076#1077#1085#1090#1099
        OnClick = mbTable5Click
      end
      object mbTable6: TMenuItem
        Caption = #1055#1088#1077#1076#1084#1077#1090#1099
        OnClick = mbTable6Click
      end
      object mbTable7: TMenuItem
        Caption = #1057#1077#1089#1089#1080#1103
        OnClick = mbTable7Click
      end
      object mbTable8: TMenuItem
        Caption = #1047#1072#1095#1105#1090
        OnClick = mbTable8Click
      end
    end
    object msQueries: TMenuItem
      Caption = #1047#1072#1087#1088#1086#1089#1099
      object mbQuery1: TMenuItem
        Caption = #1047#1072#1087#1088#1086#1089' 1'
        OnClick = mbQuery1Click
      end
      object mbQuery2: TMenuItem
        Caption = #1047#1072#1087#1088#1086#1089' 2'
        OnClick = mbQuery2Click
      end
      object mbQuery3: TMenuItem
        Caption = #1047#1072#1087#1088#1086#1089' 3'
        OnClick = mbQuery3Click
      end
      object mbQuery4: TMenuItem
        Caption = #1047#1072#1087#1088#1086#1089' 4'
        OnClick = mbQuery4Click
      end
      object mbQuery5: TMenuItem
        Caption = #1047#1072#1087#1088#1086#1089' 5'
        OnClick = mbQuery5Click
      end
      object mbQuery6: TMenuItem
        Caption = #1047#1072#1087#1088#1086#1089' 6'
        OnClick = mbQuery6Click
      end
      object mbQuery7: TMenuItem
        Caption = #1047#1072#1087#1088#1086#1089' 7'
        OnClick = mbQuery7Click
      end
      object mbQuery8: TMenuItem
        Caption = #1047#1072#1087#1088#1086#1089' 8'
        OnClick = mbQuery8Click
      end
    end
    object msReports: TMenuItem
      Caption = #1054#1090#1095#1105#1090#1099
      object mbReport1: TMenuItem
        Caption = #1054#1090#1095#1105#1090' 5'
        Visible = False
        OnClick = mbReport1Click
      end
      object mbReport2: TMenuItem
        Caption = #1054#1090#1095#1105#1090' 6'
        OnClick = mbReport2Click
      end
    end
  end
end
