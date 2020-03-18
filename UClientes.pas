unit UClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Uni,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmClientes = class(TForm)
    pcClientes: TPageControl;
    tbCadastro: TTabSheet;
    dbedtCLI_CODIGO: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    dbedtDT_CADASTRO_CLI: TDBEdit;
    dbedtDT_ULT_ALT: TDBEdit;
    dbedtCLI_TIPO: TDBEdit;
    dbedtNOME_CLI: TDBEdit;
    dbedtAPELIDO_CLI: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblCodigo: TLabel;
    Nome: TLabel;
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
    DBLookupComboBox1: TDBLookupComboBox;
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
  frmClientes: TfrmClientes;

implementation

uses
  UDataModule;

{$R *.dfm}

procedure TfrmClientes.btnCancelarClick(Sender: TObject);
begin
    dm.unqryClientes.Cancel;
    tbConsulta.TabVisible:=True;
    tbCadastro.TabVisible:=False;
end;

procedure TfrmClientes.btnEditarClick(Sender: TObject);
begin
  tbCadastro.TabVisible := True;
  tbConsulta.TabVisible := False;
  dm.unqryClientes.Edit;
  dbedtCLI_CODIGO.SetFocus;
  dbedtDT_ULT_ALT.Text:= DateToStr(Date);
end;

procedure TfrmClientes.btnExcluirClick(Sender: TObject);
begin
      dm.unqryClientes.Delete;
end;

procedure TfrmClientes.btnNovoClick(Sender: TObject);
begin
      tbCadastro.TabVisible:=True;
      tbConsulta.TabVisible:=False;
      DM.unqryClientes.Insert;
      dbedtCLI_CODIGO.SetFocus;
      dbedtDT_CADASTRO_CLI.Text:= DateToStr(Date);
      dbedtDT_ULT_ALT.Text:= DateToStr(Date);

end;

procedure TfrmClientes.btnSalvarClick(Sender: TObject);
begin
  dm.unqryClientes.Post;
  tbCadastro.TabVisible := False;
  tbConsulta.TabVisible := True;
  DBGrid1.SetFocus;

end;

procedure TfrmClientes.CMDialogKey(var Message: TCMDialogKey);
begin
 //     Transforma ENTER em TAB, exceto para tipo Botão
      if (Message.CharCode = VK_RETURN) and not (ActiveControl is TDBGrid)
          then
          Message.CharCode := VK_TAB;
      inherited;
{TODO 1 -oBruno Maranhão -cImpletar: Criar um tratamento para caso seja um TDBGrid, ENTER agir como EDIT}
      
        end;             

procedure TfrmClientes.DBGrid1DblClick(Sender: TObject);
begin
    btnEditar.Click;
end;

procedure TfrmClientes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmClientes.edtPesquisaNomeChange(Sender: TObject);
begin
    dm.unqryClientes.Locate('NOME_CLI',edtPesquisaNome.Text,[loCaseInsensitive,loPartialKey]);

    
end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      dm.unqryClientes.Close;


end;

procedure TfrmClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key =#27) then // Se pressionar Esc
          if pcClientes.ActivePageIndex = 1 then    //Se for a tab CONSULTA
            frmClientes.Destroy                     // Fecha o formulaário
          else                                       // Se for a tab CADASTRO
            btnCancelar.Click                        // RollBack e volta para a tab CONSULTA
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
   dm.unqryClientes.Open;
   tbCadastro.TabVisible:=False;
   edtPesquisaNome.SetFocus

end;



end.
