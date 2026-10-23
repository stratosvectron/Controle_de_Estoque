program Projeto_Controle_de_Estoque;

uses
  Vcl.Forms,
  Controle_de_Estoque in 'Controle_de_Estoque.pas' {FormMain},
  Frconexao in 'Frconexao.pas' {Form2},
  uDmDados in 'Forms\uDmDados.pas' {dmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uFormConfigBanco in 'Forms\uFormConfigBanco.pas' {FormConfigBanco},
  uFormCadPai in 'Forms\uFormCadPai.pas' {uFormCadastroP},
  uFormCadCliente in 'Forms\uFormCadCliente.pas' {uFormCadastroP1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TuFormCadastroP1, uFormCadastroP1);
  Application.Run;
end.
