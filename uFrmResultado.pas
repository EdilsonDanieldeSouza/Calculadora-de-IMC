unit uFrmResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uDadosPessoais;

type
  TFrmResultado = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblAltura: TLabel;
    LblPeso: TLabel;
    LblImc: TLabel;
    LblSexo: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResultado: TFrmResultado;

implementation

{$R *.dfm}

procedure TFrmResultado.FormShow(Sender: TObject);
begin
lblAltura.Caption := FloatToStr(P_Dados_Pessoa.Altura);
  lblPeso.Caption := FloatToStr(P_Dados_Pessoa.Peso);
  lblSexo.Caption := P_Dados_Pessoa.Sexo;
  lblImc.Caption := P_Dados_Pessoa.Imc;
end;

end.
