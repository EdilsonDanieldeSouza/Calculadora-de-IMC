unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFrmRequesitos, uFrmResultado, uDadosPessoais;

type
  TFrmPrincipal = class(TForm)
    PnlCalculadoraImc: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtAltura: TEdit;
    EdtPeso: TEdit;
    BtnResultado: TButton;
    BtnRequesitos: TButton;
    CbSexo: TComboBox;
    procedure BtnRequesitosClick(Sender: TObject);
    procedure BtnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnRequesitosClick(Sender: TObject);
begin
   FrmRequesitos.ShowModal;
end;

procedure TFrmPrincipal.BtnResultadoClick(Sender: TObject);
begin
  Try
   P_Dados_Pessoa.Altura := StrToFloat(EdtAltura.Text);
    P_Dados_Pessoa.Peso := StrToFloat(EdtPeso.Text);
    P_Dados_Pessoa.Sexo := CbSexo.Text;
    P_Dados_Pessoa.Imc := CalcularIMC(P_Dados_Pessoa.Peso,
                                         P_Dados_Pessoa.Altura,
                                         P_Dados_Pessoa.Sexo);
    FrmResultado.ShowModal;
  Except
     ShowMessage('Dados inválidos');
  End;
end;

end.
