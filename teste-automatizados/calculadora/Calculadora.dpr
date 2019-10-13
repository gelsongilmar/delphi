program Calculadora;

uses
  Vcl.Forms,
  uFrmCalculadora in 'uFrmCalculadora.pas' {FrmCalculadora},
  uSoma in 'uSoma.pas',
  uSubtracao in 'uSubtracao.pas',
  uMultiplicacao in 'uMultiplicacao.pas',
  uDivisao in 'uDivisao.pas',
  uExceptions in 'uExceptions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.Run;
end.
