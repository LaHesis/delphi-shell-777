object GendersForm: TGendersForm
  Left = 456
  Top = 181
  Width = 275
  Height = 138
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderWidth = 5
  Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1086#1074
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
    Width = 249
    Height = 89
    DataSource = DataModuleUnit.DataSourceGenders
    ImeName = 'Russian'
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
