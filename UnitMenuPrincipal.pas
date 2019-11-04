unit UnitMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TfrmMemu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    ImagemFundo: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMemu: TfrmMemu;

implementation

{$R *.dfm}

uses UnitClienteCAD, UnitLogin;

procedure TfrmMemu.Clientes1Click(Sender: TObject);
begin

   Application.CreateForm(TfrmClienteCAD, frmClienteCAD);
   try
     frmClienteCAD.ShowModal;
   finally
     FreeAndNil(frmClienteCAD);
   end;


end;

procedure TfrmMemu.FormShow(Sender: TObject);
begin

   /// Chama a tela de Login
   ///--------------------------------------------------------------------------
   Application.CreateForm(TfrmLogin, frmLogin);
   frmLogin.ShowModal;
   if not frmLogin.get_AcessoPermitido then Exit;
   frmLogin.Free;
   ///--------------------------------------------------------------------------

end;

procedure TfrmMemu.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
