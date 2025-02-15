unit uFrmCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCalculadora = class(TForm)
    edtValor1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtValor2: TEdit;
    btnSoma: TButton;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    edtResultado: TEdit;
    Label3: TLabel;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

uses
  uSoma, uSubtracao, uMultiplicacao, uDivisao;

{$R *.dfm}

procedure TFrmCalculadora.btnDivisaoClick(Sender: TObject);
var
  operacao: TDivisao;
begin
  operacao := TDivisao.Create();
  try
    edtResultado.Text := FloatToStr(operacao.executar(StrToFLoat(edtValor1.Text), StrToFLoat(edtValor2.Text)));
  finally
    operacao.Free();
  end;
end;

procedure TFrmCalculadora.btnMultiplicacaoClick(Sender: TObject);
var
  operacao: TMultiplicacao;
begin
  operacao := TMultiplicacao.Create();
  try
    edtResultado.Text := FloatToStr(operacao.executar(StrToFLoat(edtValor1.Text), StrToFLoat(edtValor2.Text)));
  finally
    operacao.Free();
  end;
end;

procedure TFrmCalculadora.btnSomaClick(Sender: TObject);
var
  operacao: TSoma;
begin
  operacao := TSoma.Create();
  try
    edtResultado.Text := FloatToStr(operacao.executar(StrToFLoat(edtValor1.Text), StrToFLoat(edtValor2.Text)));
  finally
    operacao.Free();
  end;
end;

procedure TFrmCalculadora.btnSubtracaoClick(Sender: TObject);
var
  operacao: TSubtracao;
begin
  operacao := TSubtracao.Create();
  try
    edtResultado.Text := FloatToStr(operacao.executar(StrToFLoat(edtValor1.Text), StrToFLoat(edtValor2.Text)));
  finally
    operacao.Free();
  end;
end;

end.
