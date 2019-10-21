unit uSomaTest;

interface

uses
   TestFrameWork
  ,uSoma;

type

  TSomaTest = class(TTestCase)
    procedure verificarSomaDoisNumerosPositivos();
    procedure verificarSomaNumeroPositivoENumeroNegativo();
  end;

implementation

{ TSomaTest }

procedure TSomaTest.verificarSomaDoisNumerosPositivos;
var
  operacao: TSoma;
begin
  operacao := TSoma.Create(); // Setup
  try
    Assert(operacao.executar(3, 4) = 7); // Assert
  finally
    operacao.Free(); // Cleanup
  end;
end;

procedure TSomaTest.verificarSomaNumeroPositivoENumeroNegativo;
var
  operacao: TSoma;
begin
  operacao := TSoma.Create();
  try
    Assert(operacao.executar(3, -4) = -1);
  finally
    operacao.Free();
  end;
end;

initialization
  TestFrameWork.RegisterTest(TSomaTest.Suite);

end.

