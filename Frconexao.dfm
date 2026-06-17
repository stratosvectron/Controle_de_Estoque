object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=/var/lib/firebird/data/controle_estoque.fdb'
      'User_Name=dbadmin'
      'Password=Admin@2026'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Left = 288
    Top = 176
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 
      'C:\Users\David\Documents\Projetos\Controle_de_Estoque\Database-S' +
      'cripts\fbclientx32.dll'
    Left = 104
    Top = 176
  end
end
