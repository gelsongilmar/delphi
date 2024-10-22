unit uDivisao;

interface

type

  TDivisao = class
    function executar(valor1, valor2: Double): Double;
  end;

implementation

uses
  uExceptions;

{ TSoma }

function TDivisao.executar(valor1, valor2: Double): Double;
begin

  if valor2 = 0 then
    raise TExceptionDivisaoPorZero.Create('Valor 2 deve ser diferente de zero!');

  Result := valor1 / valor2;
end;

end.

