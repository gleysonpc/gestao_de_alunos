unit uListarHorario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList;

type
  TfrmListarHorario = class(TForm)
    dbgHoraios: TDBGrid;
    Panel1: TPanel;
    btnSalvar: TPngSpeedButton;
    btnCancelar: TPngSpeedButton;
    qHorario: TFDQuery;
    dsHorario: TDataSource;
    qHorarioid: TFDAutoIncField;
    qHorariodescricao: TWideStringField;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListarHorario: TfrmListarHorario;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmListarHorario.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmListarHorario.btnSalvarClick(Sender: TObject);
begin
  with DM.qAluno do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ALUNO WHERE horarioID = :id');
    ParamByName('id').Value := qHorarioid.Value;
    open;
  end;
  Close;
end;

procedure TfrmListarHorario.FormShow(Sender: TObject);
begin
  qHorario.Open;
end;

end.
