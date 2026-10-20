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
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    fdQryCadastro: TFDQuery;
    fdUpdCadastro: TFDUpdateSQL;
    fdTras: TFDTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFormCadastroP: TuFormCadastroP;

implementation

{$R *.dfm}

procedure TuFormCadastroP.Button1Click(Sender: TObject);
begin

    if not fdQryCadastro.State in [dsEdit,dsInsert] then
        begin
             //Se não estiver em modo de edição e inserção, colocal em inserção
            fdQryCadastro.Insert;
        end;


end;

procedure TuFormCadastroP.Button2Click(Sender: TObject);
begin
         if not fdQryCadastro.State in [dsEdit,dsInsert] then
        begin
             //Se não estiver em modo de edição e inserção, colocal em inserção
            fdQryCadastro.Post;
        end;
end;

end.
