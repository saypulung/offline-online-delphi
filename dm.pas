unit dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    DataSourceBarang: TDataSource;
    DataSourcebeli: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQueryBarang: TADOQuery;
    ADOQuerybeli: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    base_url,path_site,path_client_id,path_set_client_site,path_get_site_barang,path_upload_transaksi:string;
    procedure initPath;
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  //oncreate cok
  initPath;
end;

procedure TDataModule1.initPath;
begin
  base_url:='http://localhost:8000/parik-online/?path=';
  path_site:=base_url+'site';
  path_client_id:=base_url+'client_id';
  path_set_client_site:=base_url+'set_client_site';
  path_get_site_barang:=base_url+'get_site_barang';
  path_upload_transaksi:=base_url+'upload_transaksi';
end;

end.
