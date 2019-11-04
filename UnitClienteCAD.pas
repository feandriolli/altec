unit UnitClienteCAD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.Graphics,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, REST.Response.Adapter,
  System.JSON, Vcl.ComCtrls, Vcl.ToolWin, FireDAC.Stan.StorageXML, ACBrBase,
  ACBrMail, FireDAC.Stan.StorageJSON, Vcl.Menus, System.Math, frxClass, frxDBSet,
  frxExportRTF, frxExportXLS, frxExportHTML, frxExportBaseDialog, frxExportPDF,
  frxExportImage, frxExportDOCX, frxExportXLSX;

type
  TfrmClienteCAD = class(TForm)
    PanelPrincipal: TPanel;
    Label1: TLabel;
    DBEdit_Nome: TDBEdit;
    DBEdit_Identidade: TDBEdit;
    Label2: TLabel;
    DBEdit_CPF: TDBEdit;
    Label3: TLabel;
    DBEdit_Telefone: TDBEdit;
    Label4: TLabel;
    DBEdit_EMail: TDBEdit;
    Label5: TLabel;
    DBEdit_Endereco: TDBEdit;
    Label6: TLabel;
    DBEdit_Numero: TDBEdit;
    Label7: TLabel;
    DBEdit_CEP: TDBEdit;
    Label8: TLabel;
    DBEdit_Complemento: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit_Bairro: TDBEdit;
    DBEdit_Cidade: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit_Pais: TDBEdit;
    Label13: TLabel;
    FDMemTable_Cliente: TFDMemTable;
    FDMemTable_ClienteNome: TStringField;
    FDMemTable_ClienteIdentidade: TStringField;
    FDMemTable_ClienteCPF: TStringField;
    FDMemTable_ClienteTelefone: TStringField;
    FDMemTable_ClienteEMail: TStringField;
    FDMemTable_ClienteCEP: TStringField;
    FDMemTable_ClienteEndereco: TStringField;
    FDMemTable_ClienteNumero: TStringField;
    FDMemTable_ClienteComplemento: TStringField;
    FDMemTable_ClienteBairro: TStringField;
    FDMemTable_ClienteCidade: TStringField;
    FDMemTable_ClienteEstado: TStringField;
    FDMemTable_ClientePais: TStringField;
    dsFDMemTable_Cliente: TDataSource;
    bbtnBuscar: TBitBtn;
    FDMemTable_Aux: TFDMemTable;
    FDMemTable_Auxcep: TStringField;
    FDMemTable_Auxlogradouro: TStringField;
    FDMemTable_Auxcomplemento: TStringField;
    FDMemTable_Auxbairro: TStringField;
    FDMemTable_Auxlocalidade: TStringField;
    FDMemTable_Auxuf: TStringField;
    FDMemTable_Auxunidade: TStringField;
    FDMemTable_Auxibge: TStringField;
    FDMemTable_Auxgia: TStringField;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    tbarPadraoCAD: TToolBar;
    tbtnInserirCAD: TToolButton;
    tbtnAlterarCAD: TToolButton;
    tbtnGravarCAD: TToolButton;
    tbtnCancelarCAD: TToolButton;
    tbtnExcluirCAD: TToolButton;
    ToolButton2: TToolButton;
    tbtnAcoesCAD: TToolButton;
    tbtnFecharCAD: TToolButton;
    StatusBar: TStatusBar;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    ACBrMail1: TACBrMail;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    PopupMenu1: TPopupMenu;
    EnviarEMail1: TMenuItem;
    Relatorio1: TMenuItem;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ToolButton1: TToolButton;
    DBComboBox_Estado: TDBComboBox;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxDOCXExport1: TfrxDOCXExport;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxHTMLExport1: TfrxHTMLExport;
    procedure bbtnBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtnInserirCADClick(Sender: TObject);
    procedure tbtnAlterarCADClick(Sender: TObject);
    procedure tbtnGravarCADClick(Sender: TObject);
    procedure tbtnCancelarCADClick(Sender: TObject);
    procedure tbtnFecharCADClick(Sender: TObject);
    procedure FDMemTable_ClienteAfterCancel(DataSet: TDataSet);
    procedure FDMemTable_ClienteAfterDelete(DataSet: TDataSet);
    procedure FDMemTable_ClienteAfterEdit(DataSet: TDataSet);
    procedure FDMemTable_ClienteAfterOpen(DataSet: TDataSet);
    procedure FDMemTable_ClienteAfterPost(DataSet: TDataSet);
    procedure FDMemTable_ClienteAfterRefresh(DataSet: TDataSet);
    procedure FDMemTable_ClienteAfterInsert(DataSet: TDataSet);
    procedure FDMemTable_ClienteAfterScroll(DataSet: TDataSet);
    procedure EnviarEMail1Click(Sender: TObject);
    Function  func_VerifEmail(email: string): boolean;
    Function  CalculaCnpjCpf(Numero : String) : Boolean;
    function  ApenasNumerosStr(pStr:String): String;
    procedure Relatorio1Click(Sender: TObject);
    procedure tbtnExcluirCADClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure Buscar_CEP(sCEP : String);
    procedure AjustaStatusTabela;
    function SalvarArquivo() : Boolean;
    procedure AjustaParametrosDeEnvio;
    function EnviaEmail() : Boolean;
    function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;



  public
    { Public declarations }
  end;

