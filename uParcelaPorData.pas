unit uParcelaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmParcelaPorData = class(TForm)
    Panel1: TPanel;
    btnSalvar: TPngSpeedButton;
    btnCancelar: TPngSpeedButton;
    dataI: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    dataF: TDateTimePicker;
    Label3: TLabel;
    cbxParcela: TComboBox;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParcelaPorData: TfrmParcelaPorData;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TfrmParcelaPorData.btnCancelarClick(Sender: TObject);
begin
  frmPrincipal.btnLimparFiltro.Click;
  Close;
end;

procedure TfrmParcelaPorData.btnSalvarClick(Sender: TObject);
begin
  frmPrincipal.listarParcelasPorData(dataI.Date, dataF.Date, cbxParcela.Text);
  Close;
end;

procedure TfrmParcelaPorData.FormShow(Sender: TObject);
begin
  dataI.Date := now;
  dataF.Date := now;
end;

end.
