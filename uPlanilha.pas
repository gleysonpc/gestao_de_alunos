unit uPlanilha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  PngSpeedButton, Vcl.ExtCtrls, Shellapi;

type
  TfrmPlanilha = class(TForm)
    Panel1: TPanel;
    btnSalvar: TPngSpeedButton;
    Label25: TLabel;
    Memo1: TMemo;
    btnExemplo: TPngSpeedButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExemploClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlanilha: TfrmPlanilha;

implementation

{$R *.dfm}

procedure TfrmPlanilha.btnExemploClick(Sender: TObject);
var
arquivo : string;
begin
  arquivo := ExtractFilePath(Application.ExeName) + 'exemplo.xlsx';

  ShellExecute(Handle,'open',pchar(arquivo),nil,nil,sw_show);
end;

procedure TfrmPlanilha.btnSalvarClick(Sender: TObject);
begin
  close;
end;

end.
