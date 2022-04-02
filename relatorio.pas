unit relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TForm5 = class(TForm)
    rl_cheque: TRLReport;
    RLBand1: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses imprimir;



end.
