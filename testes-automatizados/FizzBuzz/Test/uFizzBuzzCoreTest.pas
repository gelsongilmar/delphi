unit uFizzBuzzCoreTest;

interface

uses
   TestFrameWork
  ,uFizzBuzzCore;

type

  TFizzBuzzCoreTest = class(TTestCase)
    procedure verificarNumeroMultiploDoDivisor();
    procedure verificarNumeroContendoODivisor();
    procedure verificarNumeroNaoMultiploDoDivisor();
  end;

implementation

uses
  System.SysUtils;

procedure TFizzBuzzCoreTest.verificarNumeroMultiploDoDivisor();
var
  classe: IFizzBuzzCore;
  saidaEsperada: string;
  saidaResultante: string;
begin

  // Cen�rio
  classe := TFizzBuzzCore.new();
  saidaEsperada := 'Teste01';
  saidaResultante := '';

  //A��o
  saidaResultante := classe.getSaida(10, 5, 'Teste', 'Teste01');


  //Valida��o
  Assert(saidaEsperada = saidaResultante, 'Esperava "' + saidaEsperada + '" mas obteve "' + saidaResultante + '"');

end;

procedure TFizzBuzzCoreTest.verificarNumeroContendoODivisor();
var
  classe: IFizzBuzzCore;
  saidaEsperada: string;
  saidaResultante: string;
begin

  // Cen�rio
  classe := TFizzBuzzCore.new();
  saidaEsperada := 'Teste01';
  saidaResultante := '';

  //A��o
  saidaResultante := classe.getSaida(23, 2, 'Teste', 'Teste01');


  //Valida��o
  Assert(saidaEsperada = saidaResultante, 'Esperava "' + saidaEsperada + '" mas obteve "' + saidaResultante + '"');

end;

procedure TFizzBuzzCoreTest.verificarNumeroNaoMultiploDoDivisor();
var
  classe: IFizzBuzzCore;
  saidaEsperada: string;
  saidaResultante: string;
begin

  // Cen�rio
  classe := TFizzBuzzCore.new();
  saidaEsperada := 'Teste';
  saidaResultante := '';

  //A��o
  saidaResultante := classe.getSaida(11, 5, 'Teste', 'Teste01');


  //Valida��o
  Assert(saidaEsperada = saidaResultante, 'Esperava "' + saidaEsperada + '" mas obteve "' + saidaResultante + '"');

end;

initialization
  TestFrameWork.RegisterTest(TFizzBuzzCoreTest.Suite);

end.

