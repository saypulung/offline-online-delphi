object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 344
  Top = 205
  Height = 203
  Width = 334
  object DataSourceBarang: TDataSource
    Left = 112
    Top = 24
  end
  object DataSourcebeli: TDataSource
    Left = 112
    Top = 80
  end
  object ADOConnection1: TADOConnection
    Left = 16
    Top = 24
  end
  object ADOQueryBarang: TADOQuery
    Parameters = <>
    Left = 208
    Top = 24
  end
  object ADOQuerybeli: TADOQuery
    Parameters = <>
    Left = 208
    Top = 80
  end
end
