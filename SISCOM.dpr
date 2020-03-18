program SISCOM;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UDataModule in 'UDataModule.pas' {DM: TDataModule},
  UProdutos in 'UProdutos.pas' {frmProdutos},
  UClientes in 'UClientes.pas' {frmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
