unit uSoma;

interface

type

  TSoma = class
    function executar(valor1, valor2: Double): Double;
  end;

implementation

{ TSoma }

function TSoma.executar(valor1, valor2: Double): Double;
begin
  Result := valor1 + valor2;
end;

end.
