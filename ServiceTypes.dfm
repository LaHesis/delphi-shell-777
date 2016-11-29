object ServiceTypesForm: TServiceTypesForm
  Left = 412
  Top = 188
  Width = 555
  Height = 370
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderWidth = 5
  Caption = #1042#1080#1076#1099' '#1091#1089#1083#1091#1075
  Color = 15463658
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridGenders: TDBGrid
    Left = 0
    Top = 0
    Width = 529
    Height = 289
    DataSource = DataModuleUnit.DataSourceServiceTypes
    ImeName = 'Russian'
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 4
    Top = 296
    Width = 520
    Height = 25
    DataSource = DataModuleUnit.DataSourceServiceTypes
    TabOrder = 1
  end
end
