unit uGerarPlanilha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons,
  PngSpeedButton, PngFunctions, Vcl.ExtCtrls;

type
  TfrmGerarPlanilha = class(TForm)
    btnGerarPlanilha: TPngSpeedButton;
    btnAlterar: TPngSpeedButton;
    Label1: TLabel;
    Image1: TImage;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGerarPlanilhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerarPlanilha: TfrmGerarPlanilha;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TfrmGerarPlanilha.btnAlterarClick(Sender: TObject);
begin
  if (Application.MessageBox
  ('Tem certeza que deseja continuar? As alterações não poderão ser desfeitas',
  'Confirmar alterações',
    MB_YESNO+MB_ICONQUESTION) = mrYes) then
  begin
    Visible := false;
    frmPrincipal.exportarExcel(true);
    Close;
  end;
end;

procedure TfrmGerarPlanilha.btnGerarPlanilhaClick(Sender: TObject);
begin
  Visible := false;
  frmPrincipal.exportarExcel(false);
  Close;
end;

end.
