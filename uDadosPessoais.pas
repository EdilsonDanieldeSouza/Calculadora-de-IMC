unit uDadosPessoais;

interface

uses
  System.SysUtils;

type
  R_DadosPessoa = record
    Altura : Double;
    Peso : Double;
    Sexo : String;
    Imc : String;

end;
    Function CalcularIMC(p_Peso, p_Altura: Double; p_Sexo: String):String;
var
  P_Dados_Pessoa : R_DadosPessoa;
implementation
  Function CalcularIMC (p_Peso, p_Altura : Double; p_Sexo : String) : String;
var
  l_IMC :Double;
  l_StrIMC :String;

begin
  if p_Sexo ='' then
    raise Exception.Create('OBRIGÁTORIO INFORMAR O SEXO');

  Try
      l_IMC  := p_Peso/(p_Altura*p_Altura);
      if p_sexo = 'FEMININO' then
        begin
          if (l_IMC < 19.1) then
            l_StrIMC := 'abaixo do peso'
          else
            if (l_IMC >=19.1) and (l_IMC <= 25.8) then
              l_StrIMC := 'No peso normal'
            else
              if (l_IMC > 25.8) and (l_IMC <= 27.3) then
             l_StrIMC := 'Marginalmente acima do peso'
          else
            if (l_IMC > 27.3) and (l_IMC <= 32.3) then
               l_StrIMC := 'Acima do peso ideal'
            else
              if (l_IMC > 32.3) then
                 l_StrIMC := 'Obeso';
        end
        else
        begin
          if p_Sexo = 'MASCULINO' then
            begin
              if (l_IMC < 19.1) then
                 l_StrIMC := 'Abaixo do peso'
              else
                if (l_IMC >= 20.7) and (l_IMC <= 26.4) then
                   l_StrIMC := 'No peso normal'
                else
                  if (l_IMC > 26.4) and (l_IMC <= 27.8) then
                     l_StrIMC := 'Marginalmente acima do peso'
                  else
                    if (l_IMC > 27.8) and (l_IMC <= 31.1) then
                       l_StrIMC := 'Acima do peso ideal'
                    else
                      if (l_IMC > 31.1) then
                         l_StrIMC := 'Obeso';
              end;
            end;
              Result := l_StrIMC;
  Except
     raise Exception.Create('Erro ao efetuar o calculo do IMC');
  End;
end;

end.
