unit uFizzBuzzTest;

interface

uses
   TestFrameWork
  ,uFizzBuzz;

type

  TFizzBuzzTest = class(TTestCase)
    procedure verificarNumeroComum();
    procedure verificarFizz();
    procedure verificarBuzz();
    procedure verificarFizzBuzz();
  end;

implementation

uses
  System.SysUtils;

procedure TFizzBuzzTest.verificarNumeroComum();
var
  classe: IFizzBuzz;
  saidaEsperada: string;
  saidaResultante: string;
begin

  // Cen�rio
  classe := TFizzBuzz.new();
  saidaEsperada := '7';
  saidaResultante := '';

  //A��o
  saidaResultante := classe.escreverSaida(7);

  //Valida��o
  Assert(saidaEsperada = saidaResultante, 'Esperava "' + saidaEsperada + '" mas obteve "' + saidaResultante + '"');

end;

procedure TFizzBuzzTest.verificarFizz();
var
  classe: IFizzBuzz;
  saidaEsperada: string;
  saidaResultante: string;
begin

  // Cen�rio
  classe := TFizzBuzz.new();
  saidaEsperada := 'Fizz';
  saidaResultante := '';

  //A��o
  saidaResultante := classe.escreverSaida(6);

  //Valida��o
  Assert(saidaEsperada = saidaResultante, 'Esperava "' + saidaEsperada + '" mas obteve "' + saidaResultante + '"');

end;

procedure TFizzBuzzTest.verificarBuzz();
var
  classe: IFizzBuzz;
  saidaEsperada: string;
  saidaResultante: string;
begin

  // Cen�rio
  classe := TFizzBuzz.new();
  saidaEsperada := 'Buzz';
  saidaResultante := '';

  //A��o
  saidaResultante := classe.escreverSaida(10);

  //Valida��o
  Assert(saidaEsperada = saidaResultante, 'Esperava "' + saidaEsperada + '" mas obteve "' + saidaResultante + '"');

end;

procedure TFizzBuzzTest.verificarFizzBuzz();
var
  classe: IFizzBuzz;
  saidaEsperada: string;
  saidaResultante: string;
begin

  // Cen�rio
  classe := TFizzBuzz.new();
  saidaEsperada := 'FizzBuzz';
  saidaResultante := '';

  //A��o
  saidaResultante := classe.escreverSaida(30);

  //Valida��o
  Assert(saidaEsperada = saidaResultante, 'Esperava "' + saidaEsperada + '" mas obteve "' + saidaResultante + '"');

end;

initialization
  TestFrameWork.RegisterTest(TFizzBuzzTest.Suite);

end.

