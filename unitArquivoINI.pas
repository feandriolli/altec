unit unitArquivoINI;

interface

uses
  MidasLib, SysUtils, Forms, Classes, IniFiles, Dialogs;

  function get_sCaminhoINI() : String;
  procedure set_sCaminhoINI(sValor : String);
  function ExisteArquivoINI(): Boolean;
  function ResgataInfConfig(sTag, sCampo: String): String;
  procedure GravaInfConfig(sTag, sCampo, sValor: String);

Const
    sNomeArquivoINI : String = 'config.ini';

Var
  ArquivoINI : TIniFile;
  sCaminhoINI : String = '';


implementation


procedure set_sCaminhoINI(sValor : String);
begin
   sCaminhoINI := sValor;
end;

function ExisteArquivoINI(): Boolean;
begin
  Result := FileExists(get_sCaminhoINI);
end;

function ResgataInfConfig(sTag, sCampo: String): String;
begin

    Result := '';

    try

      if (not ExisteArquivoINI) or (Trim(sTag) = '') or (Trim(sCampo) = '') then
      begin
        ShowMessage('Falha na fun��o: ResgataInfConfig.'+#13+#13+
                    'Poss�veis erros: '+#13+#13+
                    ' - Arquivo: '+get_sCaminhoINI+' n�o existe no local devido (pasta do EXE)'+#13+
                    ' - Tag ou Campo n�o informado para a fun��o');
        Exit;
      end;

      ArquivoINI := TIniFile.Create(get_sCaminhoINI);
      Result     := ArquivoINI.ReadString(sTag, sCampo, '');
      ArquivoINI.Free;
    except
      on E:Exception do
        ShowMessage('Falha na fun��o: ResgataInfConfig ' +E.Message);
    end;

end;


procedure GravaInfConfig(sTag, sCampo, sValor: String);
begin

    try

      if not ExisteArquivoINI() or (Trim(sTag) = '') or (Trim(sCampo) = '') then
        Exit;

      ArquivoINI := TIniFile.Create(get_sCaminhoINI);
      ArquivoINI.WriteString(sTag, sCampo, sValor);
      ArquivoINI.Free;

    except
      on E:Exception do
        ShowMessage('Falha na fun��o: GravaInfConfig ' +E.Message);
    end;

end;


function get_sCaminhoINI() : String;
begin

    Result := sCaminhoINI + sNomeArquivoINI;

end;



end.

