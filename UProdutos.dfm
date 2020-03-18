object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cadastro de Produtos'
  ClientHeight = 827
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
  object pcProdutos: TPageControl
    Left = 0
    Top = 0
    Width = 1368
    Height = 827
    ActivePage = tbConsulta
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 684
    object tbCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = -108
      ExplicitTop = -112
      object Label2: TLabel
        Left = 26
        Top = 21
        Width = 49
        Height = 13
        Caption = 'COD_PRO'
        FocusControl = dbedtCOD_PRO
      end
      object Label3: TLabel
        Left = 26
        Top = 71
        Width = 93
        Height = 13
        Caption = 'DESCRICAO_PROD'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 26
        Top = 122
        Width = 58
        Height = 13
        Caption = 'TIPO_PROD'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 177
        Top = 122
        Width = 93
        Height = 13
        Caption = 'CATEGORIA_PROD'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 328
        Top = 122
        Width = 112
        Height = 13
        Caption = 'SUBCATEGORIA_PROD'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 399
        Top = 74
        Width = 56
        Height = 13
        Caption = 'UNM_PROD'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 524
        Top = 21
        Width = 70
        Height = 13
        Caption = 'MARCA_PROD'
        FocusControl = DBEdit7
      end
      object Label10: TLabel
        Left = 26
        Top = 288
        Width = 108
        Height = 13
        Caption = 'DT_CADASTRO_PROD'
        FocusControl = dbedtDT_CADASTRO_PROD
      end
      object Label11: TLabel
        Left = 177
        Top = 288
        Width = 89
        Height = 13
        Caption = 'DT_ULTALT_PROD'
        FocusControl = dbedtDT_ULTALT_PROD
      end
      object Label12: TLabel
        Left = 330
        Top = 288
        Width = 96
        Height = 13
        Caption = 'USU_ULTALT_PROD'
        FocusControl = dbedtUSU_ULTALT_PROD
      end
      object Label13: TLabel
        Left = 26
        Top = 232
        Width = 126
        Height = 13
        Caption = 'ESTOQUE_MINIMO_PROD'
        FocusControl = DBEdit12
      end
      object Label14: TLabel
        Left = 177
        Top = 176
        Width = 116
        Height = 13
        Caption = 'VENDAATACADO_PROD'
        FocusControl = DBEdit13
      end
      object Label15: TLabel
        Left = 330
        Top = 176
        Width = 106
        Height = 13
        Caption = 'VENDAVAREJO_PROD'
        FocusControl = DBEdit14
      end
      object Label16: TLabel
        Left = 26
        Top = 176
        Width = 68
        Height = 13
        Caption = 'CUSTO_PROD'
        FocusControl = DBEdit15
      end
      object btnSalvar: TButton
        Left = 264
        Top = 440
        Width = 75
        Height = 21
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = btnSalvarClick
      end
      object btnCancelar: TButton
        Left = 430
        Top = 440
        Width = 75
        Height = 21
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
      object dbedtCOD_PRO: TDBEdit
        Left = 26
        Top = 34
        Width = 49
        Height = 21
        DataField = 'COD_PRO'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 26
        Top = 90
        Width = 367
        Height = 21
        DataField = 'DESCRICAO_PROD'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 26
        Top = 141
        Width = 134
        Height = 21
        DataField = 'TIPO_PROD'
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 177
        Top = 141
        Width = 134
        Height = 21
        DataField = 'CATEGORIA_PROD'
        DataSource = DataSource1
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 328
        Top = 141
        Width = 136
        Height = 21
        DataField = 'SUBCATEGORIA_PROD'
        DataSource = DataSource1
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 399
        Top = 90
        Width = 65
        Height = 21
        DataField = 'UNM_PROD'
        DataSource = DataSource1
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 524
        Top = 37
        Width = 136
        Height = 21
        DataField = 'MARCA_PROD'
        DataSource = DataSource1
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 524
        Top = 217
        Width = 136
        Height = 21
        DataField = 'FOTO_PROD'
        DataSource = DataSource1
        TabOrder = 9
      end
      object DBCheckBox1: TDBCheckBox
        Left = 104
        Top = 37
        Width = 56
        Height = 17
        Caption = 'Ativo?'
        DataField = 'FL_SITUACAO_PROD'
        DataSource = DataSource1
        TabOrder = 10
      end
      object DBCheckBox3: TDBCheckBox
        Left = 173
        Top = 36
        Width = 97
        Height = 17
        Caption = 'FL_MVTEST_PROD'
        DataField = 'FL_MVTEST_PROD'
        DataSource = DataSource1
        TabOrder = 11
      end
      object DBCheckBox4: TDBCheckBox
        Left = 296
        Top = 36
        Width = 97
        Height = 17
        Caption = 'FL_MVTEST_COMP_PROD'
        DataField = 'FL_MVTEST_COMP_PROD'
        DataSource = DataSource1
        TabOrder = 12
      end
      object dbedtDT_CADASTRO_PROD: TDBEdit
        Left = 26
        Top = 304
        Width = 134
        Height = 21
        DataField = 'DT_CADASTRO_PROD'
        DataSource = DataSource1
        TabOrder = 13
      end
      object dbedtDT_ULTALT_PROD: TDBEdit
        Left = 177
        Top = 304
        Width = 134
        Height = 21
        DataField = 'DT_ULTALT_PROD'
        DataSource = DataSource1
        TabOrder = 14
      end
      object dbedtUSU_ULTALT_PROD: TDBEdit
        Left = 328
        Top = 304
        Width = 136
        Height = 21
        DataField = 'USU_ULTALT_PROD'
        DataSource = DataSource1
        TabOrder = 15
      end
      object DBEdit12: TDBEdit
        Left = 26
        Top = 248
        Width = 134
        Height = 21
        DataField = 'ESTOQUE_MINIMO_PROD'
        DataSource = DataSource1
        TabOrder = 16
      end
      object DBEdit13: TDBEdit
        Left = 177
        Top = 192
        Width = 134
        Height = 21
        DataField = 'VENDAATACADO_PROD'
        DataSource = DataSource1
        TabOrder = 17
      end
      object DBEdit14: TDBEdit
        Left = 330
        Top = 192
        Width = 134
        Height = 21
        DataField = 'VENDAVAREJO_PROD'
        DataSource = DataSource1
        TabOrder = 18
      end
      object DBEdit15: TDBEdit
        Left = 26
        Top = 192
        Width = 134
        Height = 21
        DataField = 'CUSTO_PROD'
        DataSource = DataSource1
        TabOrder = 19
      end
      object Panel1: TPanel
        Left = 523
        Top = 90
        Width = 137
        Height = 121
        Caption = 'Foto'
        TabOrder = 20
      end
    end
    object tbConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitHeight = 656
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
  object DataSource1: TDataSource
    DataSet = DM.unqryProdutos
    Left = 680
    Top = 344
  end
end
