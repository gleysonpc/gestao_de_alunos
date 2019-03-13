program Gestao_de_Alunos;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDM in 'uDM.pas' {DM: TDataModule},
  uLogin in 'uLogin.pas' {frmLogin},
  uUsuario in 'uUsuario.pas' {frmUsuario},
  uAluno in 'uAluno.pas' {frmAluno},
  uHorario in 'uHorario.pas' {frmHorario},
  uBaixaBoleto in 'uBaixaBoleto.pas' {frmBaixaBoleto},
  uListarHorario in 'uListarHorario.pas' {frmListarHorario},
  Vcl.Themes,
  Vcl.Styles,
  uSobre in 'uSobre.pas' {frmSobre},
  uImportar in 'uImportar.pas' {frmImportar},
  uPlanilha in 'uPlanilha.pas' {frmPlanilha},
  uConfig in 'uConfig.pas' {frmConfig},
  uVersion in 'uVersion.pas',
  uParcelaPorData in 'uParcelaPorData.pas' {frmParcelaPorData},
  uGerarPlanilha in 'uGerarPlanilha.pas' {frmGerarPlanilha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
