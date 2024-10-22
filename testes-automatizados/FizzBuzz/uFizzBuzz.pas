unit uFizzBuzz;

interface

type
  IFizzBuzz = interface
    function escreverSaida(aluno: Integer): string;
    function getFizz(aluno: Integer; saida: string): string;
    function getBuzz(aluno: Integer; saida: string): string;
    function getFizzBuzz(aluno: Integer; saida: string): string;
  end;

  TFizzBuzz = class(TInterfacedObject, IFizzBuzz)
  private
    function escreverSaida(aluno: Integer): string;
    function getFizz(aluno: Integer; saida: string): string;
    function getBuzz(aluno: Integer; saida: string): string;
    function getFizzBuzz(aluno: Integer; saida: string): string;
  public
    class function new(): IFizzBuzz;
  end;

implementation

uses
   System.SysUtils
  ,uFizzBuzzCore;

class function TFizzBuzz.new(): IFizzBuzz;
begin
  Result := Self.Create();
end;

function TFizzBuzz.escreverSaida(aluno: Integer): string;
begin
  Result := IntToStr(aluno);
  Result := Self.getFizz(aluno, Result);
  Result := Self.getBuzz(aluno, Result);
  Result := Self.getFizzBuzz(aluno, Result);
end;

function TFizzBuzz.getFizz(aluno: Integer; saida: string): string;
begin
  Result := TFizzBuzzCore.new().getSaida(aluno, 3, saida, 'Fizz');
end;

function TFizzBuzz.getBuzz(aluno: Integer; saida: string): string;
begin
  Result := TFizzBuzzCore.new().getSaida(aluno, 5, saida, 'Buzz');
end;

function TFizzBuzz.getFizzBuzz(aluno: Integer; saida: string): string;
begin
  Result := TFizzBuzzCore.new().getSaida(aluno, 15, saida, 'FizzBuzz');
end;

end.
