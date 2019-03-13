unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    SQLiteDriverLink: TFDPhysSQLiteDriverLink;
    qUsuario: TFDQuery;
    qUsuarioid: TFDAutoIncField;
    qUsuarionome: TWideStringField;
    qUsuariologin: TWideStringField;
    qUsuariosenha: TWideStringField;
    qUsuarionivel: TStringField;
    qAluno: TFDQuery;
    qAlunoid: TFDAutoIncField;
    qAlunonome: TWideStringField;
    qAlunocpf: TWideStringField;
    qAlunotelefone: TWideStringField;
    qAlunoemail: TWideStringField;
    qAlunorua: TWideStringField;
    qAlunocomplemento: TWideStringField;
    qAlunonumero: TWideStringField;
    qAlunobairro: TWideStringField;
    qAlunocidade: TWideStringField;
    qAlunoestado: TWideStringField;
    qAlunocep: TWideStringField;
    qAlunoresponsavel: TWideStringField;
    qAlunocpf_responsavel: TWideStringField;
    dsAluno: TDataSource;
    qHorario: TFDQuery;
    qHorarioid: TFDAutoIncField;
    qHorariodescricao: TWideStringField;
    qAlunoparcela1: TWideStringField;
    qAlunoparcela2: TWideStringField;
    qAlunoparcela3: TWideStringField;
    qAlunoparcela4: TWideStringField;
    qAlunoparcela5: TWideStringField;
    qAlunoparcela6: TWideStringField;
    qAlunoparcela7: TWideStringField;
    qAlunoparcela8: TWideStringField;
    qAlunoparcela9: TWideStringField;
    qAlunoparcela10: TWideStringField;
    qAlunoparcela11: TWideStringField;
    qAlunodata_par1: TDateField;
    qAlunodata_par2: TDateField;
    qAlunodata_par3: TDateField;
    qAlunodata_par4: TDateField;
    qAlunodata_par5: TDateField;
    qAlunodata_par6: TDateField;
    qAlunodata_par7: TDateField;
    qAlunodata_par8: TDateField;
    qAlunodata_par9: TDateField;
    qAlunodata_par10: TDateField;
    qAlunodata_par11: TDateField;
    qAlunohorarioID: TIntegerField;
    qAlunoHorario: TStringField;
    tbVersion: TFDTable;
    dsVersion: TDataSource;
    tbVersiondb: TFloatField;
    tbVersionsw: TFloatField;
    tbConfig: TFDTable;
    tbConfigunidade: TWideStringField;
    dsConfig: TDataSource;
    tbConfigparcela1: TDateField;
    tbConfigparcela2: TWideStringField;
    tbConfigparcela3: TWideStringField;
    tbConfigparcela4: TWideStringField;
    tbConfigparcela5: TWideStringField;
    tbConfigparcela6: TWideStringField;
    tbConfigparcela7: TWideStringField;
    tbConfigparcela8: TWideStringField;
    tbConfigparcela9: TWideStringField;
    tbConfigparcela10: TWideStringField;
    tbConfigparcela11: TWideStringField;
    tbConfigvencimento: TIntegerField;
    tbConfigtolerancia: TIntegerField;
    qAlunostatus_matricula: TWideStringField;
    qAlunoobs: TWideMemoField;
    qAlunocertificado: TWideStringField;
    qAlunonovo_aluno: TBooleanField;
    qAlunoboleto: TIntegerField;
    qAlunocriado_em: TDateField;
    qAlunomodificado_em: TDateField;
    qAlunoselecionado: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
