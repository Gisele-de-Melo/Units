//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse c�digo foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto n�o me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit BusinessLogicUnit;

interface

uses
  DataModuleUnit;

type
  TBusinessLogic = class
  public
    function GetRecordCount: Integer;
  end;

implementation

function TBusinessLogic.GetRecordCount: Integer;
begin
  Result := DataModule1.ADOTable1.RecordCount;  //conta o n�mero de registros da tabela ADOTable1
end;

end.
