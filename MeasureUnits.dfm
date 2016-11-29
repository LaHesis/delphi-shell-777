object MeasureForm: TMeasureForm
  Left = 412
  Top = 188
  Width = 371
  Height = 274
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderWidth = 5
  Caption = #1045#1076#1080#1085#1080#1094#1099' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
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
    Width = 345
    Height = 225
    DataSource = DataModuleUnit.DataSourceMeasureUnits
    ImeName = 'Russian'
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
