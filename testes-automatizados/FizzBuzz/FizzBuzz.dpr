program FizzBuzz;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uFizzBuzzCore in 'uFizzBuzzCore.pas',
  uFizzBuzz in 'uFizzBuzz.pas';

var
  aluno: Integer;

begin
  for aluno := 1 to 100 do
    Writeln(TFizzBuzz.new().escreverSaida(aluno));

  Readln(aluno);
end.
