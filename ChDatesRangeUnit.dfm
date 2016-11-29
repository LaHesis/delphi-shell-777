object ChDatesRangeForm: TChDatesRangeForm
  Left = 954
  Top = 56
  Width = 403
  Height = 266
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderWidth = 5
  Caption = #1042#1074#1086#1076' '#1076#1080#1072#1087#1072#1079#1086#1085#1072' '#1076#1072#1090' '#1076#1083#1103' '#1074#1099#1075#1088#1091#1078#1072#1077#1084#1086#1075#1086' '#1086#1090#1095#1077#1090#1072
  Color = 15463658
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 15
    Height = 32
    Caption = #1057
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 184
    Top = 56
    Width = 36
    Height = 32
    Caption = #1055#1054
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 0
    Top = 0
    Width = 280
    Height = 50
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1099' '#1085#1072#1095#1072#1083#1072' '#1089#1077#1072#1085#1089#1086#1074#13#10#1074' '#1092#1086#1088#1084#1072#1090#1077' '#1044#1044':'#1052#1052':'#1043#1043#1043#1043
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 192
    Width = 160
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1085' '#1086#1090#1095#1077#1090' '#8470
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
  end
  object ButtonShapeReportSessions: TButton
    Left = 0
    Top = 96
    Width = 377
    Height = 89
    Cursor = crHandPoint
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = ButtonShapeReportSessionsClick
  end
  object MaskEditStartDate: TMaskEdit
    Left = 32
    Top = 56
    Width = 142
    Height = 31
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Cambria'
    Font.Style = []
    ImeName = 'Russian'
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    Text = '  .  .    '
  end
  object MaskEditEndDate: TMaskEdit
    Left = 232
    Top = 56
    Width = 141
    Height = 31
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Cambria'
    Font.Style = []
    ImeName = 'Russian'
    MaxLength = 10
    ParentFont = False
    TabOrder = 2
    Text = '  .  .    '
    OnKeyPress = MaskEditEndDateKeyPress
  end
  object MenuItemTag: TEdit
    Left = 168
    Top = 192
    Width = 209
    Height = 23
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Cambria'
    Font.Style = []
    ImeName = 'Russian'
    ParentFont = False
    TabOrder = 3
    Text = 'MenuItemTag'
  end
end
