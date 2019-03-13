unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  PngSpeedButton, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, cxGraphics,
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
  dxSkinXmas2008Blue, cxMaskEdit, cxTextEdit, cxDropDownEdit, Vcl.StdCtrls,
  Vcl.Menus, System.Win.ComObj, PngFunctions, System.Types, Midaslib,
  Vcl.AppEvnts, FireDAC.Stan.Param;

type
  TfrmPrincipal = class(TForm)
    pnBotoes: TPanel;
    btnUsuarios: TPngSpeedButton;
    btnLogout: TPngSpeedButton;
    stbPrincipal: TStatusBar;
    pnControles: TPanel;
    Label1: TLabel;
    edtTipoPesquisa: TcxComboBox;
    edtPesquisar: TcxMaskEdit;
    Label2: TLabel;
    btnAlunos: TPngSpeedButton;
    btnBaixaBoleto: TPngSpeedButton;
    btnLimparFiltro: TPngSpeedButton;
    dbgPrincipal: TDBGrid;
    ppPrincipal: TPopupMenu;
    Fianas1: TMenuItem;
    Cadastro1: TMenuItem;
    btnHorarios: TPngSpeedButton;
    btnSelHorario: TButton;
    btnSelParcela: TButton;
    ppSelParcela: TPopupMenu;
    ddwP1: TMenuItem;
    ddwP2: TMenuItem;
    ddwP3: TMenuItem;
    ddwP4: TMenuItem;
    ddwP5: TMenuItem;
    ddwP6: TMenuItem;
    ddwP7: TMenuItem;
    ddwP8: TMenuItem;
    ddwP9: TMenuItem;
    ddwP10: TMenuItem;
    ddwP11: TMenuItem;
    btnPlanilha: TPngSpeedButton;
    pnProcessando: TPanel;
    imgProcessando: TImage;
    Label3: TLabel;
    btnSobre: TPngSpeedButton;
    btnImportar: TPngSpeedButton;
    btnConfig: TPngSpeedButton;
    Timer: TTimer;
    ApplicationEvents: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnAlunosClick(Sender: TObject);
    procedure edtPesquisarPropertiesChange(Sender: TObject);
    procedure edtTipoPesquisaPropertiesChange(Sender: TObject);
    procedure btnLimparFiltroClick(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure btnHorariosClick(Sender: TObject);
    procedure btnBaixaBoletoClick(Sender: TObject);
    procedure Fianas1Click(Sender: TObject);
    procedure dbgPrincipalDblClick(Sender: TObject);
    procedure btnSelHorarioClick(Sender: TObject);
    procedure btnSelParcelaClick(Sender: TObject);
    procedure ddwP1Click(Sender: TObject);
    procedure ddwP2Click(Sender: TObject);
    procedure ddwP3Click(Sender: TObject);
    procedure ddwP4Click(Sender: TObject);
    procedure ddwP5Click(Sender: TObject);
    procedure ddwP6Click(Sender: TObject);
    procedure ddwP7Click(Sender: TObject);
    procedure ddwP8Click(Sender: TObject);
    procedure ddwP9Click(Sender: TObject);
    procedure ddwP10Click(Sender: TObject);
    procedure ddwP11Click(Sender: TObject);
    procedure btnPlanilhaClick(Sender: TObject);
    procedure dbgPrincipalTitleClick(Column: TColumn);
    procedure btnSobreClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
  private
    { Private declarations }
  public

    procedure login;
    procedure listarPorParcelaPaga(AParcela: string);
    procedure listarPorParcelaNaoPaga(AParcela: string);
    procedure listarMatriculasCanceladas;
    procedure exportarExcel(AEditar:Boolean);
    procedure aplicarNivelAcsso;
    procedure listarNovasMatriculas;
    procedure listarParcelasPorData(ADataI, ADataF:TDate; AParcela:String);

  var
    usuarioID: integer;
    usuarioNivel, usuarioNome: string;
    usuarioLogado: Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uLogin, uUsuario, uAluno, uDM, uHorario, uBaixaBoleto, uListarHorario,
  uSobre, uImportar, uConfig, uParcelaPorData, uGerarPlanilha;

procedure TfrmPrincipal.aplicarNivelAcsso;
begin
  if usuarioNivel = 'COORDENADOR' then
  begin
    btnImportar.Enabled := true;
    btnImportar.Enabled := true;
    btnConfig.Enabled := true;
    btnPlanilha.Enabled := true;
  end
  else
  begin
    btnImportar.Enabled := false;
    btnImportar.Enabled := false;
    btnConfig.Enabled := false;
    btnPlanilha.Enabled := false;
  end;
end;

procedure TfrmPrincipal.ApplicationEventsIdle(Sender: TObject;
  var Done: Boolean);
begin
  if usuarioLogado then
    Timer.Enabled := true;
end;

procedure TfrmPrincipal.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
begin
  Timer.Enabled := false;
end;

procedure TfrmPrincipal.btnAlunosClick(Sender: TObject);
begin
  try
    frmAluno := TfrmAluno.Create(Self);
    frmAluno.ShowModal;
  finally
    FreeAndNil(frmAluno);
  end;
end;

procedure TfrmPrincipal.btnBaixaBoletoClick(Sender: TObject);
begin
  try
    frmBaixaBoleto := TfrmBaixaBoleto.Create(Self);
    frmBaixaBoleto.ShowModal;
  finally
    FreeAndNil(frmBaixaBoleto);
  end;
end;

procedure TfrmPrincipal.btnConfigClick(Sender: TObject);
begin
  try
    frmConfig := TfrmConfig.Create(Self);
    frmConfig.ShowModal;
  finally
    FreeAndNil(frmConfig);
  end;
end;

procedure TfrmPrincipal.btnHorariosClick(Sender: TObject);
begin
  try
    frmHorario := TfrmHorario.Create(Self);
    frmHorario.ShowModal;
  finally
    FreeAndNil(frmHorario);
  end;
end;

procedure TfrmPrincipal.btnImportarClick(Sender: TObject);
begin
  try
    frmImportar := TfrmImportar.Create(Self);
    frmImportar.ShowModal;
  finally
    FreeAndNil(frmImportar);
  end;
end;

procedure TfrmPrincipal.btnLimparFiltroClick(Sender: TObject);
begin
  edtPesquisar.Enabled := true;
  edtTipoPesquisa.ItemIndex := 0;
  btnSelHorario.Enabled := false;
  btnSelParcela.Enabled := false;

  edtPesquisar.Properties.EditMask := '';
  edtPesquisar.Clear;
  edtPesquisar.SetFocus;
  with DM.qAluno do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from aluno');
    Open;
    First;
  end;
  stbPrincipal.Panels[2].Text := DM.qAluno.RecordCount.ToString + ' ALUNOS';
  dbgPrincipalTitleClick(dbgPrincipal.Columns[0]);
end;

procedure TfrmPrincipal.btnLogoutClick(Sender: TObject);
begin
  usuarioLogado := false;
  login;
end;

procedure TfrmPrincipal.btnPlanilhaClick(Sender: TObject);
begin
  try
    frmGerarPlanilha := TfrmGerarPlanilha.Create(Self);
    frmGerarPlanilha.ShowModal;
  finally
    FreeAndNil(frmGerarPlanilha);
  end;
  //exportarExcel;
end;

procedure TfrmPrincipal.btnSelHorarioClick(Sender: TObject);
begin
  try
    frmListarHorario := TfrmListarHorario.Create(Self);
    frmListarHorario.ShowModal;
  finally
    stbPrincipal.Panels[2].Text := DM.qAluno.RecordCount.ToString + ' ALUNOS';
    FreeAndNil(frmListarHorario);
  end;
end;

procedure TfrmPrincipal.btnSelParcelaClick(Sender: TObject);
var
  vPonto: TPoint;
begin
  vPonto := TButton(Sender).ClientToScreen(Point(0, TButton(Sender).Height));
  ppSelParcela.Popup(vPonto.X, vPonto.Y);

end;

procedure TfrmPrincipal.btnSobreClick(Sender: TObject);
begin
  try
    frmSobre := TfrmSobre.Create(Self);
    frmSobre.ShowModal;
  finally
    FreeAndNil(frmSobre);
  end;
end;

procedure TfrmPrincipal.btnUsuariosClick(Sender: TObject);
begin
  try
    frmUsuario := TfrmUsuario.Create(Self);
    frmUsuario.ShowModal;
  finally
    FreeAndNil(frmUsuario);
  end;
end;

procedure TfrmPrincipal.Cadastro1Click(Sender: TObject);
begin
  // try
  // frmAluno := TfrmAluno.Create(Self);
  // frmAluno.ShowModal;
  // //frmAluno.dsAluno.DataSet.Locate('id',DM.q)
  // finally
  // FreeAndNil(frmAluno);
  // end;

  btnAlunos.Click;
end;

procedure TfrmPrincipal.dbgPrincipalDblClick(Sender: TObject);
begin
  btnBaixaBoleto.Click;
end;

procedure TfrmPrincipal.dbgPrincipalTitleClick(Column: TColumn);
begin
  if Column.FieldName <> 'Horario' then
    DM.qAluno.IndexFieldNames := Column.FieldName;
end;

procedure TfrmPrincipal.edtPesquisarPropertiesChange(Sender: TObject);
var
  vSQL: string;
begin
  case edtTipoPesquisa.ItemIndex of
    0:
      begin
        vSQL := 'SELECT * FROM aluno WHERE nome like ' +
          QuotedStr('%' + edtPesquisar.Text + '%');
      end;

    1:
      begin
        vSQL := 'SELECT * FROM aluno WHERE cpf like ' +
          QuotedStr(edtPesquisar.Text + '%');
      end;

    2:
      begin
        vSQL := 'SELECT * FROM aluno WHERE responsavel like ' +
          QuotedStr('%' + edtPesquisar.Text + '%');
      end;

    3:
      begin
        vSQL := 'SELECT * FROM aluno WHERE cpf_responsavel like ' +
          QuotedStr(edtPesquisar.Text + '%');
      end;

    8:
      begin
        vSQL := 'SELECT * FROM aluno WHERE boleto = ' +
          QuotedStr(edtPesquisar.Text);
      end
  end;

  with DM.qAluno do
  begin
    close;
    SQL.Clear;
    SQL.Add(vSQL);
    Open;
  end;
end;

procedure TfrmPrincipal.edtTipoPesquisaPropertiesChange(Sender: TObject);
begin
  case edtTipoPesquisa.ItemIndex of
    0:
      begin
        edtPesquisar.Properties.EditMask := '';
        edtPesquisar.Clear;
        edtPesquisar.SetFocus;
      end;
    1:
      begin
        edtPesquisar.Properties.EditMask := '000\.000\.000-00;1;_';
        edtPesquisar.Clear;
        edtPesquisar.SetFocus;
      end;
    2:
      begin
        edtPesquisar.Properties.EditMask := '';
        edtPesquisar.Clear;
        edtPesquisar.SetFocus;
      end;
    3:
      begin
        edtPesquisar.Properties.EditMask := '000\.000\.000-00;1;_';
        edtPesquisar.Clear;
        edtPesquisar.SetFocus;
      end;

    4:
      begin
        edtPesquisar.Enabled := false;
        btnSelHorario.Enabled := true;
        btnSelParcela.Enabled := false;
      end;

    5:
      begin
        edtPesquisar.Enabled := false;
        btnSelHorario.Enabled := false;
        btnSelParcela.Enabled := true;
      end;

    6:
      begin
        edtPesquisar.Enabled := false;
        btnSelHorario.Enabled := false;
        btnSelParcela.Enabled := true;
      end;

    7:
      begin
        edtPesquisar.Enabled  := false;
        btnSelHorario.Enabled := false;
        btnSelParcela.Enabled := false;
        listarMatriculasCanceladas;
      end;

    8:
      begin
        edtPesquisar.Properties.EditMask := '';
        edtPesquisar.Clear;
        edtPesquisar.SetFocus;
      end;

    9:
      begin
        edtPesquisar.Enabled  := false;
        btnSelHorario.Enabled := false;
        btnSelParcela.Enabled := false;
        listarNovasMatriculas;
      end;

     10:
      begin
        edtPesquisar.Enabled  := false;
        btnSelHorario.Enabled := false;
        btnSelParcela.Enabled := false;
        try
          frmParcelaPorData := TfrmParcelaPorData.Create(Self);
          frmParcelaPorData.ShowModal;
        finally
          FreeAndNil(frmParcelaPorData);
        end;
      end;

  end;
end;

procedure TfrmPrincipal.exportarExcel(AEditar:Boolean);
var
  PLANILHA: Variant;
  LINHA: integer;
  // CONT: Integer;
begin
  if (DM.qAluno.RecordCount < 1) then
  begin
    Application.MessageBox('Não há nada para ser exportado!','Aviso',
    MB_OK+MB_ICONWARNING);
    exit;
  end;

  DM.qAluno.close;
  DM.qAluno.Open;
  DM.qAluno.Refresh;
  DM.qAluno.First;

  // CONT:= DM.qAluno.RecordCount;

  // gbProgresso.Visible := True;
  // cxProgressBar1.Visible := True;

  // cxProgressBar1.Properties.Max:=CONT;
  // cxProgressBar1.Position:=0;
  // qPesquisar.Filtered:=FALSE;
  pnProcessando.Visible := true;

  LINHA := 2;
  PLANILHA := CreateOleObject('Excel.Application');
  PLANILHA.caption := 'Lista de Alunos';
  PLANILHA.Visible := false;
  PLANILHA.workbooks.Add(1);
  PLANILHA.cells[1, 1] := 'Nome';
  PLANILHA.cells[1, 2] := 'Telefone';
  PLANILHA.cells[1, 3] := 'Horário';
  PLANILHA.cells[1, 4] := 'CPF';
  PLANILHA.cells[1, 5] := 'Responsável';
  PLANILHA.cells[1, 6] := 'Boleto';
  PLANILHA.cells[1, 7] := 'Certificado';
  PLANILHA.cells[1, 8] := 'CPF do Responsável';
  PLANILHA.cells[1, 9] := 'Rua';
  PLANILHA.cells[1, 10] := 'Número';
  PLANILHA.cells[1, 11] := 'Bairro';
  PLANILHA.cells[1, 12] := 'Cidade';
  PLANILHA.cells[1, 13] := 'Email';
  PLANILHA.cells[1, 14] := 'CEP';

  DM.qAluno.DisableControls;
  try
    while not DM.qAluno.Eof do
    begin
      { PLANILHA.cells[linha,1]:=
      UpperCase(Trim(DM.tb_config.FieldByName('unidade').AsString)) +' '
      + qPesquisarBOLETO.asstring;}

      PLANILHA.cells[LINHA, 1] := DM.qAlunonome.Value;
      PLANILHA.cells[LINHA, 2] := DM.qAlunotelefone.Value;
      PLANILHA.cells[LINHA, 3] := DM.qAlunoHorario.Value;
      PLANILHA.cells[LINHA, 4] := DM.qAlunocpf.Value;
      PLANILHA.cells[LINHA, 5] := DM.qAlunoresponsavel.Value;
      PLANILHA.cells[LINHA, 6] := DM.qAlunoboleto.Value;
      PLANILHA.cells[LINHA, 7] := DM.qAlunocertificado.Value;
      PLANILHA.cells[LINHA, 8] := DM.qAlunocpf_responsavel.Value;
      PLANILHA.cells[LINHA, 9] := DM.qAlunorua.Value;
      PLANILHA.cells[LINHA, 10] := DM.qAlunonumero.Value;
      PLANILHA.cells[LINHA, 11] := DM.qAlunobairro.Value;
      PLANILHA.cells[LINHA, 12] := DM.qAlunocidade.Value;
      PLANILHA.cells[LINHA, 13] := LowerCase(DM.qAlunoemail.Value);
      PLANILHA.cells[LINHA, 14] := DM.qAlunocep.Value;
      LINHA := LINHA + 1;

      if(AEditar) then
      begin
        DM.qAluno.Edit;
        DM.qAlunonovo_aluno.Value := false;
        DM.qAluno.Post;
      end;
      DM.qAluno.Next;
      // cxProgressBar1.Position:= cxProgressBar1.Position+1;
    end;
    PLANILHA.Columns.autofit;
    PLANILHA.Visible := true;
  finally

    // gbProgresso.Visible := False;
    // cxProgressBar1.Visible := False;
    pnProcessando.Visible := false;

    DM.qAluno.EnableControls;
    PLANILHA := Unassigned;
  end;
end;

procedure TfrmPrincipal.Fianas1Click(Sender: TObject);
begin
  btnBaixaBoleto.Click;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

  try

    with DM.Conexao do
    begin
      Connected := false;
      Params.Values['Database'] := ExtractFilePath(Application.ExeName) +
        'database.db';
      Connected := true;
    end;

    DM.qAluno.Open;
    DM.qHorario.Open;
    stbPrincipal.Panels[2].Text := DM.qAluno.RecordCount.ToString + ' ALUNOS';

  except
    // on e : Exception do ShowMessage( e.Message)

    Application.MessageBox('Não foi possível acessar o arquivo "database.db"',
      'Erro de carregamento', MB_OK + MB_ICONERROR);
    close;

  end;

  login;

end;

procedure TfrmPrincipal.listarMatriculasCanceladas;
var
  vSQL: string;
begin

  vSQL := 'SELECT * FROM ALUNO WHERE status_matricula = "CANCELADO" ';

  with DM.qAluno do
  begin
    close;
    SQL.Clear;
    SQL.Add(vSQL);
    Open;
  end;
  stbPrincipal.Panels[2].Text := DM.qAluno.RecordCount.ToString + ' ALUNOS';
end;

procedure TfrmPrincipal.listarNovasMatriculas;
var
  vSQL: string;
begin

  vSQL := 'SELECT * FROM ALUNO WHERE novo_aluno = 1 ';

  with DM.qAluno do
  begin
    close;
    SQL.Clear;
    SQL.Add(vSQL);
    Open;
  end;
  stbPrincipal.Panels[2].Text := DM.qAluno.RecordCount.ToString + ' ALUNOS';
end;

procedure TfrmPrincipal.listarParcelasPorData(ADataI, ADataF: TDate;
  AParcela: String);
var
  vSQL: string;
begin


  vSQL := 'SELECT * FROM ALUNO WHERE parcela'+ AParcela
  + ' IS NOT NULL AND status_matricula = "REGULAR" AND '
  + 'modificado_em BETWEEN :datai AND :dataf';

  with DM.qAluno do
  begin
    close;
    SQL.Clear;
    SQL.Add(vSQL);
    ParamByName('datai').AsDate := ADataI;
    ParamByName('dataf').AsDate := ADataF;
    Open;
  end;
  stbPrincipal.Panels[2].Text := DM.qAluno.RecordCount.ToString + ' ALUNOS';


end;

procedure TfrmPrincipal.listarPorParcelaNaoPaga(AParcela: string);
var
  vSQL: string;
begin

  vSQL := 'SELECT * FROM ALUNO WHERE (' + AParcela + ' IS NULL OR ' + AParcela +
    ' = '''') AND status_matricula = "REGULAR" ';

  with DM.qAluno do
  begin
    close;
    SQL.Clear;
    SQL.Add(vSQL);
    Open;
  end;

  stbPrincipal.Panels[2].Text := Copy(AParcela,8,2) + 'ª Parcela' + ' - ' +
  DM.qAluno.RecordCount.ToString + ' ALUNOS';
end;

procedure TfrmPrincipal.listarPorParcelaPaga(AParcela: string);
var
  vSQL: string;
begin

  vSQL := 'SELECT * FROM ALUNO WHERE ' + AParcela +
    ' IS NOT NULL AND status_matricula = "REGULAR" AND ' + AParcela +
    ' <> '''' ';

  with DM.qAluno do
  begin
    close;
    SQL.Clear;
    SQL.Add(vSQL);
    Open;
  end;
  stbPrincipal.Panels[2].Text := Copy(AParcela,8,2) + 'ª Parcela' + ' - ' +
  DM.qAluno.RecordCount.ToString + ' ALUNOS';
end;

procedure TfrmPrincipal.login;
begin
  try
    frmLogin := TfrmLogin.Create(Self);
    frmLogin.ShowModal;
  finally
    if not(usuarioLogado) then
      frmPrincipal.close;
    FreeAndNil(frmLogin);
  end;
end;

procedure TfrmPrincipal.ddwP10Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela10')
  else
    listarPorParcelaPaga('parcela10');
end;

procedure TfrmPrincipal.ddwP11Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela11')
  else
    listarPorParcelaPaga('parcela11');
end;

procedure TfrmPrincipal.ddwP1Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela1')
  else
    listarPorParcelaPaga('parcela1');
end;

procedure TfrmPrincipal.ddwP2Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela2')
  else
    listarPorParcelaPaga('parcela2');
end;

procedure TfrmPrincipal.ddwP3Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela3')
  else
    listarPorParcelaPaga('parcela3');
end;

procedure TfrmPrincipal.ddwP4Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela4')
  else
    listarPorParcelaPaga('parcela4');
end;

procedure TfrmPrincipal.ddwP5Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela5')
  else
    listarPorParcelaPaga('parcela5');
end;

procedure TfrmPrincipal.ddwP6Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela6')
  else
    listarPorParcelaPaga('parcela6');
end;

procedure TfrmPrincipal.ddwP7Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela7')
  else
    listarPorParcelaPaga('parcela7');
end;

procedure TfrmPrincipal.ddwP8Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela8')
  else
    listarPorParcelaPaga('parcela8');
end;

procedure TfrmPrincipal.ddwP9Click(Sender: TObject);
begin
  if edtTipoPesquisa.ItemIndex = 6 then
    listarPorParcelaNaoPaga('parcela9')
  else
    listarPorParcelaPaga('parcela9');
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := false;
  btnLogout.Click;
end;

end.
