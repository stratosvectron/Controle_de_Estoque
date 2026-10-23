object uFormCadastroP: TuFormCadastroP
  Left = 0
  Top = 0
  Caption = 'uFormCadastroP'
  ClientHeight = 585
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1058
    Height = 57
    Align = alTop
    TabOrder = 0
    object btnnovo: TButton
      Left = 16
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnnovoClick
    end
    object btnsalvar: TButton
      Left = 104
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btnsalvarClick
    end
    object btncancelar: TButton
      Left = 185
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btncancelarClick
    end
    object btnsair: TButton
      Left = 967
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = btnsairClick
    end
    object btnexcluir: TButton
      Left = 266
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = btnexcluirClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = dmDados.FDConexao
    Transaction = fdTras
    UpdateObject = fdUpdCadastro
    Left = 776
    Top = 520
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = dmDados.FDConexao
    Left = 872
    Top = 520
  end
  object fdTras: TFDTransaction
    Connection = dmDados.FDConexao
    Left = 968
    Top = 520
  end
end
