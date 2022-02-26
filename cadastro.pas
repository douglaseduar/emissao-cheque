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
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if(CheckBox1.Checked) then
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('insert into cheques (valor, extenso, beneficiario, dia, mes, ano, status) values (:valor, ''teste'', :beneficiario, :dia, :mes, :ano, ''Aguardando Impressão'')');
  FDQuery1.ParamByName('valor').AsFloat := strtofloat(input_valor.Text);
  FDQuery1.ParamByName('beneficiario').AsString := input_beneficiario.Text;
  FDQuery1.ParamByName('dia').AsString := formatdatetime('dd', now);
  FDQuery1.ParamByName('mes').AsString :=AnsiUpperCase(formatdatetime('mmmm', now));
  FDQuery1.ParamByName('ano').AsString := formatdatetime('yyyy', now);
  FDQuery1.ExecSQL;
  ShowMessage('Cheque Cadastrado com sucesso!');
  input_valor.Clear;
  input_beneficiario.Clear;
  input_dia.Clear;
  input_mes.Clear;
  input_ano.CLear;
end
else
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('insert into cheques (valor, extenso, beneficiario, dia, mes, ano, status) values (:valor, ''teste'', :beneficiario, :dia, :mes, :ano, ''Aguardando Impressão'')');
  FDQuery1.ParamByName('valor').AsFloat := strtofloat(input_valor.Text);
  FDQuery1.ParamByName('beneficiario').AsString := input_beneficiario.Text;
  FDQuery1.ParamByName('dia').AsString := input_dia.Text;
  FDQuery1.ParamByName('mes').AsString := input_mes.Text;
  FDQuery1.ParamByName('ano').AsString := input_ano.Text;
  FDQuery1.ExecSQL;
  ShowMessage('Cheque Cadastrado com sucesso!');
end
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
