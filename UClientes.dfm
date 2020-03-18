object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cadastro de Clientes'
  ClientHeight = 684
  ClientWidth = 1368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcClientes: TPageControl
    Left = 0
    Top = 0
    Width = 1368
    Height = 684
    ActivePage = tbCadastro
    Align = alClient
    TabOrder = 0
    ExplicitTop = 72
    ExplicitWidth = 951
    ExplicitHeight = 612
    object tbCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitWidth = 943
      object Label10: TLabel
        Left = 40
        Top = 168
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 240
        Top = 168
        Width = 33
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 360
        Top = 165
        Width = 28
        Height = 13
        Caption = 'E-Mail'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 42
        Top = 225
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 506
        Top = 226
        Width = 80
        Height = 13
        Caption = 'Limite de Cr'#233'dito'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 44
        Top = 296
        Width = 85
        Height = 13
        Caption = 'Data de Cadastro'
        FocusControl = dbedtDT_CADASTRO_CLI
      end
      object Label16: TLabel
        Left = 240
        Top = 296
        Width = 104
        Height = 13
        Caption = 'Data Ultima Altera'#231#227'o'
        FocusControl = dbedtDT_ULT_ALT
      end
      object Label17: TLabel
        Left = 423
        Top = 293
        Width = 148
        Height = 13
        Caption = 'Usu'#225'rio Resp. Ultima Altera'#231#227'o'
      end
      object Label2: TLabel
        Left = 120
        Top = 16
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = dbedtCLI_TIPO
      end
      object Label4: TLabel
        Left = 430
        Top = 64
        Width = 35
        Height = 13
        Caption = 'Apelido'
        FocusControl = dbedtAPELIDO_CLI
      end
      object Label5: TLabel
        Left = 40
        Top = 112
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 240
        Top = 112
        Width = 14
        Height = 13
        Caption = 'RG'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 430
        Top = 112
        Width = 69
        Height = 13
        Caption = 'Orgao Emissor'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 176
        Top = 16
        Width = 24
        Height = 13
        Caption = 'Sexo'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 520
        Top = 109
        Width = 81
        Height = 13
        Caption = 'Data Nascimento'
        FocusControl = DBEdit9
      end
      object lblCodigo: TLabel
        Left = 40
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = dbedtCLI_CODIGO
      end
      object Nome: TLabel
        Left = 40
        Top = 64
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = dbedtNOME_CLI
      end
      object dbedtCLI_CODIGO: TDBEdit
        Left = 40
        Top = 32
        Width = 52
        Height = 21
        DataField = 'COD_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 40
        Top = 184
        Width = 186
        Height = 21
        DataField = 'TELEFONE_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 240
        Top = 184
        Width = 99
        Height = 21
        DataField = 'CEL_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 360
        Top = 184
        Width = 273
        Height = 21
        DataField = 'EMAIL_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 11
      end
      object DBEdit13: TDBEdit
        Left = 40
        Top = 245
        Width = 453
        Height = 21
        DataField = 'OBS_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 506
        Top = 245
        Width = 127
        Height = 21
        DataField = 'LIMITE_CRED_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 13
      end
      object dbedtDT_CADASTRO_CLI: TDBEdit
        Left = 40
        Top = 312
        Width = 184
        Height = 21
        DataField = 'DT_CADASTRO_CLI'
        DataSource = DM.uniDSClientes
        Enabled = False
        TabOrder = 14
      end
      object dbedtDT_ULT_ALT: TDBEdit
        Left = 240
        Top = 312
        Width = 177
        Height = 21
        DataField = 'DT_ULTALT_CLI'
        DataSource = DM.uniDSClientes
        Enabled = False
        TabOrder = 15
      end
      object dbedtCLI_TIPO: TDBEdit
        Left = 120
        Top = 32
        Width = 33
        Height = 21
        DataField = 'TIPO_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 1
      end
      object dbedtNOME_CLI: TDBEdit
        Left = 40
        Top = 80
        Width = 377
        Height = 21
        DataField = 'NOME_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 3
      end
      object dbedtAPELIDO_CLI: TDBEdit
        Left = 430
        Top = 80
        Width = 203
        Height = 21
        DataField = 'APELIDO_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 40
        Top = 128
        Width = 186
        Height = 21
        DataField = 'CPF_CNPJ_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 240
        Top = 128
        Width = 177
        Height = 21
        DataField = 'RG_INSCRICAO_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 430
        Top = 128
        Width = 63
        Height = 21
        DataField = 'EMISSOR_RG_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 176
        Top = 32
        Width = 48
        Height = 21
        DataField = 'SEXO_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 520
        Top = 128
        Width = 113
        Height = 21
        DataField = 'DT_NASC_CLI'
        DataSource = DM.uniDSClientes
        TabOrder = 8
      end
      object btnSalvar: TButton
        Left = 264
        Top = 440
        Width = 75
        Height = 21
        Caption = 'Salvar'
        TabOrder = 16
        OnClick = btnSalvarClick
      end
      object btnCancelar: TButton
        Left = 430
        Top = 440
        Width = 75
        Height = 21
        Caption = 'Cancelar'
        TabOrder = 17
        OnClick = btnCancelarClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 423
        Top = 312
        Width = 144
        Height = 21
        DataField = 'NOME_USUARIO'
        DataSource = DM.uniDSClientes
        TabOrder = 18
      end
    end
    object tbConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 28
      ExplicitWidth = 943
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 46
        Height = 13
        Caption = 'Pesquisa:'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 92
        Width = 1313
        Height = 564
        Align = alCustom
        DataSource = DM.uniDSClientes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyPress = DBGrid1KeyPress
      end
      object DBNavigator1: TDBNavigator
        Left = 16
        Top = 59
        Width = 228
        Height = 26
        DataSource = DM.uniDSClientes
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 5
      end
      object btnNovo: TButton
        Left = 262
        Top = 60
        Width = 75
        Height = 26
        Caption = 'Novo'
        TabOrder = 2
        OnClick = btnNovoClick
      end
      object btnEditar: TButton
        Left = 368
        Top = 60
        Width = 75
        Height = 26
        Caption = 'Editar'
        TabOrder = 3
        OnClick = btnEditarClick
      end
      object btnExcluir: TButton
        Left = 480
        Top = 60
        Width = 75
        Height = 26
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = btnExcluirClick
      end
      object edtPesquisaNome: TEdit
        Left = 68
        Top = 24
        Width = 176
        Height = 21
        TabOrder = 0
        OnChange = edtPesquisaNomeChange
      end
    end
  end
end
