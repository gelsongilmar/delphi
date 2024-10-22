unit uMultiplicacaoTest;

interface

uses
   TestFrameWork
  ,uMultiplicacao;

type

  TMultiplicacaoTest = class(TTestCase)
    procedure verificarMultiplicacaoDoisNumerosPositivos();
    procedure verificarMultiplicacaoNumeroPositivoENumeroNegativo();
  end;

implementation

{ TSomaTest }

procedure TMultiplicacaoTest.verificarMultiplicacaoDoisNumerosPositivos;
var
  operacao: TMultiplicacao;
begin
  operacao := TMultiplicacao.Create();
  try
    Assert(operacao.executar(3, 4) = 12);
  finally
    operacao.Free();
  end;
end;

procedure TMultiplicacaoTest.verificarMultiplicacaoNumeroPositivoENumeroNegativo;
var
  operacao: TMultiplicacao;
begin
  operacao := TMultiplicacao.Create();
  try
    Assert(operacao.executar(3, -4) = -12);
  finally
    operacao.Free();
  end;
end;

initialization
  TestFrameWork.RegisterTest(TMultiplicacaoTest.Suite);

end.

