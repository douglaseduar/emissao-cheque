unit imprimir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQueryteste: TFDQuery;
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDQuerytesteid: TFDAutoIncField;
    FDQuerytestevalor: TSingleField;
    FDQuerytesteextenso: TStringField;
    FDQuerytestebeneficiario: TStringField;
    FDQuerytestedia: TStringField;
    FDQuerytestemes: TStringField;
    FDQuerytesteano: TStringField;
    FDQuerytestestatus: TStringField;
    input_numcheque: TEdit;
    Label2: TLabel;
    Button2: TButton;
    FDQuerytabela: TFDQuery;
    DataSource2: TDataSource;
    FDQueryUpdate: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses cadastro, relatorio;

procedure TForm4.Button1Click(Sender: TObject);
begin
 Form2.Show;
 Form4.Visible := false;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
var numeros: String;
numeros := input_numcheque.Text;
var numerosdivididos := StringReplace(numeros, ',', ' or id = ', [rfReplaceALL, rfIgnoreCase]);
FDQueryteste.SQL.Clear;
FDQueryteste.SQL.Add('SELECT * FROM cheques WHERE id = ' + numerosdivididos);
FDQueryteste.Open;
FDQueryUpdate.SQL.Clear;
FDQueryUpdate.SQL.Add('update cheques set status = "Impresso" where id = ' + numerosdivididos);
FDQueryUpdate.ExecSQL;
Form5 := Tform5.Create( Self );
Form5.rl_cheque.Preview();
end;

end.