var
  frmClienteCAD: TfrmClienteCAD;

implementation

{$R *.dfm}

uses UnitDtm, unitArquivoINI;

procedure JsonToDataset(aDataset : TDataSet; aJSON : string);
var
  JObj: TJSONArray;
  vConv : TCustomJSONDataSetAdapter;

begin

  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aDataset;
    vConv.UpdateDataSet(JObj);
  finally
    vConv.Free;
    JObj.Free;
  end;

end;

procedure TfrmClienteCAD.AjustaStatusTabela;
var
  sValor : String;

begin

   case FDMemTable_Cliente.State of
     dsInsert       : sValor := 'Inclusão';
     dsEdit         : sValor := 'Edição';
     dsBrowse       : sValor := 'Navegação';
     dsOpening      : sValor := 'Aberto';
     dsInactive     : sValor := 'dsInactive';
     dsSetKey       : sValor := 'dsSetKey';
     dsCalcFields   : sValor := 'dsCalcFields';
     dsFilter       : sValor := 'dsFilter';
     dsNewValue     : sValor := 'dsNewValue';
     dsOldValue     : sValor := 'dsOldValue';
     dsCurValue     : sValor := 'dsCurValue';
     dsBlockRead    : sValor := 'dsBlockRead';
     dsInternalCalc : sValor := 'dsInternalCalc';
   end;

   StatusBar.Panels[1].Text := sValor;

end;

function TfrmClienteCAD.ApenasNumerosStr(pStr: String): String;
Var
I: Integer;
begin
  Result := '';
  For I := 1 To Length(pStr) do
   If pStr[I] In ['1','2','3','4','5','6','7','8','9','0'] Then
     Result := Result + pStr[I];

end;

procedure TfrmClienteCAD.bbtnBuscarClick(Sender: TObject);
begin

   if Trim(DBEdit_CEP.Text) = '' then Exit;

   Buscar_CEP(Trim(DBEdit_CEP.Text));

   if Trim(DBEdit_Endereco.Text) = '' then
   begin
     Application.MessageBox('CEP não encontrado, favor verificar.', pChar(Application.Title), MB_OK + MB_ICONINFORMATION);
     DBEdit_CEP.Clear;
     DBEdit_CEP.SetFocus;
   end else
   begin
     DBEdit_Numero.SetFocus;
   end;

end;


procedure TfrmClienteCAD.Buscar_CEP(sCEP: String);
var
  sURL : String;
  jValue : TJSONValue;
  vMemo : TMemo;

