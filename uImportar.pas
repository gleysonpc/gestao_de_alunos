unit uImportar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, PngSpeedButton, Vcl.StdCtrls, uImportExcel, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.Threading, PngFunctions;

type
  TfrmImportar = class(TForm)
    opdArquivo: TOpenDialog;
    edtArquivo: TEdit;
    Label1: TLabel;
    btnSelArquivo: TPngSpeedButton;
    qAluno: TFDQuery;
    dsAluno: TDataSource;
    stgAlunos: TStringGrid;
    ImportExcel: TImportExcel;
    btnImportar: TPngSpeedButton;
    Panel1: TPanel;
    ProgressBar: TProgressBar;
    btnAjuda: TPngSpeedButton;
    pnProcessando: TPanel;
    imgProcessando: TImage;
    Label3: TLabel;
    procedure btnSelArquivoClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnAjudaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportar: TfrmImportar;

implementation

{$R *.dfm}

uses uDM, uPlanilha;

procedure TfrmImportar.btnAjudaClick(Sender: TObject);
begin
  try
    frmPlanilha := TfrmPlanilha.Create(Self);
    frmPlanilha.ShowModal;
  finally
    FreeAndNil(frmPlanilha);
  end;
end;

procedure TfrmImportar.btnImportarClick(Sender: TObject);
begin
  if edtArquivo.Text = '' then
  begin
    Application.MessageBox('Selecione um arquivo para importar','Informação', MB_OK+MB_ICONWARNING);
    abort;
  end;

  if Application.MessageBox('A importação irá sobrescrever todos os registros atuais de modo irreversível, deseja continuar?', 'Aviso!', MB_YESNO+MB_ICONQUESTION) = mrYes then
  begin

  TTask.Run(procedure
            var
            I: Integer;
            begin
            qAluno.Open;
            ProgressBar.Max := stgAlunos.RowCount;


            for I := 0 to Pred(stgAlunos.RowCount) do
              begin
                if I = 0 then
                Continue;


                qAluno.Append;
                qAluno.FieldByName('nome').Value := stgAlunos.Cells[0,I] ;
                qAluno.FieldByName('certificado').Value := stgAlunos.Cells[0,I] ; //boleto
                qAluno.FieldByName('telefone').Value := stgAlunos.Cells[1,I] ;
                qAluno.FieldByName('cpf').Value := stgAlunos.Cells[2,I] ;
                qAluno.FieldByName('responsavel').Value := stgAlunos.Cells[3,I] ;
                qAluno.FieldByName('cpf_responsavel').Value := stgAlunos.Cells[4,I] ;
                qAluno.FieldByName('rua').Value := stgAlunos.Cells[5,I] ;
                qAluno.FieldByName('numero').Value := stgAlunos.Cells[6,I] ;
                qAluno.FieldByName('bairro').Value := stgAlunos.Cells[7,I] ;
                qAluno.FieldByName('cidade').Value := stgAlunos.Cells[8,I] ;
                qAluno.FieldByName('email').Value := stgAlunos.Cells[9,I] ;
                qAluno.Post;
                ProgressBar.Position := I;

              end;
             DM.qAluno.Refresh;
             Application.MessageBox(Pchar('Importação concluída! Total: ' +
             IntToStr(stgAlunos.RowCount) + ' registros.'),
             'Informação',MB_OK+MB_ICONINFORMATION);
             btnImportar.Enabled := false;
            end).Start;


  end;
end;

procedure TfrmImportar.btnSelArquivoClick(Sender: TObject);
begin

  try
      if opdArquivo.Execute then
      begin

        edtArquivo.Text := opdArquivo.FileName;
        ImportExcel.ExcelFile := edtArquivo.Text;
        pnProcessando.Visible := true;
        TTask.Run(procedure
        begin


        ImportExcel.ExcelParaStringGrid(stgAlunos,nil);

          TThread.Queue(nil, procedure
          begin
            pnProcessando.Visible := false;
            btnImportar.Enabled := true;
            stgAlunos.SetFocus;
          end);

        end);

      end;
  except on E : Exception do
      begin
         pnProcessando.Visible := false;
         Application.MessageBox(Pchar(E.Message), 'Erro ',MB_OK+MB_ICONWARNING);
      end;

  end;

end;

end.
