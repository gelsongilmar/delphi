unit uMultiplicacao;

interface

type

  TMultiplicacao = class
    function executar(valor1, valor2: Double): Double;
  end;

implementation

{ TSoma }

function TMultiplicacao.executar(valor1, valor2: Double): Double;
begin
  Result := valor1 * valor2;
end;

end.

