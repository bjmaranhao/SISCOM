unit UProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Uni,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmProdutos = class(TForm)
    pcProdutos: TPageControl;
    tbCadastro: TTabSheet;
    tbConsulta: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnNovo: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    edtPesquisaNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbedtCOD_PRO: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Label10: TLabel;
    dbedtDT_CADASTRO_PROD: TDBEdit;
    Label11: TLabel;
    dbedtDT_ULTALT_PROD: TDBEdit;
    Label12: TLabel;
    dbedtUSU_ULTALT_PROD: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Panel1: TPanel;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaNomeChange(Sender: TObject);

  private
    { Private declarations }
    texto:string;
  public
    { Public declarations }

  protected
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;

  end;

var
  frmProdutos: TfrmProdutos;

implementation

uses
  UDataModule, UClientes;

{$R *.dfm}

procedure TfrmProdutos.btnCancelarClick(Sender: TObject);
begin
    DM.unqryProdutos.Cancel;
    tbConsulta.TabVisible:=True;
    tbCadastro.TabVisible:=False;
end;

procedure TfrmProdutos.btnEditarClick(Sender: TObject);
begin
  tbCadastro.TabVisible := True;
  tbConsulta.TabVisible := False;
  DM.unqryProdutos.Edit;
  dbedtCOD_PRO.SetFocus;
  dbedtDT_ULTALT_PROD.Text :=DateToStr(Date);

end;

procedure TfrmProdutos.btnExcluirClick(Sender: TObject);
begin
      dm.unqryProdutos.Delete;
end;

procedure TfrmProdutos.btnNovoClick(Sender: TObject);
begin
      tbCadastro.TabVisible:=True;
      tbConsulta.TabVisible:=False;
      DM.unqryProdutos.Insert;
      dbedtCOD_PRO.SetFocus;
      dbedtDT_ULTALT_PROD.Text:= DateToStr(Date);
      dbedtDT_CADASTRO_PROD.Text:= DateToStr(Date);

end;

procedure TfrmProdutos.btnSalvarClick(Sender: TObject);
begin
  dm.unqryProdutos.Post;
  tbCadastro.TabVisible := False;
  tbConsulta.TabVisible := True;
  DBGrid1.SetFocus;

end;

procedure TfrmProdutos.CMDialogKey(var Message: TCMDialogKey);
begin
 //     Transforma ENTER em TAB, exceto para tipo Botão
      if (Message.CharCode = VK_RETURN) and not (ActiveControl is TDBGrid)
          then
          Message.CharCode := VK_TAB;
      inherited;
{TODO 1 -oBruno Maranhão -cImpletar: Criar um tratamento para caso seja um TDBGrid, ENTER agir como EDIT}

        end;

procedure TfrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
    btnEditar.Click;
end;

procedure TfrmProdutos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

 if Key =#13 then    // Se Pressionar Enter
      begin
        if edtPesquisaNome.Text > '' then
          begin
          btnEditar.Click;
          end

      end
   else





end;

procedure TfrmProdutos.edtPesquisaNomeChange(Sender: TObject);
begin
    dm.unqryProdutos.Locate('DESCRICAO_PROD',edtPesquisaNome.Text,[loCaseInsensitive,loPartialKey]);


end;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      dm.unqryProdutos.Close;


end;

procedure TfrmProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key =#27) then // Se pressionar Esc
          if pcProdutos.ActivePageIndex = 1 then    //Se for a tab CONSULTA
            frmProdutos.Destroy                     // Fecha o formulaário
          else                                       // Se for a tab CADASTRO
            btnCancelar.Click                        // RollBack e volta para a tab CONSULTA
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
   dm.unqryClientes.Open;
   dm.unqryProdutos.Open;
   tbCadastro.TabVisible:=False;
   edtPesquisaNome.SetFocus

end;



end.
