unit uDivisaoTest;

interface

uses
   TestFrameWork
  ,uDivisao;

type

  TDivisaoTest = class(TTestCase)
    procedure verificarDivisaoDoisNumerosPositivos();
    procedure verificarDivisaoNumeroPositivoENumeroNegativo();
    procedure verificarDivisaoNumeroPositivoEZero();
  end;

implementation

uses
  System.SysUtils, uExceptions;

{ TSomaTest }

procedure TDivisaoTest.verificarDivisaoDoisNumerosPositivos;
var
  operacao: TDivisao;
begin
  operacao := TDivisao.Create();
  try
    Assert(operacao.executar(12, 4) = 3);
  finally
    operacao.Free();
  end;
end;

procedure TDivisaoTest.verificarDivisaoNumeroPositivoENumeroNegativo;
var
  operacao: TDivisao;
begin
  operacao := TDivisao.Create();
  try
    Assert(operacao.executar(12, -3) = -4);
  finally
    operacao.Free();
  end;
end;

procedure TDivisaoTest.verificarDivisaoNumeroPositivoEZero;
var
  operacao: TDivisao;
  resultado: Double;
begin
  operacao := TDivisao.Create();
  try
    try
      resultado := operacao.executar(4, 0);
    except
      on E: Exception do
      begin
        Assert(E.inheritsFrom(TExceptionDivisaoPorZero));
      end;
    end;
  finally
    operacao.Free();
  end;
end;

initialization
  TestFrameWork.RegisterTest(TDivisaoTest.Suite);

end.
