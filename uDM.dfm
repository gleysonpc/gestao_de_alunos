object DM: TDM
  OldCreateOrder = False
  Height = 463
  Width = 608
  object Conexao: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'Database=D:\Projetos-Delphi\Gest'#227'o de Alunos\database.db'
      'DriverID=sQLite')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object SQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 112
    Top = 24
  end
  object qUsuario: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from usuario')
    Left = 112
    Top = 184
    object qUsuarioid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qUsuarionome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qUsuariologin: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'login'
      Origin = 'login'
      Size = 100
    end
    object qUsuariosenha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
    object qUsuarionivel: TStringField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'nivel'
      Origin = 'nivel'
    end
  end
  object qAluno: TFDQuery
    Connection = Conexao
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from aluno')
    Left = 200
    Top = 184
    object qAlunoid: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qAlunonome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 200
    end
    object qAlunocpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object qAlunotelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object qAlunoemail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Origin = 'email'
      Size = 200
    end
    object qAlunorua: TWideStringField
      DisplayLabel = 'Rua'
      FieldName = 'rua'
      Origin = 'rua'
      Size = 255
    end
    object qAlunocomplemento: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 200
    end
    object qAlunonumero: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Origin = 'numero'
    end
    object qAlunobairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 200
    end
    object qAlunocidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object qAlunoestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Origin = 'estado'
      Size = 2
    end
    object qAlunocep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Origin = 'cep'
    end
    object qAlunoresponsavel: TWideStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Size = 200
    end
    object qAlunocpf_responsavel: TWideStringField
      DisplayLabel = 'CPF do Respons'#225'vel'
      FieldName = 'cpf_responsavel'
      Origin = 'cpf_responsavel'
    end
    object qAlunoparcela1: TWideStringField
      FieldName = 'parcela1'
      Origin = 'parcela1'
      Size = 50
    end
    object qAlunoparcela2: TWideStringField
      FieldName = 'parcela2'
      Origin = 'parcela2'
      Size = 50
    end
    object qAlunoparcela3: TWideStringField
      FieldName = 'parcela3'
      Origin = 'parcela3'
      Size = 50
    end
    object qAlunoparcela4: TWideStringField
      FieldName = 'parcela4'
      Origin = 'parcela4'
      Size = 50
    end
    object qAlunoparcela5: TWideStringField
      FieldName = 'parcela5'
      Origin = 'parcela5'
      Size = 50
    end
    object qAlunoparcela6: TWideStringField
      FieldName = 'parcela6'
      Origin = 'parcela6'
      Size = 50
    end
    object qAlunoparcela7: TWideStringField
      FieldName = 'parcela7'
      Origin = 'parcela7'
      Size = 50
    end
    object qAlunoparcela8: TWideStringField
      FieldName = 'parcela8'
      Origin = 'parcela8'
      Size = 50
    end
    object qAlunoparcela9: TWideStringField
      FieldName = 'parcela9'
      Origin = 'parcela9'
      Size = 50
    end
    object qAlunoparcela10: TWideStringField
      FieldName = 'parcela10'
      Origin = 'parcela10'
      Size = 50
    end
    object qAlunoparcela11: TWideStringField
      FieldName = 'parcela11'
      Origin = 'parcela11'
      Size = 50
    end
    object qAlunodata_par1: TDateField
      FieldName = 'data_par1'
      Origin = 'data_par1'
    end
    object qAlunodata_par2: TDateField
      FieldName = 'data_par2'
      Origin = 'data_par2'
    end
    object qAlunodata_par3: TDateField
      FieldName = 'data_par3'
      Origin = 'data_par3'
    end
    object qAlunodata_par4: TDateField
      FieldName = 'data_par4'
      Origin = 'data_par4'
    end
    object qAlunodata_par5: TDateField
      FieldName = 'data_par5'
      Origin = 'data_par5'
    end
    object qAlunodata_par6: TDateField
      FieldName = 'data_par6'
      Origin = 'data_par6'
    end
    object qAlunodata_par7: TDateField
      FieldName = 'data_par7'
      Origin = 'data_par7'
    end
    object qAlunodata_par8: TDateField
      FieldName = 'data_par8'
      Origin = 'data_par8'
    end
    object qAlunodata_par9: TDateField
      FieldName = 'data_par9'
      Origin = 'data_par9'
    end
    object qAlunodata_par10: TDateField
      FieldName = 'data_par10'
      Origin = 'data_par10'
    end
    object qAlunodata_par11: TDateField
      FieldName = 'data_par11'
      Origin = 'data_par11'
    end
    object qAlunohorarioID: TIntegerField
      FieldName = 'horarioID'
      Origin = 'horarioID'
    end
    object qAlunoHorario: TStringField
      DisplayLabel = 'Hor'#225'rio'
      FieldKind = fkLookup
      FieldName = 'Horario'
      LookupDataSet = qHorario
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'horarioID'
      Size = 50
      Lookup = True
    end
    object qAlunostatus_matricula: TWideStringField
      FieldName = 'status_matricula'
      Origin = 'status_matricula'
      Size = 50
    end
    object qAlunoobs: TWideMemoField
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftWideMemo
    end
    object qAlunocertificado: TWideStringField
      FieldName = 'certificado'
      Origin = 'certificado'
      Size = 200
    end
    object qAlunonovo_aluno: TBooleanField
      FieldName = 'novo_aluno'
      Origin = 'novo_aluno'
    end
    object qAlunoboleto: TIntegerField
      FieldName = 'boleto'
      Origin = 'boleto'
    end
    object qAlunocriado_em: TDateField
      FieldName = 'criado_em'
      Origin = 'criado_em'
    end
    object qAlunomodificado_em: TDateField
      FieldName = 'modificado_em'
      Origin = 'modificado_em'
    end
    object qAlunoselecionado: TBooleanField
      FieldName = 'selecionado'
      Origin = 'selecionado'
    end
  end
  object dsAluno: TDataSource
    DataSet = qAluno
    Left = 248
    Top = 184
  end
  object qHorario: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from horario')
    Left = 112
    Top = 240
    object qHorarioid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qHorariodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
  end
  object tbVersion: TFDTable
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'version'
    TableName = 'version'
    Left = 328
    Top = 296
    object tbVersiondb: TFloatField
      FieldName = 'db'
      Origin = 'db'
      DisplayFormat = '0.0'
    end
    object tbVersionsw: TFloatField
      FieldName = 'sw'
      Origin = 'sw'
      DisplayFormat = '0.0'
    end
  end
  object dsVersion: TDataSource
    DataSet = tbVersion
    Left = 384
    Top = 296
  end
  object tbConfig: TFDTable
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'config'
    TableName = 'config'
    Left = 320
    Top = 184
    object tbConfigunidade: TWideStringField
      FieldName = 'unidade'
      Origin = 'unidade'
      Size = 50
    end
    object tbConfigparcela1: TDateField
      FieldName = 'parcela1'
      Origin = 'parcela1'
    end
    object tbConfigparcela2: TWideStringField
      FieldName = 'parcela2'
      Origin = 'parcela2'
      Size = 32767
    end
    object tbConfigparcela3: TWideStringField
      FieldName = 'parcela3'
      Origin = 'parcela3'
      Size = 32767
    end
    object tbConfigparcela4: TWideStringField
      FieldName = 'parcela4'
      Origin = 'parcela4'
      Size = 32767
    end
    object tbConfigparcela5: TWideStringField
      FieldName = 'parcela5'
      Origin = 'parcela5'
      Size = 32767
    end
    object tbConfigparcela6: TWideStringField
      FieldName = 'parcela6'
      Origin = 'parcela6'
      Size = 32767
    end
    object tbConfigparcela7: TWideStringField
      FieldName = 'parcela7'
      Origin = 'parcela7'
      Size = 32767
    end
    object tbConfigparcela8: TWideStringField
      FieldName = 'parcela8'
      Origin = 'parcela8'
      Size = 32767
    end
    object tbConfigparcela9: TWideStringField
      FieldName = 'parcela9'
      Origin = 'parcela9'
      Size = 32767
    end
    object tbConfigparcela10: TWideStringField
      FieldName = 'parcela10'
      Origin = 'parcela10'
      Size = 32767
    end
    object tbConfigparcela11: TWideStringField
      FieldName = 'parcela11'
      Origin = 'parcela11'
      Size = 32767
    end
    object tbConfigvencimento: TIntegerField
      FieldName = 'vencimento'
      Origin = 'vencimento'
    end
    object tbConfigtolerancia: TIntegerField
      FieldName = 'tolerancia'
      Origin = 'tolerancia'
    end
  end
  object dsConfig: TDataSource
    DataSet = tbConfig
    Left = 368
    Top = 184
  end
end
