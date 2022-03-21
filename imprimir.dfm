object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'IMPRIMIR CHEQUES'
  ClientHeight = 386
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 40
    Width = 187
    Height = 25
    Align = alCustom
    Caption = 'Imprimir Cheques'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 355
    Width = 238
    Height = 13
    Caption = '*Selecionar cheques pelo id e separar com virgula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 328
    Top = 309
    Width = 62
    Height = 13
    Caption = '*Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 89
    Height = 33
    Caption = 'Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 128
    Width = 521
    Height = 169
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'beneficiario'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dia'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mes'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ano'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'extenso'
        Visible = True
      end>
  end
  object input_numcheque: TEdit
    Left = 56
    Top = 328
    Width = 238
    Height = 21
    TabOrder = 2
    TextHint = 'Ex. 1,2,3,5,10'
  end
  object Button2: TButton
    Left = 380
    Top = 326
    Width = 141
    Height = 42
    Caption = 'Gerar Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object input_qtd: TEdit
    Left = 328
    Top = 328
    Width = 46
    Height = 21
    TabOrder = 4
    Text = '1'
  end
  object DataSource1: TDataSource
    DataSet = FDQueryteste
    Left = 184
    Top = 192
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 80
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
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Acer\Documents\libmysql.dll'
    Left = 392
    Top = 104
  end
  object FDQuerytabela: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cheques')
    Left = 136
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = FDQuerytabela
    Left = 328
    Top = 200
  end
  object FDQueryUpdate: TFDQuery
    Connection = FDConnection1
    Left = 56
    Top = 272
  end
  object FDQueryteste: TFDQuery
    DetailFields = 'ano;beneficiario;dia;extenso;id;mes;status;valor'
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cheques')
    Left = 40
    Top = 168
  end
end