begin

   if Trim(sCEP) = '' then Exit;

   try

     /// Cria os componentes
     /// -----------------------------------------------------------------------
     vMemo := TMemo.Create(nil);
     vMemo.Visible := False;
     vMemo.Parent := frmClienteCAD;
     vMemo.Lines.Clear;
     vMemo.ScrollBars := ssBoth;
     /// -----------------------------------------------------------------------


     /// Aqui consome a API
     /// -----------------------------------------------------------------------
     sURL := 'https://viacep.com.br/ws/'+Trim(sCEP)+'/json/';
     RESTClient1.BaseURL := sURL;
     RESTRequest1.Execute;

     jValue     := RESTResponse1.JSONValue;
     vMemo.Text :=  '['+ jValue.ToString + ']';

     FDMemTable_Aux.Close;
     FDMemTable_Aux.Open;

     JsonToDataset(FDMemTable_Aux, vMemo.Text);
     /// -----------------------------------------------------------------------


     /// Aqui transfere as informações
     /// -----------------------------------------------------------------------
     FDMemTable_ClienteCEP.AsString      := FDMemTable_Aux.FieldByName('cep').AsString;
     FDMemTable_ClienteEndereco.AsString := FDMemTable_Aux.FieldByName('logradouro').AsString;
     FDMemTable_ClienteBairro.AsString   := FDMemTable_Aux.FieldByName('bairro').AsString;
     FDMemTable_ClienteCidade.AsString   := FDMemTable_Aux.FieldByName('localidade').AsString;
     FDMemTable_ClienteEstado.AsString   := FDMemTable_Aux.FieldByName('uf').AsString;
     FDMemTable_ClientePais.AsString     := 'Brasil';
     /// -----------------------------------------------------------------------


   finally
     FreeAndNil(vMemo);
   end;


end;




function TfrmClienteCAD.CalculaCnpjCpf(Numero: String): Boolean;
Var
i,d,b,Digito : Byte;
Soma : Integer;
CNPJ : Boolean;
DgPass,DgCalc : String;
begin
  Result := False;
  Numero := ApenasNumerosStr(Numero);
  // Caso o número não seja 11 (CPF) ou 14 (CNPJ), aborta
  Case Length(Numero) of
    11: CNPJ := False;
    14: CNPJ := True;
  else Exit;
  end;
  // Separa o número do digito
  DgCalc := '';
  DgPass := Copy(Numero,Length(Numero)-1,2);
  Numero := Copy(Numero,1,Length(Numero)-2);
  // Calcula o digito 1 e 2
  For d := 1 to 2 do begin
    B := IIF(D=1,2,3); // BYTE
    SOMA := IIF(D=1,0,STRTOINTDEF(DGCALC,0)*2);
    for i := Length(Numero) downto 1 do begin
      Soma := Soma + (Ord(Numero[I])-Ord('0'))*b;
      Inc(b);
      If (b > 9) And CNPJ Then
        b := 2;
    end;
   Digito := 11 - Soma mod 11;
   If Digito >= 10 then
     Digito := 0;
   DgCalc := DgCalc + Chr(Digito + Ord('0'));
  end;
  Result := DgCalc = DgPass;


end;

function TfrmClienteCAD.EnviaEmail: Boolean;
var
  mBody : TMemo;
  sXML, sJSON, sMailDestino : String;

