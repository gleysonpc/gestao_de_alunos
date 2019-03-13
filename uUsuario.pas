unit uUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, Vcl.StdCtrls, PngFunctions,
  cxMaskEdit, cxDropDownEdit;

type
  TfrmUsuario = class(TForm)
    Panel1: TPanel;
    btnNovo: TPngSpeedButton;
    dbgUsuarios: TDBGrid;
    dsUsuario: TDataSource;
    Label1: TLabel;
    edtNome: TcxDBTextEdit;
    Label2: TLabel;
    edtUsuario: TcxDBTextEdit;
    Label3: TLabel;
    edtSenha: TcxDBTextEdit;
    imgLogo: TImage;
    btnAlterar: TPngSpeedButton;
    btnSalvar: TPngSpeedButton;
    btnExcluir: TPngSpeedButton;
    btnCancelar: TPngSpeedButton;
    edtNivel: TcxDBComboBox;
    Label4: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure verificaNivel;
    procedure ativaControles;
    procedure desativaControles;
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

{$R *.dfm}

uses uDM, uPrincipal;

procedure TfrmUsuario.ativaControles;
begin
    edtNome.Enabled    := true;
    edtUsuario.Enabled := true;
    edtSenha.Enabled   := true;
    if frmPrincipal.usuarioNivel = 'COORDENADOR' then
    begin
      edtNivel.Enabled := true;
      btnNovo.Enabled  := true;
    end
    else
    begin
      edtNivel.Enabled := false;
      btnNovo.Enabled  := false;
    end;
end;

procedure TfrmUsuario.btnAlterarClick(Sender: TObject);
begin
  if not( dsUsuario.DataSet.State in [dsInsert, dsEdit]) then
  begin
    ativaControles;
    edtNome.SetFocus;
    dsUsuario.DataSet.Edit;
  end;
end;

procedure TfrmUsuario.btnCancelarClick(Sender: TObject);
begin
  if ( dsUsuario.DataSet.State in [dsInsert, dsEdit]) then
  begin
    desativaControles;
    dsUsuario.DataSet.Cancel;
  end;
end;

procedure TfrmUsuario.btnExcluirClick(Sender: TObject);
begin
  if not(dsUsuario.DataSet.State in [dsInsert, dsEdit]) then
  begin
    if Application.MessageBox('Deseja excluir esse registro?','Confirmação',MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
      dsUsuario.DataSet.Delete;
      Application.MessageBox('Registro excluído com sucesso!','Informação', MB_OK+MB_ICONINFORMATION);
    end;
  end;
end;

procedure TfrmUsuario.btnNovoClick(Sender: TObject);
begin
  if not( dsUsuario.DataSet.State in [dsInsert, dsEdit]) then
  begin
    ativaControles;
    edtNome.SetFocus;
    dsUsuario.DataSet.Append;
  end;
end;

procedure TfrmUsuario.btnSalvarClick(Sender: TObject);
begin
   if ( dsUsuario.DataSet.State in [dsInsert, dsEdit]) then
  begin
    desativaControles;
    dsUsuario.DataSet.Post;
  end;
end;

procedure TfrmUsuario.desativaControles;
begin
    edtNome.Enabled    := false;
    edtUsuario.Enabled := false;
    edtSenha.Enabled   := false;
    edtNivel.Enabled   := false;
end;

procedure TfrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsUsuario.DataSet.Close;
end;

procedure TfrmUsuario.FormShow(Sender: TObject);
begin
  verificaNivel;

end;

procedure TfrmUsuario.verificaNivel;
var vSQL : string;
begin
  if frmPrincipal.usuarioNivel = 'COORDENADOR' then
    begin
      vSQL := 'SELECT * FROM USUARIO';
      btnNovo.Enabled := true;
    end
    else
    begin
      vSQL := 'SELECT * FROM USUARIO WHERE id =' + frmPrincipal.usuarioID.ToString;
      btnNovo.Enabled := false;
    end;

  with DM.qUsuario do
  begin
    Close;
    SQL.Clear;
    SQL.Add(vSQL);
    Open;
  end;

end;

end.
