object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'SisCom - Sistema Comercial'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Top = 8
    object mnuCadastro: TMenuItem
      Caption = 'Cadastro'
      object mnuClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = mnuClientesClick
      end
      object mnuProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = mnuProdutosClick
      end
    end
  end
end
