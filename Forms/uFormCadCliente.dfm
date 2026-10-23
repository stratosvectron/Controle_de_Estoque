inherited uFormCadastroP1: TuFormCadastroP1
  Caption = 'uFormCadastroP1'
  ClientHeight = 573
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 612
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 72
    Width = 61
    Height = 16
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 75
    Top = 72
    Width = 84
    Height = 15
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 487
    Top = 72
    Width = 93
    Height = 15
    Caption = 'NOME_FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 120
    Width = 53
    Height = 15
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 176
    Width = 41
    Height = 15
    Caption = 'TIPO_FJ'
  end
  object Label6: TLabel [5]
    Left = 151
    Top = 120
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 487
    Top = 115
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 104
    Top = 176
    Width = 22
    Height = 15
    Caption = 'SITE'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 487
    Top = 176
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 8
    Top = 221
    Width = 88
    Height = 15
    Caption = 'COMPLEMENTO'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 414
    Top = 221
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 487
    Top = 221
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 8
    Top = 269
    Width = 9
    Height = 15
    Caption = 'IE'
    FocusControl = DBEdit13
  end
  object Label14: TLabel [13]
    Left = 487
    Top = 266
    Width = 14
    Height = 15
    Caption = 'IM'
    FocusControl = DBEdit14
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  object DBEdit1: TDBEdit [15]
    Left = 8
    Top = 88
    Width = 61
    Height = 23
    DataField = 'ID_CLIENTE'
    DataSource = dscadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [16]
    Left = 75
    Top = 88
    Width = 406
    Height = 23
    DataField = 'RAZAO_SOCIAL'
    DataSource = dscadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [17]
    Left = 487
    Top = 88
    Width = 500
    Height = 23
    DataField = 'NOME_FANTASIA'
    DataSource = dscadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [18]
    Left = 8
    Top = 136
    Width = 137
    Height = 23
    DataField = 'CPF_CNPJ'
    DataSource = dscadastro
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [19]
    Left = 151
    Top = 136
    Width = 330
    Height = 23
    DataField = 'NOME'
    DataSource = dscadastro
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [20]
    Left = 487
    Top = 136
    Width = 500
    Height = 23
    DataField = 'EMAIL'
    DataSource = dscadastro
    TabOrder = 6
  end
  object DBEdit8: TDBEdit [21]
    Left = 104
    Top = 192
    Width = 377
    Height = 23
    DataField = 'SITE'
    DataSource = dscadastro
    TabOrder = 7
  end
  object DBEdit9: TDBEdit [22]
    Left = 487
    Top = 192
    Width = 500
    Height = 23
    DataField = 'ENDERECO'
    DataSource = dscadastro
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [23]
    Left = 8
    Top = 237
    Width = 400
    Height = 23
    DataField = 'COMPLEMENTO'
    DataSource = dscadastro
    TabOrder = 9
  end
  object DBEdit11: TDBEdit [24]
    Left = 414
    Top = 237
    Width = 67
    Height = 23
    DataField = 'NUMERO'
    DataSource = dscadastro
    TabOrder = 10
  end
  object DBEdit12: TDBEdit [25]
    Left = 487
    Top = 237
    Width = 500
    Height = 23
    DataField = 'BAIRRO'
    DataSource = dscadastro
    TabOrder = 11
  end
  object DBEdit13: TDBEdit [26]
    Left = 8
    Top = 282
    Width = 454
    Height = 23
    DataField = 'IE'
    DataSource = dscadastro
    TabOrder = 12
  end
  object DBEdit14: TDBEdit [27]
    Left = 487
    Top = 282
    Width = 454
    Height = 23
    DataField = 'IM'
    DataSource = dscadastro
    TabOrder = 13
  end
  object combotipofj: TDBComboBox [28]
    Left = 8
    Top = 192
    Width = 83
    Height = 23
    DataField = 'TIPO_FJ'
    DataSource = dscadastro
    Items.Strings = (
      'FISICA'
      'JURIDICA')
    TabOrder = 14
  end
  inherited fdQryCadastro: TFDQuery
    SQL.Strings = (
      'Select * from CLIENTE')
    object fdQryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 100
    end
    object fdQryCadastroNOME_FANTASIA: TWideStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 100
    end
    object fdQryCadastroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryCadastroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object fdQryCadastroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryCadastroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  object dscadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 672
    Top = 520
  end
end
