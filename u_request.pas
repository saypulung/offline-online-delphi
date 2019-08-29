unit u_request;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,registry,IdHTTP,ujson;

type
  TFormConfig = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure simpanRegGuid;
    procedure postGuid();
    procedure saveGuidAndSite(); 
  public
    { Public declarations }
  end;

var
  FormConfig: TFormConfig;
  Registry1:TRegistry;
  state_complete:boolean;
  urlHttp:TIdHTTP;
  txtUrl:string;

implementation

uses ComObj, dm;

{$R *.dfm}

procedure TFormConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if state_complete=false then
  begin
    Application.Terminate;
  end;

end;

procedure TFormConfig.FormActivate(Sender: TObject);
var Guid:TGUID;
    guid_result,final_guid:string;
    response_server:TMemoryStream;
    json_data:string;
    response_json,site_attr:TJSONObject;
    data_sites:TJSONArray;
    idx,jdx:Integer;
    error_json:Integer;
begin
  DataModule1.initPath;
  state_complete:=false;
  CreateGUID(guid);
  guid_result:=GUIDToString(guid);
  final_guid:=StringReplace(guid_result,'{','',[rfReplaceAll, rfIgnoreCase]);
  final_guid:=StringReplace(final_guid,'}','',[rfReplaceAll, rfIgnoreCase]);
  edit1.Text:=final_guid;
  ComboBox1.Items.Clear;
  response_server:=TMemoryStream.Create;
  try
    txtUrl:=DataModule1.path_site;
    urlHttp:=TIdHTTP.Create(nil);
    urlHttp.Get(txtUrl,response_server);
    response_server.Position:=0;
    SetString(json_data,pchar(response_server.memory),response_server.size div sizeof(char) );
    response_json:=TJSONObject.create(json_data);
    error_json:=response_json.getInt('error');
    if error_json=0 then
    begin
      data_sites:=response_json.getJSONArray('data');
      for idx:=0 to data_sites.length-1 do
      begin
        site_attr:=data_sites.getJSONObject(idx);
        ComboBox1.Items.Add(''+site_attr.getString('msstId')+' - '+site_attr.getString('msstName'));
      end;
      ComboBox1.ItemIndex:=0;
    end else
    begin
      ShowMessage(response_json.getString('error_message'));
    end;
    //ShowMessage(json_data);
  finally
    urlHttp.Free;
  end;
end;

procedure TFormConfig.simpanRegGuid;
var local_guid:string;
  openResult:boolean;
begin
  local_guid:=edit1.Text;
  Registry1:=tregistry.Create(KEY_WRITE);
  Registry1.RootKey:=HKEY_LOCAL_MACHINE;
  openResult:=Registry1.OpenKey('Software\\Parik\\OfflineApp\\',True);
  if openResult=true then
  begin
    Registry1.WriteString('AppGuid',local_guid);
  end;
end;

procedure TFormConfig.postGuid;
begin
  //post data guid
end;

procedure TFormConfig.saveGuidAndSite;
begin
  //post guid n site
end;

end.
