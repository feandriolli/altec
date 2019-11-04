unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxLookup;



type
  TfrmLogin = class(TForm)
    edtUsuario: TEdit;
    Label5: TLabel;
    edtSenha: TEdit;
    PanelTop: TPanel;
    ImageEmpresa: TImage;
    PanelBotton: TPanel;
    bbtnEntrar: TBitBtn;
    bbtnFechar: TBitBtn;
    Label4: TLabel;
    ///-------------------------------------------------------------------------
    ///-------------------------------------------------------------------------
    procedure bbtnFecharClick(Sender: TObject);
    procedure bbtnEntrarClick(Sender: TObject);
    function get_AcessoPermitido() : Boolean;
  private
     bAcessoPermitido : Boolean;
  public
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}


procedure TfrmLogin.bbtnEntrarClick(Sender: TObject);
begin

   bAcessoPermitido := False;

   if (Trim(edtUsuario.Text) = '') or
      (Trim(edtSenha.Text) = '') then
   begin
     Application.MessageBox(pChar('Favor informar: Usuário e Senha válidos.'), pChar(Application.Title), MB_ICONINFORMATION);
     Exit;
   end;

   bAcessoPermitido := True;

   frmLogin.Close;

end;

procedure TfrmLogin.bbtnFecharClick(Sender: TObject);
begin
   bAcessoPermitido := False;
   Application.Terminate;
end;

function TfrmLogin.get_AcessoPermitido: Boolean;
begin
   Result := bAcessoPermitido;
end;




end.
