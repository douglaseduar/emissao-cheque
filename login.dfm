object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object titulo: TLabel
    Left = 178
    Top = 24
    Width = 81
    Height = 29
    Caption = 'LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object input_username: TEdit
    Left = 136
    Top = 80
    Width = 169
    Height = 21
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 0
    TextHint = 'Usu'#225'rio'
  end
  object input_password: TEdit
    Left = 136
    Top = 120
    Width = 169
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Senha'
  end
  object Login: TButton
    Left = 184
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = LoginClick
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 80
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `login` WHERE 1')
    Left = 40
    Top = 160
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Acer\Documents\libmysql.dll'
    Left = 392
    Top = 104
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=emissao_cheque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 392
    Top = 40
  end
end
