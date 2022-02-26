unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    input_username: TEdit;
    input_password: TEdit;
    Login: TButton;
    titulo: TLabel;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDConnection1: TFDConnection;
    procedure LoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses cadastro, conexao;


procedure TForm1.LoginClick(Sender: TObject);
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT * FROM login WHERE username='''+ input_username.text+''' and password = '''+input_password.text+'''');
  FDQuery1.Open;
  if not FDQuery1.Eof then
  begin
    Form2.Show;
    Form1.Visible := false;
  end
else
  begin
  ShowMessage('Login incorreto!')
  end;

end;

end.
