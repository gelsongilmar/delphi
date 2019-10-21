unit uSubtracaoTest;

interface

uses
   TestFrameWork
  ,uSubtracao;

type

  TSubtracaoTest = class(TTestCase)
    procedure verificarSubtracaoDoisNumerosPositivos();
    procedure verificarSubtracaoNumeroPositivoENumeroNegativo();
  end;

implementation

{ TSomaTest }

procedure TSubtracaoTest.verificarSubtracaoDoisNumerosPositivos;
var
  operacao: TSubtracao;
begin
  operacao := TSubtracao.Create();
  try
    Assert(operacao.executar(3, 4) = -1);
  finally
    operacao.Free();
  end;
end;

procedure TSubtracaoTest.verificarSubtracaoNumeroPositivoENumeroNegativo;
var
  operacao: TSubtracao;
begin
  operacao := TSubtracao.Create();
  try
    Assert(operacao.executar(3, -4) = 7);
  finally
    operacao.Free();
  end;
end;

initialization
  TestFrameWork.RegisterTest(TSubtracaoTest.Suite);

end.

