unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, InterBaseUniProvider, MemDS;


type
  TDM = class(TDataModule)
    UniConnection1: TUniConnection;
    UniTransaction: TUniTransaction;
    unqryClientes: TUniQuery;
    unqryClientesCOD_CLI: TIntegerField;
    unqryClientesTIPO_CLI: TStringField;
    unqryClientesNOME_CLI: TStringField;
    unqryClientesAPELIDO_CLI: TStringField;
    unqryClientesCPF_CNPJ_CLI: TStringField;
    unqryClientesRG_INSCRICAO_CLI: TStringField;
    unqryClientesEMISSOR_RG_CLI: TStringField;
    unqryClientesSEXO_CLI: TStringField;
    unqryClientesDT_NASC_CLI: TDateField;
    unqryClientesTELEFONE_CLI: TStringField;
    unqryClientesCEL_CLI: TStringField;
    unqryClientesEMAIL_CLI: TStringField;
    unqryClientesOBS_CLI: TStringField;
    unqryClientesLIMITE_CRED_CLI: TFloatField;
    unqryClientesDT_CADASTRO_CLI: TDateTimeField;
    unqryClientesDT_ULTALT_CLI: TDateTimeField;
    unqryClientesUSU_ULTALT_CLI: TIntegerField;
    uniDSClientes: TUniDataSource;
    uniqryUsuarios: TUniQuery;
    uniqryUsuariosCOD_USU: TIntegerField;
    uniqryUsuariosNOME_USU: TStringField;
    uniqryUsuariosEMAIL_USU: TStringField;
    uniqryUsuariosTEL_USU: TStringField;
    uniqryUsuariosLOGIN_USU: TStringField;
    uniqryUsuariosSENHA_USU: TStringField;
    uniqryUsuariosFL_VENDEDOR_USU: TBooleanField;
    uniqryUsuariosFL_ATIVO_USU: TBooleanField;
    UniDaSUsuarios: TUniDataSource;
    unqryClientesNOME_USUARIO: TStringField;
    unqryProdutos: TUniQuery;
    unqryProdutosCOD_PRO: TIntegerField;
    unqryProdutosDESCRICAO_PROD: TStringField;
    unqryProdutosTIPO_PROD: TIntegerField;
    unqryProdutosCATEGORIA_PROD: TIntegerField;
    unqryProdutosSUBCATEGORIA_PROD: TIntegerField;
    unqryProdutosUNM_PROD: TIntegerField;
    unqryProdutosMARCA_PROD: TStringField;
    unqryProdutosFOTO_PROD: TStringField;
    unqryProdutosFL_SITUACAO_PROD: TBooleanField;
    unqryProdutosFL_ATIVO_PROD: TBooleanField;
    unqryProdutosFL_MVTEST_PROD: TBooleanField;
    unqryProdutosFL_MVTEST_COMP_PROD: TBooleanField;
    unqryProdutosDT_CADASTRO_PROD: TDateTimeField;
    unqryProdutosDT_ULTALT_PROD: TDateTimeField;
    unqryProdutosUSU_ULTALT_PROD: TIntegerField;
    unqryProdutosESTOQUE_MINIMO_PROD: TFloatField;
    unqryProdutosVENDAATACADO_PROD: TFloatField;
    unqryProdutosVENDAVAREJO_PROD: TFloatField;
    uniDSProdutos: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
