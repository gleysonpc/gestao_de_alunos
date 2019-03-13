unit uSobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, PngFunctions,
  Vcl.ExtCtrls, ShellApi;

type
  TfrmSobre = class(TForm)
    imgLogo: TImage;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbSwVersion: TDBText;
    lbDBVersion: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.tbVersion.Close;
end;

procedure TfrmSobre.FormShow(Sender: TObject);
begin
  DM.tbVersion.Open;
end;

procedure TfrmSobre.Label6Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://micropointinformatica.com/', '', '', 1);
end;

end.
