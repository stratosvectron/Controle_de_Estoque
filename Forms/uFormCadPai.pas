unit uFormCadPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uDmDados;

type
  TuFormCadastroP = class(TForm)
    Panel1: TPanel;
    btnnovo: TButton;
    btnsalvar: TButton;
    btncancelar: TButton;
    btnsair: TButton;
    btnexcluir: TButton;
    fdQryCadastro: TFDQuery;
    fdUpdCadastro: TFDUpdateSQL;
    fdTras: TFDTransaction;
    procedure btnnovoClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFormCadastroP: TuFormCadastroP;

implementation

{$R *.dfm}

procedure TuFormCadastroP.btnnovoClick(Sender: TObject);
begin

    if not (fdQryCadastro.State in [dsEdit,dsInsert] )then
        begin
             //Se não estiver em modo de edição e inser��o, colocal em inser��o
            fdQryCadastro.Insert;
        end;


end;

procedure TuFormCadastroP.btnsalvarClick(Sender: TObject);
begin
         if ( fdQryCadastro.State in [dsEdit,dsInsert] )then
        begin
             //Se n�o estiver em modo de edi��o e inser��o, colocal em inser��o
            fdQryCadastro.Post;
            fdTras.CommitRetaining;
        end;
end;

procedure TuFormCadastroP.btncancelarClick(Sender: TObject);
begin
      if ( fdQryCadastro.State in [dsEdit,dsInsert] )then  begin
              //Cancelar Transação
          fdQryCadastro.cancel;
          fdTras.Rollback;
      end;

end;

procedure TuFormCadastroP.btnsairClick(Sender: TObject);
begin
      //Sair da tela
    self.close;
end;

procedure TuFormCadastroP.btnexcluirClick(Sender: TObject);
begin
                 //Colocar em edição
    fdQryCadastro.Edit;
                //Atualziar campo da tabela indicando exclusão
    fdQryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
    fdQryCadastro.Post;
    fdTras.CommitRetaining;

end;

end.
