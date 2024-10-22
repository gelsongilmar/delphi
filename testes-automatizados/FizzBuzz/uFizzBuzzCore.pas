unit uFizzBuzzCore;

interface

type

  IFizzBuzzCore = interface
    function getSaida(numero, divisor: Integer; saidaAtual, saidaNova: string) : string;
  end;

  TFizzBuzzCore = class(TInterfacedObject, IFizzBuzzCore)
  private
    function getSaida(numero, divisor: Integer; saidaAtual, saidaNova: string) : string;
  public
    class function new(): IFizzBuzzCore;
  end;


implementation

uses
  System.SysUtils;

class function TFizzBuzzCore.new(): IFizzBuzzCore;
begin
  Result := Self.Create();
end;

function TFizzBuzzCore.getSaida(numero, divisor: Integer; saidaAtual, saidaNova: string): string;
begin
  Result := saidaAtual;
  if (numero mod divisor = 0) Or (POS(IntToStr(divisor), IntToStr(numero)) > 0) then
    Result := saidaNova;
end;

end.
