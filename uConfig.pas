unit uConfig;

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
  dxSkinXmas2008Blue, PngFunctions, Vcl.ExtCtrls, Vcl.Buttons, PngSpeedButton,
  cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, Data.db,
  cxDropDownEdit, cxCalendar, FireDAC.Stan.Param;

type
  TfrmConfig = class(TForm)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Panel1: TPanel;
    btnSalvar: TPngSpeedButton;
    btnCancelar: TPngSpeedButton;
    Label16: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    edtData1: TcxDBDateEdit;
    Label4: TLabel;
    edtData2: TcxDBDateEdit;
    Label5: TLabel;
    edtData3: TcxDBDateEdit;
    Label6: TLabel;
    edtData4: TcxDBDateEdit;
    Label7: TLabel;
    edtData5: TcxDBDateEdit;
    Label8: TLabel;
    edtData6: TcxDBDateEdit;
    Label9: TLabel;
    edtData7: TcxDBDateEdit;
    Label10: TLabel;
    edtData8: TcxDBDateEdit;
    Label11: TLabel;
    edtData9: TcxDBDateEdit;
    Label12: TLabel;
    edtData10: TcxDBDateEdit;
    Label13: TLabel;
    edtData11: TcxDBDateEdit;
    Label14: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    btnPremiacao: TPngSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPremiacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

{$R *.dfm}

uses uDM, uPrincipal;

procedure TfrmConfig.btnCancelarClick(Sender: TObject);
begin
if DM.tbConfig.State in [dsInsert, dsEdit] then
  begin
    DM.tbConfig.Cancel;
  end;
  close;
end;

procedure TfrmConfig.btnPremiacaoClick(Sender: TObject);
begin
  with DM.qAluno do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM aluno WHERE');
    SQL.Add('data_par1 <= :data1');
    SQL.Add('AND data_par2 <= :data2');
    SQL.Add('AND data_par3 <= :data3');
    SQL.Add('AND data_par4 <= :data4');
    SQL.Add('AND data_par5 <= :data5');
    SQL.Add('AND data_par6 <= :data6');
    SQL.Add('AND data_par7 <= :data7');
    SQL.Add('AND data_par8 <= :data8');
    SQL.Add('AND data_par9 <= :data9');
    SQL.Add('AND data_par10 <= :data10');
    SQL.Add('AND data_par11 <= :data11');
    ParamByName('data1').Value := edtData1.Date;
    ParamByName('data2').Value := edtData2.Date;
    ParamByName('data3').Value := edtData3.Date;
    ParamByName('data4').Value := edtData4.Date;
    ParamByName('data5').Value := edtData5.Date;
    ParamByName('data6').Value := edtData6.Date;
    ParamByName('data7').Value := edtData7.Date;
    ParamByName('data8').Value := edtData8.Date;
    ParamByName('data9').Value := edtData9.Date;
    ParamByName('data10').Value := edtData10.Date;
    ParamByName('data11').Value := edtData11.Date;
    open;
  end;
  frmPrincipal.stbPrincipal.Panels[2].Text := DM.qAluno.RecordCount.ToString + ' ALUNOS';
end;

procedure TfrmConfig.btnSalvarClick(Sender: TObject);
begin
  if DM.tbConfig.State in [dsInsert, dsEdit] then
  begin
    DM.tbConfig.Post;
  end;
  close;
end;

procedure TfrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.tbConfig.State in [dsInsert, dsEdit] then
  begin
    DM.tbConfig.Cancel;
  end;

  DM.tbConfig.Close;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
  DM.tbConfig.Open;
  DM.tbConfig.Edit;
end;

end.