begin

    if (not FDMemTable_Cliente.Active) or (FDMemTable_Cliente.IsEmpty) then
      Exit;

   sMailDestino := '';

   if not InputQuery('Informe um e-mail válido para envio da ficha do cliente', 'Informe um e-mail válido', sMailDestino) then
     Exit;

   if (Trim(sMailDestino) = '') or (not func_VerifEmail(sMailDestino)) then
   begin
     Application.MessageBox('E-Mail inválido, favor verificar.', pChar(Application.Title), MB_OK + MB_ICONINFORMATION);
     Exit;
   end;

    Application.ProcessMessages;

    Result := True;

    /// Aqui cria e envia o email
    /// --------------------------------------------------------------------------
    mBody := TMemo.Create(nil);
    mBody.Parent := frmClienteCAD;
    mBody.Visible := False;
    mBody.ScrollBars := ssBoth;

    ACBrMail1.Clear;

    AjustaParametrosDeEnvio;

    ACBrMail1.IsHTML := True;

    ACBrMail1.Subject := 'FICHA DO CLIENTE';

    mBody.Lines.Clear;

    mBody.Lines.Add('<p><strong>FICHA DO CLIENTE:</strong>&nbsp;</p>');
    mBody.Lines.Add('<table style="height: 158px; width: 608px;">');
    mBody.Lines.Add('<tbody>');
    mBody.Lines.Add('<tr style="height: 18px;">');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 18px; width: 98px;">Nome</td>');
    mBody.Lines.Add('<td style="width: 492px; height: 18px;" colspan="3">'+FDMemTable_ClienteNome.AsString+'</td>');
    mBody.Lines.Add('</tr>');
    mBody.Lines.Add('<tr style="height: 18px;">');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 18px; width: 98px;">RG</td>');
    mBody.Lines.Add('<td style="width: 234px; height: 18px;">'+FDMemTable_ClienteIdentidade.AsString+'</td>');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 18px; width: 68px;">CPF</td>');
    mBody.Lines.Add('<td style="width: 190px; height: 18px;">'+FDMemTable_ClienteCPF.AsString+'</td>');
    mBody.Lines.Add('</tr>');
    mBody.Lines.Add('<tr style="height: 18px;">');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 18px; width: 98px;">Telefone</td>');
    mBody.Lines.Add('<td style="width: 234px; height: 18px;">'+FDMemTable_ClienteTelefone.AsString+'</td>');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 18px; width: 68px;">E-Mail&nbsp;</td>');
    mBody.Lines.Add('<td style="width: 190px; height: 18px;">'+FDMemTable_ClienteEMail.AsString+'</td>');
    mBody.Lines.Add('</tr>');
    mBody.Lines.Add('<tr style="height: 16px;">');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 16px; width: 98px;">CEP</td>');
    mBody.Lines.Add('<td style="width: 234px; height: 16px;">&nbsp;'+FDMemTable_ClienteCEP.AsString+'</td>');
    mBody.Lines.Add('<td style="width: 258px; height: 16px;" colspan="2">&nbsp;&nbsp;</td>');
    mBody.Lines.Add('</tr>');
    mBody.Lines.Add('<tr style="height: 18px;">');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 18px; width: 102px;">&nbsp;Endere&ccedil;o</td>');
    mBody.Lines.Add('<td style="width: 246px; height: 18px;">&nbsp;'+FDMemTable_ClienteEndereco.AsString+'</td>');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; width: 71px;">N&uacute;mero</td>');
    mBody.Lines.Add('<td style="width: 215px; height: 18px;">'+FDMemTable_ClienteNumero.AsString+'</td>');
    mBody.Lines.Add('</tr>');
    mBody.Lines.Add('<tr style="height: 18px;">');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 18px; width: 102px;">Complemento</td>');
    mBody.Lines.Add('<td style="width: 246px; height: 18px;">&nbsp;'+FDMemTable_ClienteComplemento.AsString+'</td>');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; width: 71px;">Bairro</td>');
    mBody.Lines.Add('<td style="width: 215px; height: 18px;">'+FDMemTable_ClienteBairro.AsString+'</td>');
    mBody.Lines.Add('</tr>');
    mBody.Lines.Add('<tr style="height: 18px;">');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; height: 18px; width: 102px;">&nbsp;Cidade</td>');
    mBody.Lines.Add('<td style="width: 246px; height: 18px;">&nbsp;'+FDMemTable_ClienteCidade.AsString+'</td>');
    mBody.Lines.Add('<td style="background-color: #dcdcdc; width: 71px;">&nbsp;Estado</td>');
    mBody.Lines.Add('<td style="width: 215px; height: 18px;">&nbsp;'+FDMemTable_ClienteEstado.AsString+'</td>');
    mBody.Lines.Add('</tr>');
    mBody.Lines.Add('</tbody>');
    mBody.Lines.Add('</table>');

    ACBrMail1.Body.Assign(mBody.Lines);

    ACBrMail1.AddBCC(sMailDestino);

    sXML  := ExtractFilePath(ParamStr(0)) + 'Cliente.XML';
    sJSON := ExtractFilePath(ParamStr(0)) + 'Cliente.JSON';

    if FileExists(sXML) then
      ACBrMail1.AddAttachment(sXML, 'Cliente.XML');

    if FileExists(sJSON) then
      ACBrMail1.AddAttachment(sJSON, 'Cliente.JSON');

    ACBrMail1.Send(False);

    Application.ProcessMessages;

    Sleep(1000);

    Application.ProcessMessages;

    Application.MessageBox('E-Mail enviado com sucesso', pChar(Application.Title), MB_OK + MB_ICONINFORMATION);

    /// --------------------------------------------------------------------------

