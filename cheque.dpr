program cheque;

uses
  Vcl.Forms,
  login in 'login.pas' {Form1},
  cadastro in 'cadastro.pas' {Form2},
  conexao in 'conexao.pas' {Form3},
  imprimir in 'imprimir.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
