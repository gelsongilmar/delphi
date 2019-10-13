unit uSubtracao;

interface

type

  TSubtracao = class
    function executar(valor1, valor2: Double): Double;
  end;

implementation

{ TSoma }

function TSubtracao.executar(valor1, valor2: Double): Double;
begin
  Result := valor1 - valor2;
end;

end.