end;

procedure TfrmClienteCAD.EnviarEMail1Click(Sender: TObject);
begin
    EnviarEMail1.Enabled := False;
    EnviaEmail;
    EnviarEMail1.Enabled := True;

end;

procedure TfrmClienteCAD.FDMemTable_ClienteAfterCancel(DataSet: TDataSet);
begin
  AjustaStatusTabela;
end;

procedure TfrmClienteCAD.FDMemTable_ClienteAfterDelete(DataSet: TDataSet);
begin
  AjustaStatusTabela;
end;

procedure TfrmClienteCAD.FDMemTable_ClienteAfterEdit(DataSet: TDataSet);
begin
  AjustaStatusTabela;
end;

procedure TfrmClienteCAD.FDMemTable_ClienteAfterInsert(DataSet: TDataSet);
begin
  AjustaStatusTabela;
end;

procedure TfrmClienteCAD.FDMemTable_ClienteAfterOpen(DataSet: TDataSet);
begin
  AjustaStatusTabela;
end;

procedure TfrmClienteCAD.FDMemTable_ClienteAfterPost(DataSet: TDataSet);
begin
  AjustaStatusTabela;
end;

procedure TfrmClienteCAD.FDMemTable_ClienteAfterRefresh(DataSet: TDataSet);
begin
  AjustaStatusTabela;
end;

procedure TfrmClienteCAD.FDMemTable_ClienteAfterScroll(DataSet: TDataSet);
begin
  AjustaStatusTabela;
end;

procedure TfrmClienteCAD.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  case Key of
    VK_F2 : tbtnAlterarCADClick(Sender);
    VK_F3 : tbtnGravarCADClick(Sender);
    VK_F4 : tbtnCancelarCADClick(Sender);
    VK_INSERT : tbtnInserirCADClick(Sender);
    VK_DELETE : tbtnExcluirCADClick(Sender);
    VK_ESCAPE : tbtnFecharCADClick(Sender);
  end;

end;

procedure TfrmClienteCAD.FormShow(Sender: TObject);
begin

   tbarPadraoCAD.Images := Dtm.ImageListMenu;

   PanelPrincipal.Enabled := False;

   set_sCaminhoINI(ExtractFilePath(ParamStr(0)));

end;

