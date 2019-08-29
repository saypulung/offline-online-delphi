object FormConfig: TFormConfig
  Left = 429
  Top = 251
  Width = 481
  Height = 228
  Caption = 'FormConfig'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 189
    Align = alClient
    Color = clActiveBorder
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Client ID'
    end
    object Label2: TLabel
      Left = 24
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Site ID'
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 313
      Height = 21
      TabOrder = 0
      Text = 'EditGuid'
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 48
      Width = 313
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
    object Button1: TButton
      Left = 24
      Top = 128
      Width = 377
      Height = 41
      Caption = 'Simpan'
      TabOrder = 2
    end
    object Button2: TButton
      Left = 24
      Top = 88
      Width = 377
      Height = 25
      Caption = 'Jalok ID Coookkk'
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 408
      Top = 48
      Width = 49
      Height = 21
      TabOrder = 4
      Text = 'Edit2'
    end
  end
end
