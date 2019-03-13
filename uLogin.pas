unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PngFunctions, Vcl.ExtCtrls,
  Vcl.Buttons, PngBitBtn, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtUsuario: TEdit;
    Label3: TLabel;
    edtSenha: TEdit;
    imgLogin: TImage;
    btnEntrar: TPngBitBtn;
    btnSair: TPngBitBtn;
    qLogin: TFDQuery;
    qLoginid: TFDAutoIncField;
    qLoginnome: TWideStringField;
    qLoginlogin: TWideStringField;
    qLoginsenha: TWideStringField;
    qLoginnivel: TStringField;
    procedure btnEntrarClick(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDM, uPrincipal;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  with qLogin do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM USUARIO WHERE LOGIN = :login AND SENHA = :senha');
    ParamByName('login').Value := Trim(edtUsuario.Text);
    ParamByName('senha').Value := Trim(edtSenha.Text);
    Open;
    if RecordCount = 1 then
    begin
      frmPrincipal.usuarioID     := qLoginid.Value;
      frmPrincipal.usuarioNivel  := qLoginnivel.Value;
      frmPrincipal.usuarioNome   := qLoginnome.Value;
      frmPrincipal.usuarioLogado := true;
      frmPrincipal.stbPrincipal.Panels[0].Text :='USUÁRIO LOGADO: ' + frmPrincipal.usuarioNome;
      frmPrincipal.stbPrincipal.Panels[1].Text :='NÍVEL DE ACESSO: ' + frmPrincipal.usuarioNivel;
      frmPrincipal.aplicarNivelAcsso;
      Self.Close;
    end
    else
    begin
      Application.MessageBox('Usuário ou senha incorreto!', 'informação', MB_OK+MB_ICONWARNING);
      edtSenha.SetFocus;
    end;


  end;
end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btnEntrar.Click;
  end;
end;

procedure TfrmLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edtSenha.SetFocus;
  end;
end;

end.
