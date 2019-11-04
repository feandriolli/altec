program SistemaX;

uses
  Vcl.Forms,
  UnitMenuPrincipal in 'UnitMenuPrincipal.pas' {frmMemu},
  UnitClienteCAD in 'UnitClienteCAD.pas' {frmClienteCAD},
  UnitDtm in 'UnitDtm.pas' {Dtm: TDataModule},
  unitArquivoINI in 'unitArquivoINI.pas',
  UnitLogin in 'UnitLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMemu, frmMemu);
  Application.CreateForm(TDtm, Dtm);
  Application.Run;
end.
