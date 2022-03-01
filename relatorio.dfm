object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 608
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rl_cheque: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = Form4.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 155
      object RLDBText1: TRLDBText
        Left = 604
        Top = 16
        Width = 30
        Height = 16
        DataField = 'valor'
        DataSource = Form4.DataSource1
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 192
        Top = 40
        Width = 50
        Height = 16
        DataField = 'extenso'
        DataSource = Form4.DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 192
        Top = 80
        Width = 69
        Height = 16
        DataField = 'beneficiario'
        DataSource = Form4.DataSource1
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 528
        Top = 104
        Width = 21
        Height = 16
        DataField = 'dia'
        DataSource = Form4.DataSource1
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 604
        Top = 104
        Width = 29
        Height = 16
        DataField = 'mes'
        DataSource = Form4.DataSource1
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 680
        Top = 104
        Width = 25
        Height = 16
        DataField = 'ano'
        DataSource = Form4.DataSource1
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 16
        Top = 40
        Width = 69
        Height = 16
        DataField = 'beneficiario'
        DataSource = Form4.DataSource1
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 16
        Top = 80
        Width = 30
        Height = 16
        DataField = 'valor'
        DataSource = Form4.DataSource1
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 416
        Top = 104
        Width = 96
        Height = 16
        Caption = 'Uni'#227'o da Vit'#243'ria'
      end
      object RLLabel2: TRLLabel
        Left = 578
        Top = 16
        Width = 20
        Height = 16
        Caption = 'R$'
      end
    end
  end
end
