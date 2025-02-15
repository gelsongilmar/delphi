program CalculadoraTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  uSomaTest in 'uSomaTest.pas',
  uSoma in '..\uSoma.pas',
  uSubtracaoTest in 'uSubtracaoTest.pas',
  uSubtracao in '..\uSubtracao.pas',
  uMultiplicacaoTest in 'uMultiplicacaoTest.pas',
  uMultiplicacao in '..\uMultiplicacao.pas',
  uDivisaoTest in 'uDivisaoTest.pas',
  uDivisao in '..\uDivisao.pas',
  uExceptions in '..\uExceptions.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

