object DM: TDM
  OldCreateOrder = False
  Height = 477
  Width = 873
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 
      'C:\Users\bruno\OneDrive\Documentos\Desenvolvimento_Delphi\protot' +
      'ipos\aroma\AROMA.FDB'
    DefaultTransaction = UniTransaction
    Username = 'sysdba'
    Server = '192.168.1.100'
    Connected = True
    Left = 72
    Top = 40
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object UniTransaction: TUniTransaction
    DefaultConnection = UniConnection1
    Left = 160
    Top = 40
  end
  object unqryClientes: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from cliente')
    Left = 64
    Top = 168
    object unqryClientesCOD_CLI: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'COD_CLI'
      Required = True
    end
    object unqryClientesTIPO_CLI: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 3
      FieldName = 'TIPO_CLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object unqryClientesNOME_CLI: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 37
      FieldName = 'NOME_CLI'
      Required = True
      Size = 50
    end
    object unqryClientesAPELIDO_CLI: TStringField
      DisplayLabel = 'Apelido'
      DisplayWidth = 14
      FieldName = 'APELIDO_CLI'
    end
    object unqryClientesCPF_CNPJ_CLI: TStringField
      DisplayLabel = 'CPF ou CNPJ'
      DisplayWidth = 14
      FieldName = 'CPF_CNPJ_CLI'
      Size = 14
    end
    object unqryClientesRG_INSCRICAO_CLI: TStringField
      DisplayLabel = 'RG ou INSCRICAO'
      DisplayWidth = 15
      FieldName = 'RG_INSCRICAO_CLI'
    end
    object unqryClientesEMISSOR_RG_CLI: TStringField
      DisplayLabel = 'Org'#227'o Emissor'
      DisplayWidth = 14
      FieldName = 'EMISSOR_RG_CLI'
      Size = 10
    end
    object unqryClientesSEXO_CLI: TStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 6
      FieldName = 'SEXO_CLI'
      FixedChar = True
      Size = 1
    end
    object unqryClientesDT_NASC_CLI: TDateField
      DisplayLabel = 'Data Nascimento'
      DisplayWidth = 13
      FieldName = 'DT_NASC_CLI'
      EditMask = '!99/99/0000;1;_'
    end
    object unqryClientesTELEFONE_CLI: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'TELEFONE_CLI'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object unqryClientesCEL_CLI: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 13
      FieldName = 'CEL_CLI'
      EditMask = '!\(99\)0000-00000;1;_'
    end
    object unqryClientesEMAIL_CLI: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 23
      FieldName = 'EMAIL_CLI'
      Size = 50
    end
    object unqryClientesOBS_CLI: TStringField
      DisplayLabel = 'OBS'
      DisplayWidth = 80
      FieldName = 'OBS_CLI'
      Size = 80
    end
    object unqryClientesLIMITE_CRED_CLI: TFloatField
      DisplayLabel = 'Limite Credito'
      DisplayWidth = 14
      FieldName = 'LIMITE_CRED_CLI'
      currency = True
    end
    object unqryClientesDT_CADASTRO_CLI: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      DisplayWidth = 18
      FieldName = 'DT_CADASTRO_CLI'
      EditMask = '!99/99/0000;1;_'
    end
    object unqryClientesDT_ULTALT_CLI: TDateTimeField
      DisplayLabel = 'Data Ultima Altera'#231#227'o'
      DisplayWidth = 18
      FieldName = 'DT_ULTALT_CLI'
      EditMask = '!99/99/0000;1;_'
    end
    object unqryClientesUSU_ULTALT_CLI: TIntegerField
      DisplayLabel = 'Usu'#225'rio Resp. Ultima Altera'#231#227'o'
      DisplayWidth = 24
      FieldName = 'USU_ULTALT_CLI'
    end
    object unqryClientesNOME_USUARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_USUARIO'
      LookupDataSet = uniqryUsuarios
      LookupKeyFields = 'COD_USU'
      LookupResultField = 'LOGIN_USU'
      KeyFields = 'USU_ULTALT_CLI'
      Size = 10
      Lookup = True
    end
  end
  object uniDSClientes: TUniDataSource
    DataSet = unqryClientes
    Left = 160
    Top = 168
  end
  object uniqryUsuarios: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from usuario')
    Left = 72
    Top = 104
    object uniqryUsuariosCOD_USU: TIntegerField
      FieldName = 'COD_USU'
      Required = True
    end
    object uniqryUsuariosNOME_USU: TStringField
      FieldName = 'NOME_USU'
      Required = True
      Size = 50
    end
    object uniqryUsuariosEMAIL_USU: TStringField
      FieldName = 'EMAIL_USU'
      Size = 50
    end
    object uniqryUsuariosTEL_USU: TStringField
      FieldName = 'TEL_USU'
    end
    object uniqryUsuariosLOGIN_USU: TStringField
      FieldName = 'LOGIN_USU'
      Required = True
      Size = 10
    end
    object uniqryUsuariosSENHA_USU: TStringField
      FieldName = 'SENHA_USU'
      Required = True
    end
    object uniqryUsuariosFL_VENDEDOR_USU: TBooleanField
      FieldName = 'FL_VENDEDOR_USU'
      Required = True
    end
    object uniqryUsuariosFL_ATIVO_USU: TBooleanField
      FieldName = 'FL_ATIVO_USU'
      Required = True
    end
  end
  object UniDaSUsuarios: TUniDataSource
    DataSet = unqryClientes
    Left = 160
    Top = 104
  end
  object unqryProdutos: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from  produto')
    Left = 64
    Top = 240
    object unqryProdutosCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Required = True
    end
    object unqryProdutosDESCRICAO_PROD: TStringField
      FieldName = 'DESCRICAO_PROD'
      Required = True
      Size = 40
    end
    object unqryProdutosTIPO_PROD: TIntegerField
      FieldName = 'TIPO_PROD'
    end
    object unqryProdutosCATEGORIA_PROD: TIntegerField
      FieldName = 'CATEGORIA_PROD'
    end
    object unqryProdutosSUBCATEGORIA_PROD: TIntegerField
      FieldName = 'SUBCATEGORIA_PROD'
    end
    object unqryProdutosUNM_PROD: TIntegerField
      FieldName = 'UNM_PROD'
    end
    object unqryProdutosMARCA_PROD: TStringField
      FieldName = 'MARCA_PROD'
    end
    object unqryProdutosFOTO_PROD: TStringField
      FieldName = 'FOTO_PROD'
      Size = 50
    end
    object unqryProdutosFL_SITUACAO_PROD: TBooleanField
      FieldName = 'FL_SITUACAO_PROD'
    end
    object unqryProdutosFL_ATIVO_PROD: TBooleanField
      FieldName = 'FL_ATIVO_PROD'
      Required = True
    end
    object unqryProdutosFL_MVTEST_PROD: TBooleanField
      FieldName = 'FL_MVTEST_PROD'
      Required = True
    end
    object unqryProdutosFL_MVTEST_COMP_PROD: TBooleanField
      FieldName = 'FL_MVTEST_COMP_PROD'
      Required = True
    end
    object unqryProdutosDT_CADASTRO_PROD: TDateTimeField
      FieldName = 'DT_CADASTRO_PROD'
      Required = True
    end
    object unqryProdutosDT_ULTALT_PROD: TDateTimeField
      FieldName = 'DT_ULTALT_PROD'
      Required = True
    end
    object unqryProdutosUSU_ULTALT_PROD: TIntegerField
      FieldName = 'USU_ULTALT_PROD'
      Required = True
    end
    object unqryProdutosESTOQUE_MINIMO_PROD: TFloatField
      FieldName = 'ESTOQUE_MINIMO_PROD'
    end
    object unqryProdutosVENDAATACADO_PROD: TFloatField
      FieldName = 'VENDAATACADO_PROD'
    end
    object unqryProdutosVENDAVAREJO_PROD: TFloatField
      FieldName = 'VENDAVAREJO_PROD'
    end
  end
  object uniDSProdutos: TUniDataSource
    DataSet = unqryClientes
    Left = 152
    Top = 240
  end
end
