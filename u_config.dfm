object Form1: TForm1
  Left = 302
  Top = 231
  Width = 745
  Height = 297
  Caption = 'Transaksi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 329
    Height = 225
    Caption = 'Detail Beli'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 48
      Height = 13
      Caption = 'ID Barang'
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 65
      Height = 13
      Caption = 'Nama Barang'
    end
    object Label3: TLabel
      Left = 24
      Top = 112
      Width = 16
      Height = 13
      Caption = 'Qty'
    end
    object Label4: TLabel
      Left = 24
      Top = 144
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object EditIDBarang: TEdit
      Left = 120
      Top = 32
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'EditIDBarang'
    end
    object ButtonCariBaarang: TButton
      Left = 248
      Top = 32
      Width = 41
      Height = 25
      Caption = '...'
      TabOrder = 1
    end
    object EditNamaBarang: TEdit
      Left = 120
      Top = 72
      Width = 169
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = 'EditNamaBarang'
    end
    object EditQty: TEdit
      Left = 120
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'EditQty'
    end
    object EditTotal: TEdit
      Left = 120
      Top = 136
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
      Text = 'EditTotal'
    end
    object ButtonSimpan: TButton
      Left = 24
      Top = 176
      Width = 289
      Height = 41
      Caption = 'Simpan'
      TabOrder = 5
    end
    object EditHarga: TEdit
      Left = 248
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'EditHarga'
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 360
    Top = 16
    Width = 353
    Height = 225
    Caption = 'Histori Pembelian'
    TabOrder = 1
    object DBGridPembelian: TDBGrid
      Left = 8
      Top = 24
      Width = 337
      Height = 193
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object XPManifest1: TXPManifest
    Left = 352
    Top = 8
  end
end
