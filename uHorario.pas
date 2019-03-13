unit uHorario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, PngFunctions, Vcl.ExtCtrls,
  Vcl.Buttons, PngSpeedButton, Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, Vcl.StdCtrls;

type
  TfrmHorario = class(TForm)
    dbgHorarios: TDBGrid;
    Panel1: TPanel;
    btnNovo: TPngSpeedButton;
    btnAlterar: TPngSpeedButton;
    btnSalvar: TPngSpeedButton;
    btnExcluir: TPngSpeedButton;
    btnCancelar: TPngSpeedButton;
    imgLogo: TImage;
    dsHorarios: TDataSource;
    Label1: TLabel;
    edtDescricao: TcxDBTextEdit;
    Label16: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHorario: TfrmHorario;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmHorario.btnAlterarClick(Sender: TObject);
begin
  if not( dsHorarios.DataSet.State in [dsInsert, dsEdit]) then
  begin
    edtDescricao.Enabled := true;
    dsHorarios.DataSet.Edit;
    edtDescricao.SetFocus;
  end;
end;

procedure TfrmHorario.btnCancelarClick(Sender: TObject);
begin
  if ( dsHorarios.DataSet.State in [dsInsert, dsEdit]) then
  begin
    dsHorarios.DataSet.Cancel;
    edtDescricao.Enabled := False;
  end;
end;

procedure TfrmHorario.btnNovoClick(Sender: TObject);
begin
  if not( dsHorarios.DataSet.State in [dsInsert, dsEdit]) then
  begin
    edtDescricao.Enabled := true;
    edtDescricao.SetFocus;
    dsHorarios.DataSet.Append;
  end;
end;

procedure TfrmHorario.btnSalvarClick(Sender: TObject);
begin
  if ( dsHorarios.DataSet.State in [dsInsert, dsEdit]) then
  begin
    dsHorarios.DataSet.Post;
    edtDescricao.Enabled := False;
  end;
end;

end.