function TfrmClienteCAD.func_VerifEmail(email: string): boolean;
var
  i, j, tam_email, simb_arroba, simb_arroba2, qtd_arroba, qtd_pontos,
  qtd_pontos_esq, qtd_pontos_dir, posicao, posicao2, ponto, ponto2: integer;
  vet_email: array [0..49] of string; //50 posições, capacidade do Edit
  msg: string;

  const
  msg1 = 'Caractere(s) inválido(s) no início do e-mail.';
  msg2 = 'Símbolo @ não foi encontrado.';
  msg3 = 'Excesso do símbolo @.';
  msg4 = 'Caractere(s) inválido(s) antes do símbolo @.';
  msg5 = 'Caractere(s) inválido(s) depois do símbolo @.';
  msg6 = 'Agrupamento de caractere(s) inválido(s) a esqueda do @.';
  msg7 = 'Não existe ponto(s) digitado(s).';
  msg8 = 'Ponto encontrado no final do e-mail.';
  msg9 = 'Ausência de caractere(s) após o último ponto.';
  msg10 = 'Excesso de ponto(s) a direita do @.';
  msg11 = 'Ponto(s) disposto(s) de forma errada após o @.';
  msg12 = 'Caractere(s) inválido(s) antes do ponto.';
  msg13 = 'Caractere(s) inválido(s) depois do ponto.';
  vet_valido: array [0..35] of string = ('0','1','2','3','4','5','6','7', '8','9','a','b','c','d','e','f', 'g','h','i','j','k','l','m','n', 'o','p','q','r','s','t','u','v', 'w','x','y','z');


begin
  {Por Jaci Jr em 12-10-2001 (00:28 às 03:57)
  Contatos por jrcordeiro@eletroacre.com.br ou
  jrcordeiro@bol.com.br
  Nesta função (func_VerifEmail) é utilizada a função Copy, exemplo:
  Copy(s,i,t) significa trecho de s que começa em i com tamanho t}

  qtd_pontos:= 0; qtd_pontos_esq:= 0; qtd_pontos_dir:= 0; qtd_arroba:= 0;
  posicao:=0; posicao2:=0; simb_arroba:=0; simb_arroba2:=0; ponto:= 0;
  ponto2:= 0; msg:='';
  Result:= True;

  //Verificando parte inicial do E-mail
  tam_email:= Length(email);
  for i:= 0 to tam_email-1 do
  begin
  vet_email[i]:= Copy(email,i+1,1);
  if vet_email[i] = '@' then
  begin
  Inc(qtd_arroba);
  posicao:= i;
  end;
  end;

  if ((vet_email[0] = '@') or (vet_email[0] = '.') or (vet_email[0] = '-')) then
  begin
  Result:= False;
  msg:= msg1;
  end;

  //Verificando se tem o símbolo @ e quantos tem
  if qtd_arroba < 1 then
  begin
  Result:= False;
  msg:= msg2;
  end
  else if qtd_arroba > 1 then
  begin
  Result:= False;
  msg:= msg3 + ' Encontrado(s): '+IntToStr(qtd_arroba)+'.';
  end
  else
  //Verificando o que vem antes e depois do símbolo @
  begin
  for i:=0 to 35 do
  begin
  if vet_email[posicao-1] <> vet_valido[i] then Inc(simb_arroba)
  else Dec(simb_arroba);
  if vet_email[posicao+1] <> vet_valido[i] then Inc(simb_arroba2)
  else Dec(simb_arroba2);
  end;
  if simb_arroba = 36 then
  begin
  //Antes do arroba há um símbolo desconhecido do vetor válido
  Result:= False;
  msg:= msg4;
  end
  else if simb_arroba2 = 36 then
  begin
  //Depois do arroba há um símbolo desconhecido do vetor válido
  Result:= False;
  msg:= msg5;
  end
  end;

  //Verificando se há pontos e quantos, e Verificando parte final do e-mail
  for j:=0 to tam_email-1 do
  if vet_email[j] = '-' then
  if ((vet_email[j-1] = '.') or (vet_email[j-1] = '-')) then
  begin
  Result:= False;
  msg:= msg6;
  end;
  for i:=0 to tam_email-1 do
  if vet_email[i] = '.' then
  begin
  Inc(qtd_pontos);
  posicao2:= i+1;
  if i > posicao then Inc(qtd_pontos_dir)
  else Inc(qtd_pontos_esq);
  if ((vet_email[i-1] = '.') or (vet_email[i-1] = '-')) then
  begin
  Result:= False;
  msg:= msg6;
  end;
  end;
  if qtd_pontos < 1 then
  begin
  Result:= False;
  msg:= msg7;
  end
  else if vet_email[tam_email-1] = '.' then
  begin
  Result:= False;
  msg:= msg8;
  end
  else if vet_email[tam_email-2] = '.' then
  begin
  Result:= False;
  msg:= msg9;
  end
  else if qtd_pontos_dir > 2 then
  begin
  Result:= False;
  msg:= msg10 + ' Encontrado(s): '+
  IntToStr(qtd_pontos)+#10+'Encontrado(s) a direita do @: '+
  IntToStr(qtd_pontos_dir)+'.';
  end
  else if (not ((((tam_email - posicao2) = 3) and (qtd_pontos_dir = 1)) or
  (((tam_email - posicao2) = 2) and (qtd_pontos_dir = 2)) or
  (((tam_email - posicao2) = 2) and (qtd_pontos_dir = 1)))) then
  begin
  Result:= False;
  msg:= msg11 +#10+ 'Encontrado(s) a esquerda do @: '+
  IntToStr(qtd_pontos_esq) +#10+ 'Encontrado(s) a direita do @: '+
  IntToStr(qtd_pontos_dir)+'.';
  end
  else
  //Verificando o que vem antes e depois do ponto
  begin
  for i:=0 to 35 do
  begin
  if vet_email[posicao2-2] <> vet_valido[i] then Inc(ponto)
  else Dec(ponto);
  if vet_email[posicao2] <> vet_valido[i] then Inc(ponto2)
  else Dec(ponto2);
  end;
  if ponto = 36 then
  begin
  //Antes do ponto há um símbolo desconhecido do vetor válido
  Result:= False;
  msg:= msg12;
  end
  else if ponto2 = 36 then
  begin
  //Depois do ponto há um símbolo desconhecido do vetor válido
  Result:= False;
  msg:= msg13;
  end
  end;

  //Verificação final
  if not Result then
  begin
  msg:= msg +#10+ 'Formato de E-mail não aceitável!!';
  MessageDlg(msg,mtWarning,[mbRetry],0);
  end;

