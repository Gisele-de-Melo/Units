object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 261
  Width = 422
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=MySql ODBC 32 Ansi;Initial Catalog=world;'
    DefaultDatabase = 'world'
    LoginPrompt = False
    Left = 64
    Top = 40
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    TableName = 'country'
    Left = 176
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 264
    Top = 40
  end
end
