object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 377
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
    Height = 249
    Align = alBottom
    DataSource = DataSource1
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
  object FDQueryteste: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM `cheques`')
    Left = 24
    Top = 128
    object FDQuerytesteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuerytestevalor: TSingleField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
    end
    object FDQuerytesteextenso: TStringField
      FieldName = 'extenso'
      Origin = 'extenso'
      Required = True
      Size = 200
    end
    object FDQuerytestebeneficiario: TStringField
      FieldName = 'beneficiario'
      Origin = 'beneficiario'
      Required = True
      Size = 200
    end
    object FDQuerytestedia: TStringField
      FieldName = 'dia'
      Origin = 'dia'
      Required = True
    end
    object FDQuerytestemes: TStringField
      FieldName = 'mes'
      Origin = 'mes'
      Required = True
    end
    object FDQuerytesteano: TStringField
      FieldName = 'ano'
      Origin = 'ano'
      Required = True
    end
    object FDQuerytestestatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 50
    end
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
end