end;

function TfrmClienteCAD.IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;

end;


procedure TfrmClienteCAD.Relatorio1Click(Sender: TObject);
begin

  if not FDMemTable_Cliente.Active then Exit;

  frxReport1.ShowReport();

end;

function TfrmClienteCAD.SalvarArquivo: Boolean;
var
  sXML, sJSON : String;

begin

   Result := False;

   try

     sXML  := ExtractFilePath(ParamStr(0)) + 'Cliente.XML';
     sJSON := ExtractFilePath(ParamStr(0)) + 'Cliente.JSON';

     if FileExists(sXML) then DeleteFile(sXML);
     if FileExists(sJSON) then DeleteFile(sJSON);

     FDMemTable_Cliente.SaveToFile(sXML, sfXML);
     FDMemTable_Cliente.SaveToFile(sJSON, sfJSON);

     Result := True;

   except
     on E:Exception do
     begin
       Result := False;
       ShowMessage('Descuple o transtorno, mas tivemos um problema no evendo "SalvarArquivo".'+#13+'Erro:'+E.Message);
     end;
   end;

end;

procedure TfrmClienteCAD.tbtnAlterarCADClick(Sender: TObject);
begin

   if not FDMemTable_Cliente.Active then Exit;

   try
     FDMemTable_Cliente.Edit;

     PanelPrincipal.Enabled := True;

     DBEdit_Nome.SetFocus;

   except
     on E:Exception do
     begin
       ShowMessage('Descuple o transtorno, mas tivemos um problema no evendo "Alterar".'+#13+'Erro:'+E.Message);
       FDMemTable_Cliente.Cancel;
       PanelPrincipal.Enabled := False;
     end;
   end;

end;

procedure TfrmClienteCAD.tbtnCancelarCADClick(Sender: TObject);
begin

   if not FDMemTable_Cliente.Active then Exit;

   try
     FDMemTable_Cliente.Cancel;
     PanelPrincipal.Enabled := False;

   except
     on E:Exception do
     begin
       ShowMessage('Descuple o transtorno, mas tivemos um problema no evendo "Cancelar".'+#13+'Erro:'+E.Message);
       FDMemTable_Cliente.Cancel;
       PanelPrincipal.Enabled := False;
     end;
   end;

end;

procedure TfrmClienteCAD.tbtnExcluirCADClick(Sender: TObject);
begin

  FDMemTable_Cliente.Close;

  PanelPrincipal.Enabled := False;

  Application.MessageBox('Registro Excluído com sucesso.', pChar(Application.Title), MB_OK + MB_ICONINFORMATION);

end;

procedure TfrmClienteCAD.tbtnFecharCADClick(Sender: TObject);
begin

  Self.Close;

end;

procedure TfrmClienteCAD.tbtnGravarCADClick(Sender: TObject);
begin

   if not FDMemTable_Cliente.Active then Exit;

   if Trim(DBEdit_Nome.Text) = '' then
   begin
     Application.MessageBox('Campo "Nome" não foi informado, favor verificar.', pChar(Application.Title), MB_OK + MB_ICONINFORMATION);
     Exit;
   end;

   if Trim(FDMemTable_ClienteCPF.AsString) <> '' then
   begin
     if not CalculaCnpjCpf(FDMemTable_ClienteCPF.AsString) then
     begin
       Application.MessageBox('Número de CPF inválido, favor verificar.', pChar(Application.Title), MB_OK + MB_ICONINFORMATION);
       Exit;
     end;
   end;

   if Trim(FDMemTable_ClienteEMail.AsString) <> '' then
   begin
     if not func_VerifEmail(FDMemTable_ClienteEMail.AsString) then
     begin
       Application.MessageBox('Número de CPF inválido, favor verificar.', pChar(Application.Title), MB_OK + MB_ICONINFORMATION);
       Exit;
     end;
   end;

   try
     FDMemTable_Cliente.Post;

     PanelPrincipal.Enabled := False;

     SalvarArquivo;

     if Application.MessageBox('Registro salvo com sucesso !'+#13+
                               'Deseja enviar a Ficha do Cliente por E-Mail agora ?', pChar(Application.Title), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
       EnviaEmail;

   except
     on E:Exception do
     begin
       ShowMessage('Descuple o transtorno, mas tivemos um problema no evendo "Gravar".'+#13+'Erro:'+E.Message);
       FDMemTable_Cliente.Cancel;
       PanelPrincipal.Enabled := False;
     end;
   end;

end;

procedure TfrmClienteCAD.tbtnInserirCADClick(Sender: TObject);
begin

   try
     FDMemTable_Cliente.Close;
     FDMemTable_Cliente.Open;

     FDMemTable_Cliente.Insert;

     PanelPrincipal.Enabled := True;

     DBEdit_Nome.SetFocus;

   except
     on E:Exception do
     begin
       ShowMessage('Descuple o transtorno, mas tivemos um problema no evendo "Inserir".'+#13+'Erro:'+E.Message);
       FDMemTable_Cliente.Cancel;
       PanelPrincipal.Enabled := False;
     end;
   end;

end;


procedure TfrmClienteCAD.AjustaParametrosDeEnvio;
begin

    with ACBrMail1 do
    begin
      From           := ResgataInfConfig('EMAIL', 'From');
      FromName       := ResgataInfConfig('EMAIL', 'FromName');
      Host           := ResgataInfConfig('EMAIL', 'Host');
      Username       := ResgataInfConfig('EMAIL', 'Username');
      Password       := ResgataInfConfig('EMAIL', 'Password');
      Port           := ResgataInfConfig('EMAIL', 'Port');
      DefaultCharset := TMailCharset(15);
      IDECharset     := TMailCharset(27);
      SetTLS         := ResgataInfConfig('EMAIL', 'SetTLS') = 'T';
      SetSSL         := ResgataInfConfig('EMAIL', 'SetSSL') = 'T';
    end;

end;

end.
