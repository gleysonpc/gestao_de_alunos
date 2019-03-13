unit uBaixaBoleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, Data.DB, cxGroupBox, Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls;

type
  TfrmBaixaBoleto = class(TForm)
    lbNome: TDBText;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    edtParcela1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edtParcela2: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    Panel1: TPanel;
    btnSalvar: TPngSpeedButton;
    btnCancelar: TPngSpeedButton;
    cxGroupBox3: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edtParcela3: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxGroupBox4: TcxGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edtParcela4: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxGroupBox5: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    edtParcela5: TcxDBTextEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxGroupBox6: TcxGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    edtParcela6: TcxDBTextEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    cxGroupBox7: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    edtParcela7: TcxDBTextEdit;
    cxDBDateEdit7: TcxDBDateEdit;
    cxGroupBox8: TcxGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    edtParcela8: TcxDBTextEdit;
    cxDBDateEdit8: TcxDBDateEdit;
    cxGroupBox9: TcxGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    edtParcela9: TcxDBTextEdit;
    cxDBDateEdit9: TcxDBDateEdit;
    cxGroupBox10: TcxGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    edtParcela10: TcxDBTextEdit;
    cxDBDateEdit10: TcxDBDateEdit;
    cxGroupBox11: TcxGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    edtParcela11: TcxDBTextEdit;
    cxDBDateEdit11: TcxDBDateEdit;
    Label23: TLabel;
    edtResponsavel: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaBoleto: TfrmBaixaBoleto;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmBaixaBoleto.btnCancelarClick(Sender: TObject);
begin
  if  (DM.qAluno.State in [dsInsert, dsEdit]) then
  begin
    DM.qAluno.Cancel;
  end;
  Close;
end;

procedure TfrmBaixaBoleto.btnSalvarClick(Sender: TObject);
begin
  if  (DM.qAluno.State in [dsInsert, dsEdit]) then
  begin
    DM.qAlunomodificado_em.AsDateTime := now;
    DM.qAluno.Post;
    DM.qAluno.Close;
    DM.qAluno.Open;
  end;
  Close;
end;

procedure TfrmBaixaBoleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if  (DM.qAluno.State in [dsInsert, dsEdit]) then
  begin
    DM.qAluno.Cancel;
  end;
end;

procedure TfrmBaixaBoleto.FormShow(Sender: TObject);
var
  I, editAtual: Integer;
begin
  editAtual := 0;
  if not (DM.qAluno.State in [dsInsert, dsEdit]) then
  begin
    DM.qAluno.Edit;
  end;

  //mudando o foco dos edits
  for I := 0 to pred( frmBaixaBoleto.ComponentCount) do
  begin
    if Components[I].ClassType = TcxDBTextEdit then
    begin
      //ShowMessage( TcxDBTextEdit(Components[I]).Name );
      if TcxDBTextEdit(Components[I]).Text <> '' then
       begin
        //TcxDBTextEdit(Components[I]).SetFocus;
        editAtual := I;
        Continue;
       end;

    end;

    Next;
  end;


 if TcxDBTextEdit( Components[editAtual]).Name = 'edtParcela11' then
 begin
  Panel1.SetFocus;
  exit;
 end;

 if editAtual > 0 then
 begin
  TcxDBTextEdit( Components[editAtual]).SetFocus;
  Perform(WM_NEXTDLGCTL, 0, 0);
  Perform(WM_NEXTDLGCTL, 0, 0);
 end
  else
  begin
    edtParcela1.SetFocus;
  end;



end;

end.
