program Calculadora;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmRequesitos in 'uFrmRequesitos.pas' {FrmRequesitos},
  uFrmResultado in 'uFrmResultado.pas' {FrmResultado},
  uDadosPessoais in 'uDadosPessoais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmRequesitos, FrmRequesitos);
  Application.CreateForm(TFrmResultado, FrmResultado);
  Application.Run;
end.
