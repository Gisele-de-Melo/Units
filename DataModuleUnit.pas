//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit DataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  //Conecta ao banco de dados e abre a consulta da tabela
  DataModule1.ADOConnection1.Connected := False;
  DataModule1.ADOConnection1.ConnectionString := 'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=MySql ODBC 32 Ansi;Initial Catalog=world;';
  DataModule1.ADOConnection1.Connected := True;
  DataModule1.ADOTable1.Close;
  DataModule1.ADOTable1.Open;
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  DataModule1.ADOTable1.Close;   //Fecha a tabela ao destruir o data module
  DataModule1.ADOConnection1.Connected := False; //Fecha a conexão ao destruir o data module
end;

end.
