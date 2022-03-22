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
      Top = 115
      Width = 718
      Height = 297
      object RLDBText2: TRLDBText
        Left = 192
        Top = 40
        Width = 513
        Height = 34
        AutoSize = False
        DataField = 'extenso'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 192
        Top = 88
        Width = 65
        Height = 15
        DataField = 'beneficiario'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 528
        Top = 112
        Width = 19
        Height = 15
        DataField = 'dia'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 604
        Top = 112
        Width = 24
        Height = 15
        DataField = 'mes'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 680
        Top = 112
        Width = 23
        Height = 15
        DataField = 'ano'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 3
        Top = 59
        Width = 65
        Height = 15
        AutoSize = False
        DataField = 'beneficiario'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 3
        Top = 112
        Width = 30
        Height = 15
        DataField = 'valor'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 392
        Top = 112
        Width = 123
        Height = 15
        Caption = 'UNI'#195'O DA VIT'#211'RIA,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 550
        Top = 6
        Width = 30
        Height = 15
        DataField = 'valor'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 176
        Width = 19
        Height = 15
        DataField = 'dia'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 28
        Top = 176
        Width = 40
        Height = 15
        AutoSize = False
        DataField = 'mes'
        DataSource = Form4.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 77
      BandType = btHeader
      Transparent = False
    end
  end
end
