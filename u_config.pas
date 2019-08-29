unit u_config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, XPMan,registry;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditIDBarang: TEdit;
    ButtonCariBaarang: TButton;
    Label2: TLabel;
    EditNamaBarang: TEdit;
    Label3: TLabel;
    EditQty: TEdit;
    Label4: TLabel;
    EditTotal: TEdit;
    ButtonSimpan: TButton;
    GroupBox2: TGroupBox;
    DBGridPembelian: TDBGrid;
    XPManifest1: TXPManifest;
    EditHarga: TEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure checkRegistryKey;
  end;

var
  Form1: TForm1;
  Registry1:TRegistry;

implementation

uses dm, u_cari_barang, u_request;

{$R *.dfm}

{ TForm1 }

procedure TForm1.checkRegistryKey;
var openResult:boolean;
begin
  //check kebutuhan key
  Registry1:=TRegistry.Create(KEY_WRITE);
  Registry1.RootKey:=HKEY_LOCAL_MACHINE;
  if not Registry1.KeyExists('Software\\Parik\\OfflineApp\\') then
  begin
    Registry1.Access:=KEY_WRITE;
    openResult:= Registry1.OpenKey('Software\\Parik\\OfflineApp\\',True);
    if not openResult=True then
    begin
      ShowMessage('Unable open registry');
      exit;
    end;
    Registry1.CloseKey;
    ShowMessage('Write Root Key');
    FormConfig.ShowModal;
  end else
  begin
      Registry1.Access:=KEY_READ;
      openResult:=Registry1.OpenKey('Software\\Parik\\OfflineApp\\',true);
      if not openResult=True then
      begin
        showmessage('Unable open registry');
        exit;
      end;
      if not Registry1.KeyExists('SiteId') then
      begin
        Registry1.CloseKey;
        ShowMessage('Site Guid');
        FormConfig.ShowModal;
      end;
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  checkRegistryKey;
end;

end.
