unit cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    input_valor: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    input_beneficiario: TEdit;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    input_dia: TEdit;
    input_mes: TEdit;
    input_ano: TEdit;
    Button1: TButton;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button2: TButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses imprimir;

function valorPorExtenso(vlr: real): string;
const
  unidade: array[1..19] of string = ('um', 'dois', 'tr�s', 'quatro', 'cinco',
             'seis', 'sete', 'oito', 'nove', 'dez', 'onze',
             'doze', 'treze', 'quatorze', 'quinze', 'dezesseis',
             'dezessete', 'dezoito', 'dezenove');
  centena: array[1..9] of string = ('cento', 'duzentos', 'trezentos',
             'quatrocentos', 'quinhentos', 'seiscentos',
             'setecentos', 'oitocentos', 'novecentos');
  dezena: array[2..9] of string = ('vinte', 'trinta', 'quarenta', 'cinquenta',
             'sessenta', 'setenta', 'oitenta', 'noventa');
  qualificaS: array[0..4] of string = ('', 'mil', 'milh�o', 'bilh�o', 'trilh�o');
  qualificaP: array[0..4] of string = ('', 'mil', 'milh�es', 'bilh�es', 'trilh�es');
var
                        inteiro: Int64;
                          resto: real;
  vlrS, s, saux, vlrP, centavos: string;
     n, unid, dez, cent, tam, i: integer;
                    umReal, tem: boolean;
begin
  if (vlr = 0)
     then begin
            valorPorExtenso := 'zero';
            exit;
          end;

  inteiro := trunc(vlr); // parte inteira do valor
  resto := vlr - inteiro; // parte fracion�ria do valor
  vlrS := inttostr(inteiro);
  if (length(vlrS) > 15)
     then begin
            valorPorExtenso := 'Erro: valor superior a 999 trilh�es.';
            exit;
          end;

  s := '';
  centavos := inttostr(round(resto * 100));

// definindo o extenso da parte inteira do valor
  i := 0;
  umReal := false; tem := false;
  while (vlrS <> '0') do
  begin
    tam := length(vlrS);
// retira do valor a 1a. parte, 2a. parte, por exemplo, para 123456789:
// 1a. parte = 789 (centena)
// 2a. parte = 456 (mil)
// 3a. parte = 123 (milh�es)
    if (tam > 3)
       then begin
              vlrP := copy(vlrS, tam-2, tam);
              vlrS := copy(vlrS, 1, tam-3);
            end
    else begin // �ltima parte do valor
           vlrP := vlrS;
           vlrS := '0';
         end;
    if (vlrP <> '000')
       then begin
              saux := '';
              if (vlrP = '100')
                 then saux := 'cem'
              else begin
                     n := strtoint(vlrP);        // para n = 371, tem-se:
                     cent := n div 100;          // cent = 3 (centena trezentos)
                     dez := (n mod 100) div 10;  // dez  = 7 (dezena setenta)
                     unid := (n mod 100) mod 10; // unid = 1 (unidade um)
                     if (cent <> 0)
                        then saux := centena[cent];
                     if ((dez <> 0) or (unid <> 0))
                        then begin
                               if ((n mod 100) <= 19)
                                  then begin
                                         if (length(saux) <> 0)
                                            then saux := saux + ' e ' + unidade[n mod 100]
                                         else saux := unidade[n mod 100];
                                       end
                               else begin
                                      if (length(saux) <> 0)
                                         then saux := saux + ' e ' + dezena[dez]
                                      else saux := dezena[dez];
                                      if (unid <> 0)
                                         then if (length(saux) <> 0)
                                                 then saux := saux + ' e ' + unidade[unid]
                                              else saux := unidade[unid];
                                    end;
                             end;
                   end;
              if ((vlrP = '1') or (vlrP = '001'))
                 then begin
                        if (i = 0) // 1a. parte do valor (um real)
                           then umReal := true
                        else saux := saux + ' ' + qualificaS[i];
                      end
              else if (i <> 0)
                      then saux := saux + ' ' + qualificaP[i];
              if (length(s) <> 0)
                 then s := saux + ', ' + s
              else s := saux;
            end;
    if (((i = 0) or (i = 1)) and (length(s) <> 0))
       then tem := true; // tem centena ou mil no valor
    i := i + 1; // pr�ximo qualificador: 1- mil, 2- milh�o, 3- bilh�o, ...
  end;

  if (length(s) <> 0)
     then begin
            if (umReal)
               then s := s + ' real'
            else if (tem)
                    then s := s + ' reais'
                 else s := s + ' de reais';
          end;
// definindo o extenso dos centavos do valor
  if (centavos <> '0') // valor com centavos
     then begin
            if (length(s) <> 0) // se n�o � valor somente com centavos
               then s := s + ' e ';
            if (centavos = '1')
               then s := s + 'um centavo'
            else begin
                   n := strtoint(centavos);
                   if (n <= 19)
                      then s := s + unidade[n]
                   else begin                 // para n = 37, tem-se:
                          unid := n mod 10;   // unid = 37 % 10 = 7 (unidade sete)
                          dez := n div 10;    // dez  = 37 / 10 = 3 (dezena trinta)
                          s := s + dezena[dez];
                          if (unid <> 0)
                             then s := s + ' e ' + unidade[unid];
                       end;
                   s := s + ' centavos';
                 end;
          end;
  valorPorExtenso := s;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  resultado: String;
begin
resultado := valorPorExtenso(StrToFloat(input_valor.Text));
FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('insert into cheques (valor, extenso, beneficiario, dia, mes, ano, status) values (:valor, :extenso, :beneficiario, :dia, :mes, :ano, ''Aguardando Impress�o'')');
  FDQuery1.ParamByName('valor').AsFloat := strtofloat(input_valor.Text);
  FDQuery1.ParamByName('extenso').AsString := UpperCase(resultado);
  FDQuery1.ParamByName('beneficiario').AsString := UpperCase(input_beneficiario.Text);
  if(CheckBox1.Checked) then
  begin
  FDQuery1.ParamByName('dia').AsString := formatdatetime('dd', now);
  FDQuery1.ParamByName('mes').AsString := UpperCase(formatdatetime('mmmm', now));
  FDQuery1.ParamByName('ano').AsString := formatdatetime('yyyy', now);
  end
else
  begin
  FDQuery1.ParamByName('dia').AsString := input_dia.Text;
  FDQuery1.ParamByName('mes').AsString := UpperCase(input_mes.Text);
  FDQuery1.ParamByName('ano').AsString := input_ano.Text;
  end;
  FDQuery1.ExecSQL;
  ShowMessage('Cheque Cadastrado com sucesso!');
  input_valor.Clear;
  input_beneficiario.Clear;
  input_dia.Clear;
  input_mes.Clear;
  input_ano.CLear;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
imprimir.Form4.FDQuerytabela.SQL.Clear;
imprimir.Form4.FDQuerytabela.SQL.Add('SELECT * FROM cheques');
imprimir.Form4.FDQuerytabela.Open;
 Form4.Show;
 Form2.Visible := false;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
if(CheckBox1.Checked) then
begin
  input_dia.Enabled := false;
  input_mes.Enabled := false;
  input_ano.Enabled := false;
  input_dia.Clear;
  input_mes.Clear;
  input_ano.Clear;
end;
if(CheckBox1.Checked = false) then
begin
  input_dia.Enabled := true;
  input_mes.Enabled := true;
  input_ano.Enabled := true;
end;
end;



end.


