object RatesForm: TRatesForm
  Left = 269
  Top = 153
  Width = 860
  Height = 474
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderWidth = 5
  Caption = #1058#1072#1088#1080#1092#1099
  Color = 15463658
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 0
    Width = 503
    Height = 32
    Alignment = taCenter
    Caption = #1057#1054#1057#1058#1040#1042#1051#1071#1070#1065#1048#1045' '#1042#1067#1041#1056#1040#1053#1053#1054#1043#1054' '#1058#1040#1056#1048#1060#1040
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Cambria'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 297
    Height = 369
    DataSource = DataModuleUnit.DataSourceRates
    ImeName = 'Russian'
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGridRComponent: TDBGrid
    Left = 304
    Top = 32
    Width = 529
    Height = 337
    DataSource = DataModuleUnit.DataSourceRateComponentsRF
    ImeName = 'Russian'
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigatorEmployees: TDBNavigator
    Left = 0
    Top = 372
    Width = 290
    Height = 33
    Cursor = crHandPoint
    Hint = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1079#1072#1087#1080#1089#1077#1081
    DataSource = DataModuleUnit.DataSourceRates
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
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 304
    Top = 372
    Width = 530
    Height = 33
    Cursor = crHandPoint
    Hint = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1079#1072#1087#1080#1089#1077#1081
    DataSource = DataModuleUnit.DataSourceRateComponentsRF
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
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 520
    Top = 424
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N2: TMenuItem
        Caption = #1042#1080#1076#1099' '#1091#1089#1083#1091#1075
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1045#1076#1080#1085#1080#1094#1099' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
        OnClick = N3Click
      end
    end
  end
end
