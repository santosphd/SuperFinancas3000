unit ConsultaContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmConsultaContasPagar = class(TForm)
    Label6: TLabel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cbDataPagamento: TCheckBox;
    cbDataDespesa: TCheckBox;
    dtpInicio: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbDataDespesaClick(Sender: TObject);
    procedure cbDataPagamentoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaContasPagar: TfrmConsultaContasPagar;

implementation

{$R *.dfm}

uses FiltroConsultaContasPagar, Dados, RelatorioContasPagar;

procedure TfrmConsultaContasPagar.cbDataDespesaClick(Sender: TObject);
begin
  if (cbDataDespesa.Checked) then
    begin
      cbDataPagamento.Checked := False;
      cbDataPagamento.Enabled := False;
    end
  else
    begin
      cbDataPagamento.Enabled := True;
    end;

end;

procedure TfrmConsultaContasPagar.cbDataPagamentoClick(Sender: TObject);
begin
  if (cbDataPagamento.Checked) then
    begin
      cbDataDespesa.Checked := False;
      cbDataDespesa.Enabled := False;
    end
  else
    begin
      cbDataDespesa.Enabled := True;
    end;
end;

procedure TfrmConsultaContasPagar.FormShow(Sender: TObject);
begin
  dtpInicio.DateTime := now;
  dtpFim.DateTime := now;
end;

procedure TfrmConsultaContasPagar.SpeedButton1Click(Sender: TObject);
begin
// CONSULTA POR DATA DA DESPESA
  if (cbDataDespesa.Checked) then
    dmDados.queryConsultaContasPagar.Close;
    dmDados.queryConsultaContasPagar.SQL.Clear;
    dmDados.queryConsultaContasPagar.SQL.Add('SELECT x.documento, x.data_despesa, x.data_pagamento,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.observacoes, z.plano_de_contas AS "PLANO DE CONTAS", x.valor,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.numero_parcela, x.status');
    dmDados.queryConsultaContasPagar.SQL.Add('FROM despesas x INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('WHERE data_despesa >= :data_inicio AND data_despesa <= :data_fim');
    dmDados.queryConsultaContasPagar.ParamByName('data_inicio').Value := dtpInicio.DateTime;
    dmDados.queryConsultaContasPagar.ParamByName('data_fim').Value := dtpFim.DateTime;
    dmDados.queryConsultaContasPagar.Open;
    frmFiltroConsultaContasPagar.Close;

// CONSULTA POR DATA DE PAGAMENTO
  if (cbDataPagamento.Checked) then
    dmDados.queryConsultaContasPagar.Close;
    dmDados.queryConsultaContasPagar.SQL.Clear;
    dmDados.queryConsultaContasPagar.SQL.Add('SELECT x.documento, x.data_despesa, x.data_pagamento,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.observacoes, y.descricao AS "FORMA DE PAGAMENTO", z.plano_de_contas AS "PLANO DE CONTAS", x.valor,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.numero_parcela, x.status');
    dmDados.queryConsultaContasPagar.SQL.Add('FROM despesas x INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('WHERE data_pagamento >= :data_inicio AND data_pagamento <= :data_fim');
    dmDados.queryConsultaContasPagar.ParamByName('data_inicio').Value := dtpInicio.DateTime;
    dmDados.queryConsultaContasPagar.ParamByName('data_fim').Value := dtpFim.DateTime;
    dmDados.queryConsultaContasPagar.Open;
    frmFiltroConsultaContasPagar.Close;
end;

procedure TfrmConsultaContasPagar.SpeedButton2Click(Sender: TObject);
begin
  frmRelatorioContasPagar := TfrmRelatorioContasPagar.Create(Self);
  frmRelatorioContasPagar.rlrContasPagar.Preview();
end;

end.
