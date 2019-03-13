unit uAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDropDownEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Vcl.StdCtrls, Data.DB, PngFunctions, Vcl.ExtCtrls, Vcl.Buttons,
  PngSpeedButton, Vcl.DBCtrls, cxMemo, cxRichEdit, cxDBRichEdit, Vcl.Mask;

type
  TfrmAluno = class(TForm)
    dsAluno: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TcxDBTextEdit;
    Label3: TLabel;
    edtTelefone: TcxDBMaskEdit;
    edtCPF: TcxDBMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtEmail: TcxDBTextEdit;
    Label6: TLabel;
    edtRua: TcxDBTextEdit;
    Label7: TLabel;
    edtNumero: TcxDBTextEdit;
    Label8: TLabel;
    edtBairro: TcxDBTextEdit;
    Label9: TLabel;
    edtComplemento: TcxDBTextEdit;
    Label10: TLabel;
    edtCidade: TcxDBTextEdit;
    Label11: TLabel;
    edtEstado: TcxDBComboBox;
    Label12: TLabel;
    edtCEP: TcxDBMaskEdit;
    Label13: TLabel;
    edtResponsavel: TcxDBTextEdit;
    edtCPFResponsavel: TcxDBMaskEdit;
    Label14: TLabel;
    Panel1: TPanel;
    btnNovo: TPngSpeedButton;
    btnAlterar: TPngSpeedButton;
    btnSalvar: TPngSpeedButton;
    btnExcluir: TPngSpeedButton;
    btnCancelar: TPngSpeedButton;
    imgLogo: TImage;
    edtCodigo: TcxDBTextEdit;
    Label15: TLabel;
    edtHorario: TDBLookupComboBox;
    Label16: TLabel;
    edtObs: TcxDBRichEdit;
    Label17: TLabel;
    edtStatusMatricula: TcxDBComboBox;
    Label18: TLabel;
    lbMatCancelada: TLabel;
    cbxNovoAluno: TDBCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    edtCertificado: TcxDBTextEdit;
    edtBoleto: TcxDBSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumeroExit(Sender: TObject);
    procedure edtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure edtCPFResponsavelExit(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtStatusMatriculaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure ativaControles;
    procedure desativaControles;
    function ValidaCPF(CPF: string): Boolean;
    Function removerMascara(CPF : String) : String;
    function ValidarEMail(aEmail: string): Boolean;
  public
    { Public declarations }
  end;

var
  frmAluno: TfrmAluno;

implementation

{$R *.dfm}

uses uDM, System.Math, uPrincipal;

{ TfrmAluno }

procedure TfrmAluno.ativaControles;
begin
  edtCodigo.Enabled           := true;
  edtNome.Enabled             := true;
  edtTelefone.Enabled         := true;
  edtCPF.Enabled              := true;
  edtEmail.Enabled            := true;
  edtRua.Enabled              := true;
  edtNumero.Enabled           := true;
  edtBairro.Enabled           := true;
  edtComplemento.Enabled      := true;
  edtCidade.Enabled           := true;
  edtEstado.Enabled           := true;
  edtCEP.Enabled              := true;
  edtResponsavel.Enabled      := true;
  edtCPFResponsavel.Enabled   := true;
  edtHorario.Enabled          := true;
  edtObs.Enabled              := true;
  edtBoleto.Enabled           := true;
  edtCertificado.Enabled      := true;
  cbxNovoAluno.Enabled        := true;

  if frmPrincipal.usuarioNivel = 'COORDENADOR' then
  edtStatusMatricula.Enabled  := true
  else
  edtStatusMatricula.Enabled  := false;
end;

procedure TfrmAluno.btnAlterarClick(Sender: TObject);
begin
   if not ( dsAluno.DataSet.State in [dsInsert, dsEdit]) then
  begin
    ativaControles;
    edtNome.Properties.ReadOnly        := true;
    edtCertificado.Properties.ReadOnly := false;
    dsAluno.DataSet.Edit;
  end;
end;

procedure TfrmAluno.btnCancelarClick(Sender: TObject);
begin
   if  ( dsAluno.DataSet.State in [dsInsert, dsEdit]) then
  begin
    desativaControles;
    dsAluno.DataSet.Cancel;
  end;
end;

procedure TfrmAluno.btnExcluirClick(Sender: TObject);
begin
    if not(dsAluno.DataSet.State in [dsInsert, dsEdit]) and (dsAluno.DataSet.RecordCount > 0) then
  begin
    if Application.MessageBox('Deseja excluir esse registro?','Confirmação',
    MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
      dsAluno.DataSet.Delete;
      Application.MessageBox('Registro excluído com sucesso!','Informação',
      MB_OK+MB_ICONINFORMATION);
    end;
  end;
end;

procedure TfrmAluno.btnNovoClick(Sender: TObject);
begin
  if not ( dsAluno.DataSet.State in [dsInsert, dsEdit]) then
  begin
    ativaControles;
    dsAluno.DataSet.Append;
    edtNome.Properties.ReadOnly        := false;
    edtCertificado.Properties.ReadOnly := true;
    cbxNovoAluno.Checked := true;
    edtNome.SetFocus;
  end;
end;

procedure TfrmAluno.btnSalvarClick(Sender: TObject);
begin
   if  ( dsAluno.DataSet.State in [dsInsert, dsEdit]) then
  begin
    if (dsAluno.DataSet.State in [dsInsert]) then
    begin
      DM.qAlunocertificado.Value := edtNome.Text;
      DM.qAlunonovo_aluno.Value := true;
    end;

    desativaControles;
    dsAluno.DataSet.Post;
  end;
end;

procedure TfrmAluno.desativaControles;
begin
  edtCodigo.Enabled           := false;
  edtNome.Enabled             := false;
  edtTelefone.Enabled         := false;
  edtCPF.Enabled              := false;
  edtEmail.Enabled            := false;
  edtRua.Enabled              := false;
  edtNumero.Enabled           := false;
  edtBairro.Enabled           := false;
  edtComplemento.Enabled      := false;
  edtCidade.Enabled           := false;
  edtEstado.Enabled           := false;
  edtCEP.Enabled              := false;
  edtResponsavel.Enabled      := false;
  edtCPFResponsavel.Enabled   := false;
  edtHorario.Enabled          := false;
  edtStatusMatricula.Enabled  := false;
  edtObs.Enabled              := false;
  edtBoleto.Enabled           := false;
  edtCertificado.Enabled      := false;
  cbxNovoAluno.Enabled        := false;
end;

procedure TfrmAluno.edtCPFExit(Sender: TObject);
var vCPF : string;
begin
  vCPF := removerMascara( TcxMaskEdit(Sender).Text);

  if vCPF = '' then
  begin
    exit;
  end
  else
  begin
    if not (ValidaCPF(vCPF)) then
    begin
      Application.MessageBox('O CPF informado não é válido!','Informação',
      MB_OK+MB_ICONWARNING);
      if TcxMaskEdit(Sender).Enabled then
       TcxMaskEdit(Sender).SetFocus;
    end;
  end;

end;

procedure TfrmAluno.edtCPFResponsavelExit(Sender: TObject);
var vCPF : string;
begin
  vCPF := removerMascara( TcxMaskEdit(Sender).Text);

  if vCPF = '' then
  begin
    exit;
  end
  else
  begin
    if not (ValidaCPF(vCPF)) then
    begin
      Application.MessageBox('O CPF informado não é válido!','Informação',
      MB_OK+MB_ICONWARNING);
      if TcxMaskEdit(Sender).Enabled then
       TcxMaskEdit(Sender).SetFocus;
    end;
  end;
end;

procedure TfrmAluno.edtEmailExit(Sender: TObject);
begin
  if edtEmail.Text <> '' then
  begin
     if not (ValidarEMail(edtEmail.Text)) then
     begin
      Application.MessageBox('O email informado não é válido!','Informação',
      MB_OK+MB_ICONWARNING);
      if edtEmail.Enabled then
       edtEmail.SetFocus;
     end;

  end;
end;

procedure TfrmAluno.edtNumeroExit(Sender: TObject);
begin
  if edtNumero.Text = '' then
  begin
    edtNumero.Text := 'S/N';
  end;
end;

procedure TfrmAluno.edtNumeroKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['1','2','3','4','5','6','7','8','9','0', #8]) then
  key :=#0;
end;

procedure TfrmAluno.edtStatusMatriculaPropertiesChange(Sender: TObject);
begin

  if edtStatusMatricula.ItemIndex = 1 then
  lbMatCancelada.Visible := true
  else
  lbMatCancelada.Visible := false;

end;

procedure TfrmAluno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsAluno.DataSet.State in [dsInsert, dsEdit] then
     dsAluno.DataSet.Cancel;
end;

procedure TfrmAluno.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if dsAluno.DataSet.State in [dsInsert] then
    edtCertificado.TabStop := false
  else
    edtCertificado.TabStop := true;

 if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
end;

procedure TfrmAluno.FormShow(Sender: TObject);
begin
  desativaControles;
  if frmPrincipal.usuarioNivel = 'COORDENADOR' then
  begin
    btnExcluir.Enabled := true;
  end
  else
  begin
    btnExcluir.Enabled := false;
  end;

  if edtStatusMatricula.ItemIndex = 1 then
  lbMatCancelada.Visible := true
  else
  lbMatCancelada.Visible := false;

end;

function TfrmAluno.removerMascara(CPF: String): String;
Const Mascara = ',.-/_\ ';
Var I : Integer;
begin
  for I := 1 to Length(CPF) do
    if (Pos(CPF[I], Mascara)=0) then
    Result:=Result+CPF[I];
end;



function TfrmAluno.ValidaCPF(CPF: string): Boolean;
var
  i: Integer;
  cpfSoNumero: String;
  cpfRepetido: Boolean;
  digito1, digito2: Integer;
begin
  result := False;
  // Limpa o que não for numero
  cpfSoNumero := '';
  for i := 1 To length(CPF) do
  begin
    Case char(CPF[i]) of
      '0' .. '9':
        cpfSoNumero := cpfSoNumero + CPF[i];
    End;
  end;

  // verifica se possui os 11 digitos
  if length(cpfSoNumero) <> 11 then
  begin
    exit;
  end;

  // testar se o cpf é repetido como 000.000.000-00
  cpfRepetido := True;
  for i := 2 to length(cpfSoNumero) do
  begin
    if cpfSoNumero[1] <> cpfSoNumero[i] then
    begin
      // se o cpf possui um digito diferente ele passou no teste
      cpfRepetido := False;
      break;
    end;
  end;
  // se o CPF é composto por numeros repetido retorna true
  if (cpfRepetido) then
  begin
    exit;
  end;

  // executa o calculo para o primeiro digito verificador
  digito1 := 0;
  for i := 1 to 9 do
  begin
    digito1 := digito1 + (StrToInt(cpfSoNumero[10 - i]) * (i + 1));
  end;
  { formula do primeiro verificador soma=1°*2+2°*3+3°*4..
  até 9°*10 digito1 = 11 - soma mod 11 se digito > 10 digito1 = 0 }
  digito1 := ((11 - (digito1 mod 11)) mod 11) mod 10;
  // verifica se o 1° digito confere
  if inttostr(digito1) <> cpfSoNumero[10] then
  begin
    exit;
  end;

  // executa o calculo para o segundo digito verificador
  digito2 := 0;
  for i := 1 to 10 do
  begin
    digito2 := digito2 + (StrToInt(cpfSoNumero[11 - i]) * (i + 1));
  end;
  { formula do segundo verificador soma=1°*2+2°*3+3°*4.. até 10°*11
  digito2 = 11 - soma mod 11 se digito > 10 digito2 = 0 }
  digito2 := ((11 - (digito2 mod 11)) mod 11) mod 10;
  // confere o 2° digito verificador
  if inttostr(digito2) <> cpfSoNumero[11] then
  begin
    exit;
  end;

  // se chegar até aqui o CPF é valido
  result := True;
end;

function TfrmAluno.ValidarEMail(aEmail: string): Boolean;
begin
 aEmail := Trim(LowerCase(aEmail));
 if Pos('@', aEmail) > 1 then
 begin
   Delete(aEmail, 1, pos('@', aEmail));
   Result := (Length(aEmail) > 0) and (Pos('.', aEmail) > 2);
 end
 else
   Result := False;
end;

end.
