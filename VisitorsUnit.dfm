object VisitorsForm: TVisitorsForm
  Left = 406
  Top = 146
  Width = 626
  Height = 374
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderWidth = 5
  Caption = #1055#1086#1089#1077#1090#1080#1090#1077#1083#1080
  Color = 15463658
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigatorCommTypes: TDBNavigator
    Left = 0
    Top = 292
    Width = 600
    Height = 33
    Cursor = crHandPoint
    Hint = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1079#1072#1087#1080#1089#1077#1081
    DataSource = DataModuleUnit.DataSourceClientsMF
    Hints.Strings = (
      #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      #1042#1089#1090#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      #1054#1090#1084#1077#1085#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object DBGridClients: TDBGrid
    Left = 0
    Top = 0
    Width = 600
    Height = 285
    DataSource = DataModuleUnit.DataSourceClientsMF
    ImeName = 'Russian'
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
