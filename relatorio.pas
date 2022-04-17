unit relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

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
    RLImage1: TRLImage;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);

  //  procedure FormCreate(Sender: TObject);
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






procedure TForm5.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if (Form4.cruzadocheck.Checked) then
begin
RLImage1.Visible := true;
end
else
begin
RLImage1.Visible := false;
end;
end;

end.
