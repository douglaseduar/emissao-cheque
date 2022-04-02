object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE CHEQUE'
  ClientHeight = 469
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 104
    Top = 8
    Width = 331
    Height = 45
    Caption = 'Cadastrar Cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 343
    Top = 97
    Width = 35
    Height = 16
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 144
    Width = 131
    Height = 16
    Caption = 'Benefici'#225'rio do Cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 208
    Top = 256
    Width = 245
    Height = 16
    Caption = 'Uni'#227'o da Vit'#243'ria,            /                      / '
  end
  object Label5: TLabel
    Left = 343
    Top = 304
    Width = 103
    Height = 23
    Caption = 'BOM PARA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object input_valor: TEdit
    Left = 384
    Top = 96
    Width = 121
    Height = 24
    TabOrder = 0
    TextHint = 'Ex. 1000.00'
  end
  object input_beneficiario: TEdit
    Left = 24
    Top = 166
    Width = 481
    Height = 24
    TabOrder = 1
    TextHint = 'Ex. Jo'#227'o Aparecido'
  end
  object CheckBox1: TCheckBox
    Left = 395
    Top = 216
    Width = 110
    Height = 17
    Caption = 'Usar data atual'
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object input_dia: TEdit
    Left = 313
    Top = 253
    Width = 32
    Height = 24
    TabOrder = 3
    TextHint = 'dia'
  end
  object input_mes: TEdit
    Left = 362
    Top = 253
    Width = 79
    Height = 24
    TabOrder = 4
    TextHint = 'm'#234's'
  end
  object input_ano: TEdit
    Left = 459
    Top = 253
    Width = 47
    Height = 24
    TabOrder = 5
    TextHint = 'ano'
  end
  object Button1: TButton
    Left = 224
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 376
    Top = 424
    Width = 158
    Height = 41
    Caption = 'Imprimir Cheques'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 9
    OnClick = Button2Click
  end
  object input_bompara: TMaskEdit
    Left = 362
    Top = 333
    Width = 61
    Height = 24
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 7
    Text = '  /  /  '
  end
  object input_cruzado: TCheckBox
    Left = 58
    Top = 320
    Width = 135
    Height = 17
    Caption = 'Cheque Cruzado?'
    TabOrder = 6
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `login` WHERE 1')
    Left = 32
    Top = 240
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=emissao_cheque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 40
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Acer\Documents\libmysql.dll'
    Left = 64
    Top = 88
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 376
  end
end
