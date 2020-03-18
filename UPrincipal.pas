unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.Menus, Uni;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuClientes: TMenuItem;
    mnuProdutos: TMenuItem;
    procedure mnuClientesClick(Sender: TObject);
    procedure mnuProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UClientes, UDataModule, UProdutos;

{$R *.dfm}

procedure TfrmPrincipal.mnuClientesClick(Sender: TObject);

    begin

      Application.CreateForm(TfrmClientes,frmClientes);
      frmClientes.Show;
    end;



procedure TfrmPrincipal.mnuProdutosClick(Sender: TObject);
begin
     Application.CreateForm(TfrmProdutos,frmProdutos);
     frmProdutos.Show;
end;

end.
