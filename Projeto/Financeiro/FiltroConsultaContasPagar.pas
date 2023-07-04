unit FiltroConsultaContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls;

type
  TfrmFiltroConsultaContasPagar = class(TForm)
    cbDataDespesa: TCheckBox;
    cbDataPagamento: TCheckBox;
    cbTipoDespesa: TCheckBox;
    cbFormaPagamento: TCheckBox;
    cbStatus: TCheckBox;
    Label1: TLabel;
    dtpDataDespesaInicio: TDateTimePicker;
    Label2: TLabel;
    dtpDataDespesaFim: TDateTimePicker;
    Label3: TLabel;
    dtpDataPagamentoInicio: TDateTimePicker;
    Label4: TLabel;
    dtpDataPagamentoFim: TDateTimePicker;
    cbEmAberto: TCheckBox;
    cbLiquidado: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    edtTipoDespesa: TEdit;
    btnTipoDespesa: TButton;
    edtTipoDespesaDescricao: TEdit;
    btnFormaPagamento: TButton;
    edtFormaPagamento: TEdit;
    edtFormaPagamentoDescricao: TEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbDataDespesaClick(Sender: TObject);
    procedure cbDataPagamentoClick(Sender: TObject);
    procedure cbTipoDespesaClick(Sender: TObject);
    procedure cbFormaPagamentoClick(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure btnTipoDespesaClick(Sender: TObject);
    procedure btnFormaPagamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltroConsultaContasPagar: TfrmFiltroConsultaContasPagar;

implementation

{$R *.dfm}

uses ConsultaContasPagar, Dados, TiposDespesa, FormasPagamento;

procedure TfrmFiltroConsultaContasPagar.btnFormaPagamentoClick(Sender: TObject);
begin
  frmFormaPagamento.ShowModal;
end;

procedure TfrmFiltroConsultaContasPagar.btnTipoDespesaClick(Sender: TObject);
begin
  frmTiposDespesa.ShowModal;
end;

procedure TfrmFiltroConsultaContasPagar.cbDataDespesaClick(Sender: TObject);
begin
  if (cbDataDespesa.Checked) then
    begin
      dtpDataDespesaInicio.Enabled := True;
      dtpDataDespesaFim.Enabled := True;
      cbDataPagamento.Enabled := False;
      cbTipoDespesa.Enabled := False;
      cbFormaPagamento.Enabled := False;
      cbStatus.Enabled := False;
    end
  else
    begin
      dtpDataDespesaInicio.Enabled := False;
      dtpDataDespesaFim.Enabled := False;
      cbDataPagamento.Enabled := True;
      cbTipoDespesa.Enabled := True;
      cbFormaPagamento.Enabled := True;
      cbStatus.Enabled := True;
    end

end;

procedure TfrmFiltroConsultaContasPagar.cbDataPagamentoClick(Sender: TObject);
begin
  if (cbDataPagamento.Checked) then
    begin
      dtpDataPagamentoInicio.Enabled := True;
      dtpDataPagamentoFim.Enabled := True;
      cbDataDespesa.Enabled := False;
      cbTipoDespesa.Enabled := False;
      cbFormaPagamento.Enabled := False;
      cbStatus.Enabled := False;
    end
  else
    begin
      dtpDataPagamentoInicio.Enabled := False;
      dtpDataPagamentoFim.Enabled := False;
      cbDataDespesa.Enabled := True;
      cbTipoDespesa.Enabled := True;
      cbFormaPagamento.Enabled := True;
      cbStatus.Enabled := True;
    end;
end;

procedure TfrmFiltroConsultaContasPagar.cbFormaPagamentoClick(Sender: TObject);
begin
  if (cbFormaPagamento.Checked) then
    begin
      edtFormaPagamento.Enabled := True;
      edtFormaPagamentoDescricao.Enabled := True;
      btnFormaPagamento.Enabled := True;
      cbDataDespesa.Enabled := False;
      cbTipoDespesa.Enabled := False;
      cbDataPagamento.Enabled := False;
      cbStatus.Enabled := False;
    end
  else
    begin
      edtFormaPagamento.Enabled := False;
      edtFormaPagamentoDescricao.Enabled := False;
      btnFormaPagamento.Enabled := False;
      cbDataDespesa.Enabled := True;
      cbTipoDespesa.Enabled := True;
      cbDataPagamento.Enabled := True;
      cbStatus.Enabled := True;
    end;
end;

procedure TfrmFiltroConsultaContasPagar.cbStatusClick(Sender: TObject);
begin
  if (cbStatus.Checked) then
    begin
      cbEmAberto.Enabled := True;
      cbLiquidado.Enabled := True;
      cbDataDespesa.Enabled := False;
      cbTipoDespesa.Enabled := False;
      cbDataPagamento.Enabled := False;
      cbFormaPagamento.Enabled := False;
    end
  else
    begin
      cbEmAberto.Enabled := False;
      cbLiquidado.Enabled := False;
      cbDataDespesa.Enabled := True;
      cbTipoDespesa.Enabled := True;
      cbDataPagamento.Enabled := True;
      cbFormaPagamento.Enabled := True;
    end;
end;

procedure TfrmFiltroConsultaContasPagar.cbTipoDespesaClick(Sender: TObject);
begin
  if (cbTipoDespesa.Checked) then
    begin
      edtTipoDespesa.Enabled := True;
      edtTipoDespesaDescricao.Enabled := True;
      btnTipoDespesa.Enabled := True;
      cbDataDespesa.Enabled := False;
      cbStatus.Enabled := False;
      cbDataPagamento.Enabled := False;
      cbFormaPagamento.Enabled := False;
    end
  else
    begin
      edtTipoDespesa.Enabled := False;
      edtTipoDespesaDescricao.Enabled := False;
      btnTipoDespesa.Enabled := False;
      cbDataDespesa.Enabled := True;
      cbStatus.Enabled := True;
      cbDataPagamento.Enabled := True;
      cbFormaPagamento.Enabled := True;
    end;
end;

procedure TfrmFiltroConsultaContasPagar.SpeedButton1Click(Sender: TObject);
begin

// CONSULTA POR DATA DA DESPESA
  if (cbDataDespesa.Checked) then
    dmDados.queryConsultaContasPagar.Close;
    dmDados.queryConsultaContasPagar.SQL.Clear;
    dmDados.queryConsultaContasPagar.SQL.Add('SELECT x.documento, x.data_despesa, x.data_pagamento,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.observacoes, z.descricao AS "PLANO DE CONTAS", x.valor,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.numero_parcela, x.status');
    dmDados.queryConsultaContasPagar.SQL.Add('FROM despesas x INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('WHERE data_despesa >= :data_inicio AND data_despesa <= :data_fim');
    dmDados.queryConsultaContasPagar.ParamByName('data_inicio').Value := dtpDataDespesaInicio.DateTime;
    dmDados.queryConsultaContasPagar.ParamByName('data_fim').Value := dtpDataDespesaFim.DateTime;
    dmDados.queryConsultaContasPagar.Open;
    frmFiltroConsultaContasPagar.Close;

// CONSULTA POR DATA DE PAGAMENTO
  if (cbDataPagamento.Checked) then
    dmDados.queryConsultaContasPagar.Close;
    dmDados.queryConsultaContasPagar.SQL.Clear;
    dmDados.queryConsultaContasPagar.SQL.Add('SELECT x.documento, x.data_despesa, x.data_pagamento,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.observacoes, y.descricao AS "FORMA DE PAGAMENTO", z.descricao AS "PLANO DE CONTAS", x.valor,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.numero_parcela, x.status');
    dmDados.queryConsultaContasPagar.SQL.Add('FROM despesas x INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('WHERE data_pagamento >= :data_inicio AND data_pagamento <= :data_fim');
    dmDados.queryConsultaContasPagar.ParamByName('data_inicio').Value := dtpDataPagamentoInicio.DateTime;
    dmDados.queryConsultaContasPagar.ParamByName('data_fim').Value := dtpDataPagamentoFim.DateTime;
    dmDados.queryConsultaContasPagar.Open;
    frmFiltroConsultaContasPagar.Close;

// CONSULTA POR TIPO DE DESPESA
  if (cbDataPagamento.Checked) then
    dmDados.queryConsultaContasPagar.Close;
    dmDados.queryConsultaContasPagar.SQL.Clear;
    dmDados.queryConsultaContasPagar.SQL.Add('SELECT x.documento, x.data_despesa, x.data_pagamento,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.observacoes, y.descricao AS "FORMA DE PAGAMENTO", z.descricao AS "PLANO DE CONTAS", x.valor,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.numero_parcela, x.status');
    dmDados.queryConsultaContasPagar.SQL.Add('FROM despesas x INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('WHERE z.codigo = :codigo_tipo_despesa');
    dmDados.queryConsultaContasPagar.ParamByName('codigo_tipo_despesa').Value := edtTipoDespesa.Text;
    dmDados.queryConsultaContasPagar.Open;
    frmFiltroConsultaContasPagar.Close;

// CONSULTA POR FORMA DE PAGAMENTO
  if (cbDataPagamento.Checked) then
    dmDados.queryConsultaContasPagar.Close;
    dmDados.queryConsultaContasPagar.SQL.Clear;
    dmDados.queryConsultaContasPagar.SQL.Add('SELECT x.documento, x.data_despesa, x.data_pagamento,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.observacoes, y.descricao AS "FORMA DE PAGAMENTO", z.descricao AS "PLANO DE CONTAS", x.valor,');
    dmDados.queryConsultaContasPagar.SQL.Add('x.numero_parcela, x.status');
    dmDados.queryConsultaContasPagar.SQL.Add('FROM despesas x INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
    dmDados.queryConsultaContasPagar.SQL.Add('WHERE y.codigo = :codigo_forma_pagamento');
    dmDados.queryConsultaContasPagar.ParamByName('codigo_forma_pagamento').Value := edtFormaPagamento.Text;
    dmDados.queryConsultaContasPagar.Open;
    frmFiltroConsultaContasPagar.Close;

// CONSULTA POR STATUS
  if (cbDataPagamento.Checked) and (cbEmAberto.Checked) then
    begin
      dmDados.queryConsultaContasPagar.Close;
      dmDados.queryConsultaContasPagar.SQL.Clear;
      dmDados.queryConsultaContasPagar.SQL.Add('SELECT x.documento, x.data_despesa, x.data_pagamento,');
      dmDados.queryConsultaContasPagar.SQL.Add('x.observacoes, y.descricao AS "FORMA DE PAGAMENTO", z.descricao AS "PLANO DE CONTAS", x.valor,');
      dmDados.queryConsultaContasPagar.SQL.Add('x.numero_parcela, x.status');
      dmDados.queryConsultaContasPagar.SQL.Add('FROM despesas x INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
      dmDados.queryConsultaContasPagar.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
      dmDados.queryConsultaContasPagar.SQL.Add('WHERE x.status = :status');
      dmDados.queryConsultaContasPagar.ParamByName('status').Value := 'EM ABERTO';
      dmDados.queryConsultaContasPagar.Open;
      frmFiltroConsultaContasPagar.Close;
    end
  else
    begin
      dmDados.queryConsultaContasPagar.Close;
      dmDados.queryConsultaContasPagar.SQL.Clear;
      dmDados.queryConsultaContasPagar.SQL.Add('SELECT x.documento, x.data_despesa, x.data_pagamento,');
      dmDados.queryConsultaContasPagar.SQL.Add('x.observacoes, y.descricao AS "FORMA DE PAGAMENTO", z.descricao AS "PLANO DE CONTAS", x.valor,');
      dmDados.queryConsultaContasPagar.SQL.Add('x.numero_parcela, x.status');
      dmDados.queryConsultaContasPagar.SQL.Add('FROM despesas x INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
      dmDados.queryConsultaContasPagar.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
      dmDados.queryConsultaContasPagar.SQL.Add('WHERE x.status = :status');
      dmDados.queryConsultaContasPagar.ParamByName('status').Value := 'LIQUIDADO';
      dmDados.queryConsultaContasPagar.Open;
      frmFiltroConsultaContasPagar.Close;
    end;

end;

procedure TfrmFiltroConsultaContasPagar.SpeedButton2Click(Sender: TObject);
begin
  frmFiltroConsultaContasPagar.Close;
end;

end.
