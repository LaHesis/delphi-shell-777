object AuthorisationForm: TAuthorisationForm
  Left = 307
  Top = 166
  Width = 843
  Height = 426
  ActiveControl = PasswordEdit
  AutoSize = True
  BorderIcons = [biHelp]
  BorderWidth = 5
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  Color = 15463658
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Cambria'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 128
    Top = 0
    Width = 569
    Height = 32
    Alignment = taCenter
    Caption = #1042#1067#1041#1045#1056#1048#1058#1045' '#1057#1054#1058#1056#1059#1044#1053#1048#1050#1040' '#1048' '#1042#1042#1045#1044#1048#1058#1045' '#1055#1040#1056#1054#1051#1068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Cambria'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object EnterButton: TButton
    Left = 208
    Top = 40
    Width = 145
    Height = 33
    Cursor = crHandPoint
    Caption = #1042#1086#1081#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = EnterButtonClick
  end
  object PasswordEdit: TEdit
    Left = 0
    Top = 41
    Width = 201
    Height = 31
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Cambria'
    Font.Style = []
    ImeName = 'Russian'
    ParentFont = False
    TabOrder = 0
    Text = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
    OnKeyPress = PasswordEnterPress
  end
  object AuthExit: TButton
    Left = 360
    Top = 40
    Width = 161
    Height = 33
    Cursor = crHandPoint
    Caption = #1042#1099#1081#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = AuthExitClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 521
    Height = 297
    Cursor = crArrow
    TabStop = False
    DataSource = DataModuleUnit.DataSourceEmployees
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ImeName = 'Russian'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentColor = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = PasswordEnterPress
  end
  object DBEditPasswordOfEmp: TDBEdit
    Left = 368
    Top = 288
    Width = 121
    Height = 20
    DataField = 'Password'
    DataSource = DataModuleUnit.DataSourceAppEmpMastEmp
    ImeName = 'Russian'
    TabOrder = 4
    Visible = False
  end
  object DBEditIDAppEmp: TDBEdit
    Left = 240
    Top = 288
    Width = 121
    Height = 20
    DataField = 'ID_appointment'
    DataSource = DataModuleUnit.DataSourceAppEmpMastEmp
    ImeName = 'Russian'
    TabOrder = 5
    Visible = False
  end
  object DBGrid2: TDBGrid
    Left = 528
    Top = 37
    Width = 289
    Height = 276
    DataSource = DataModuleUnit.DataSourceRates
    ImeName = 'Russian'
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Cambria'
    TitleFont.Style = []
    OnKeyPress = PasswordEnterPress
  end
  object CheckBoxRateForSubDef: TCheckBox
    Left = 563
    Top = 317
    Width = 230
    Height = 60
    Cursor = crHandPoint
    Caption = #1055#1086#1076#1089#1090#1072#1074#1083#1103#1090#1100' '#1090#1072#1088#1080#1092' '#1087#1088#1080' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1080' '#1085#1086#1074#1099#1093' '#1091#1089#1083#1091#1075'/'#1089#1077#1072#1085#1089#1086#1074
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 7
    WordWrap = True
    OnKeyPress = PasswordEnterPress
  end
end
