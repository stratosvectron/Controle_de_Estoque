unit uBiblioteca;

interface

 //Declarar as units que serão usadas
 uses IniFiles, System.SysUtils, Vcl.Forms;

 //procedimento de criação do arquivo ini
 procedure SetValorIni (pLocal, pSessao, pSubSessao, pValor: string);

 //Função para recuperar dados do arquivo ini
 function GetValorIni(pLocal, pSessao, pSubSessao: string): string;


implementation

  procedure   SetValorIni (pLocal, pSessao, pSubSessao, pValor: string);

  //Variavel para o arquivo ini
  var vArquivo: TIniFile;

   begin

     //Criar arquivo
     vArquivo  := TIniFile.Create(plocal);

     //Escrever dados no arquivo
     vArquivo.WriteString(pSessao, pSubSessao, pValor);

     //Liberar da memoria
     vArquivo.Free;

   end;


   function   GetValorIni (pLocal, pSessao, pSubSessao: string): string;

  var vArquivo: TIniFile;

   begin

     //Criar arquivo
     vArquivo  := TIniFile.Create(plocal);

     //Ler dados do arquivo
     vArquivo.ReadString(pSessao, pSubSessao, '');

     //Liberar da memoria
     vArquivo.Free;

   end;




end.
