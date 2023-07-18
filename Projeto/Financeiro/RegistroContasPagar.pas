unit RegistroContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmRegistroContasPagar = class(TForm)
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtID: TEdit;
    edtDocumento: TEdit;
    dtpDataDespesa: TDateTimePicker;
    edtObservacoes: TEdit;
    edtValor: TEdit;
    cbCondicaoPagamento: TComboBox;
    edtQuantidadeParcelas: TEdit;
    dtpDataPagamento: TDateTimePicker;
    btnNovo: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    DBGrid1: TDBGrid;
    edtTipoDespesa: TEdit;
    btnTipoDespesa: TButton;
    btnFormaPagamento: TButton;
    edtFormaPagamento: TEdit;
    Label12: TLabel;
    cbStatus: TComboBox;
    btnEditar: TSpeedButton;
    cbEmAberto: TCheckBox;
    edtDescricaoTipoDespesa: TEdit;
    edtDescricaoFormaPagamento: TEdit;
    edtBusca: TEdit;
    cbConsultaDesc: TCheckBox;
    procedure btnTipoDespesaClick(Sender: TObject);
    procedure btnFormaPagamentoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure cbEmAbertoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure cbConsultaDescClick(Sender: TObject);
    procedure edtBuscaChange(Sender: TObject);
  private
    { Private declarations }
    procedure exibirConsultaInicial;
    procedure habilitarCampos;
    procedure desabilitarCampos;
    procedure associarCampos;
    procedure limparCampos;
    procedure listar;
    procedure buscaDescricao;
  public
    { Public declarations }
  end;

var
  frmRegistroContasPagar: TfrmRegistroContasPagar;

implementation

{$R *.dfm}

uses Dados, TiposDespesa, FormasPagamento;

procedure TfrmRegistroContasPagar.btnTipoDespesaClick(Sender: TObject);
begin
  frmTiposDespesa.ShowModal;
end;

procedure TfrmRegistroContasPagar.buscaDescricao;
begin
  dmDados.queryDespesas.Close;
  dmDados.queryDespesas.SQL.Clear;
  dmDados.queryDespesas.SQL.Add('SELECT x.id, x.documento, x.data_despesa, x.data_pagamento,');
  dmDados.queryDespesas.SQL.Add('x.observacoes, x.codigo_forma_pagamento, y.descricao AS "FORMA DE PAGAMENTO",');
  dmDados.queryDespesas.SQL.Add('x.codigo_tipo_despesas, z.descricao AS "PLANO DE CONTAS", x.valor,');
  dmDados.queryDespesas.SQL.Add('x.condicao_pagamento, x.numero_parcela, x.status, x.data_cadastro');
  dmDados.queryDespesas.SQL.Add('FROM despesas x');
  dmDados.queryDespesas.SQL.Add('INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
  dmDados.queryDespesas.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
  dmDados.queryDespesas.SQL.Add('WHERE x.observacoes LIKE :observacoes');
  dmDados.queryDespesas.ParamByName('observacoes').Value := '%' + edtBusca.Text + '%';
  dmDados.queryDespesas.Open;
end;

procedure TfrmRegistroContasPagar.cbEmAbertoClick(Sender: TObject);
begin
  if (cbEmAberto.Checked) then
    begin
      exibirConsultaInicial();
    end
  else
    begin
      buscaDescricao();
    end;
end;

procedure TfrmRegistroContasPagar.cbConsultaDescClick(Sender: TObject);
begin
  edtBusca.Enabled := True;
  btnEditar.Enabled := True;
  btnExcluir.Enabled := True;
end;

procedure TfrmRegistroContasPagar.DBGrid1CellClick(Column: TColumn);
begin
  habilitarCampos();
  //associarCampos();
  btnExcluir.Enabled := True;
  btnEditar.Enabled := True;
  btnSalvar.Enabled := False;

  dmDados.tbDespesas.Edit;
  edtID.Text := dmDados.queryDespesas.FieldByName('id').Value;
  edtDocumento.Text := dmDados.queryDespesas.FieldByName('documento').Value;
  dtpDataDespesa.DateTime := dmDados.queryDespesas.FieldByName('data_despesa').Value;
  edtObservacoes.Text := dmDados.queryDespesas.FieldByName('observacoes').Value;
  edtTipoDespesa.Text := dmDados.queryDespesas.FieldByName('codigo_tipo_despesas').Value;
  edtValor.Text := dmDados.queryDespesas.FieldByName('valor').Value;
  edtFormaPagamento.Text := dmDados.queryDespesas.FieldByName('codigo_forma_pagamento').Value;
  cbCondicaoPagamento.Text := dmDados.queryDespesas.FieldByName('condicao_pagamento').Value;
  edtQuantidadeParcelas.Text := dmDados.queryDespesas.FieldByName('numero_parcela').Value;
  dtpDataPagamento.DateTime := dmDados.queryDespesas.FieldByName('data_pagamento').Value;
  cbStatus.Text := dmDados.queryDespesas.FieldByName('status').Value;

end;

procedure TfrmRegistroContasPagar.associarCampos;
begin
  //dmDados.tbDespesas.FieldByName('id').Value := edtID.Text;
  dmDados.tbDespesas.FieldByName('documento').Value := edtDocumento.Text;
  dmDados.tbDespesas.FieldByName('data_despesa').Value := dtpDataDespesa.Date;
  dmDados.tbDespesas.FieldByName('observacoes').Value := edtObservacoes.Text;
  dmDados.tbDespesas.FieldByName('codigo_tipo_despesas').Value := edtTipoDespesa.Text;
  dmDados.tbDespesas.FieldByName('valor').Value := edtValor.Text;
  dmDados.tbDespesas.FieldByName('codigo_forma_pagamento').Value := edtFormaPagamento.Text;
  dmDados.tbDespesas.FieldByName('condicao_pagamento').Value := cbCondicaoPagamento.Text;
  dmDados.tbDespesas.FieldByName('numero_parcela').Value := edtQuantidadeParcelas.Text;
  dmDados.tbDespesas.FieldByName('data_pagamento').Value := dtpDataPagamento.Date;
  dmDados.tbDespesas.FieldByName('status').Value := cbStatus.Text;
end;

procedure TfrmRegistroContasPagar.desabilitarCampos;
begin
  edtID.Enabled := False;
  edtDocumento.Enabled := False;
  dtpDataDespesa.Enabled := False;
  edtObservacoes.Enabled := False;
  edtTipoDespesa.Enabled := False;
  edtValor.Enabled := False;
  edtFormaPagamento.Enabled := False;
  cbCondicaoPagamento.Enabled := False;
  edtQuantidadeParcelas.Enabled := False;
  dtpDataDespesa.Enabled := False;
  dtpDataPagamento.Enabled := False;
  cbStatus.Enabled := False;
  btnNovo.Enabled := True;
  btnSalvar.Enabled := False;
  btnEditar.Enabled := False;
  btnExcluir.Enabled := False;
  btnTipoDespesa.Enabled := False;
end;

procedure TfrmRegistroContasPagar.edtBuscaChange(Sender: TObject);
begin
    buscaDescricao();
end;

procedure TfrmRegistroContasPagar.exibirConsultaInicial;
begin
  dmDados.queryDespesas.Close;
  dmDados.queryDespesas.SQL.Clear;
  dmDados.queryDespesas.SQL.Add('SELECT x.id, x.documento, x.data_despesa, x.data_pagamento,');
  dmDados.queryDespesas.SQL.Add('x.observacoes, x.codigo_forma_pagamento, y.descricao AS "FORMA DE PAGAMENTO",');
  dmDados.queryDespesas.SQL.Add('x.codigo_tipo_despesas, z.descricao AS "PLANO DE CONTAS", x.valor,');
  dmDados.queryDespesas.SQL.Add('x.condicao_pagamento, x.numero_parcela, x.status, x.data_cadastro');
  dmDados.queryDespesas.SQL.Add('FROM despesas x');
  dmDados.queryDespesas.SQL.Add('INNER JOIN forma_pagamento y ON x.codigo_forma_pagamento = y.codigo');
  dmDados.queryDespesas.SQL.Add('INNER JOIN tipo_despesas z ON x.codigo_tipo_despesas = z.codigo');
  dmDados.queryDespesas.SQL.Add('WHERE x.status = "EM ABERTO" ORDER BY x.data_pagamento');
  dmDados.queryDespesas.Open;
end;

procedure TfrmRegistroContasPagar.FormClick(Sender: TObject);
begin
  desabilitarCampos();
  limparCampos();
  dmDados.tbDespesas.Cancel;
end;

procedure TfrmRegistroContasPagar.FormShow(Sender: TObject);
begin
  desabilitarCampos();
  limparCampos();
  dtpDataDespesa.DateTime := now;
  dtpDataPagamento.DateTime := now;
  exibirConsultaInicial();
end;

procedure TfrmRegistroContasPagar.habilitarCampos;
begin
  edtID.Enabled := False;
  edtDocumento.Enabled := True;
  dtpDataDespesa.Enabled := True;
  edtObservacoes.Enabled := True;
  edtTipoDespesa.Enabled := False;
  edtValor.Enabled := True;
  edtFormaPagamento.Enabled := False;
  cbCondicaoPagamento.Enabled := True;
  edtQuantidadeParcelas.Enabled := True;
  dtpDataDespesa.Enabled := True;
  dtpDataPagamento.Enabled := True;
  cbStatus.Enabled := True;
  btnNovo.Enabled := False;
  btnSalvar.Enabled := True;
  btnExcluir.Enabled := True;
  btnTipoDespesa.Enabled := True;
end;

procedure TfrmRegistroContasPagar.limparCampos;
begin
  edtID.Text := '';
  edtDocumento.Text := '';
  edtObservacoes.Text := '';
  edtTipoDespesa.Text := '';
  edtValor.Text := '';
  edtFormaPagamento.Text := '';
  cbCondicaoPagamento.Text := '';
  edtQuantidadeParcelas.Text := '1';
  cbStatus.Text := '';
  edtBusca.Text := '';
  edtDescricaoTipoDespesa.Text := '';
  edtDescricaoFormaPagamento.Text := '';
end;

procedure TfrmRegistroContasPagar.listar;
begin
  dmDados.queryDespesas.Close;
  dmDados.queryDespesas.SQL.Clear;
  dmDados.queryDespesas.SQL.Add('SELECT id, documento, data_despesa, observacoes, condicao_pagamento, gerar_parcelas, data_pagamento, data_cadastro, codigo_tipo_despesas, codigo_forma_pagamento FROM despesas WHERE data_cadastro = CURDATE()');
  dmDados.queryDespesas.Open;
end;

procedure TfrmRegistroContasPagar.btnEditarClick(Sender: TObject);
begin
  if Trim(edtDocumento.Text) = '' then
    begin
		  MessageDlg('Preencha o Documento!', mtInformation, mbOKCancel, 0);
		  edtDocumento.SetFocus;
		  //exit;
    end;

  if Trim(edtObservacoes.Text) = '' then
    begin
		  MessageDlg('Preencha as Observações!', mtInformation, mbOKCancel, 0);
		  edtObservacoes.SetFocus;
		  //exit;
    end;

  if Trim(edtTipoDespesa.Text) = '' then
    begin
		  MessageDlg('Preencha o Tipo de Despesa!', mtInformation, mbOKCancel, 0);
		  edtTipoDespesa.SetFocus;
		  //exit;
    end;

  if Trim(edtValor.Text) = '' then
    begin
		  MessageDlg('Preencha o Valor!', mtInformation, mbOKCancel, 0);
		  edtValor.SetFocus;
		  //exit;
    end;

  if Trim(edtFormaPagamento.Text) = '' then
    begin
		  MessageDlg('Preencha a Forma de Pagamento!', mtInformation, mbOKCancel, 0);
		  edtFormaPagamento.SetFocus;
		  //exit;
    end;

  if Trim(cbCondicaoPagamento.Text) = '' then
    begin
		  MessageDlg('Preencha a Condição de Pagamento!', mtInformation, mbOKCancel, 0);
		  cbCondicaoPagamento.SetFocus;
		  //exit;
    end;

  if Trim(cbStatus.Text) = '' then
    begin
		  MessageDlg('Preencha o Status!', mtInformation, mbOKCancel, 0);
		  cbStatus.SetFocus;
		  //exit;
    end;

  associarCampos();
  dmDados.queryDespesas.Close;
  dmDados.queryDespesas.SQL.Clear;
  dmDados.queryDespesas.SQL.Add('UPDATE despesas SET documento = :documento, data_despesa = :data_despesa, observacoes = :observacoes,');
  dmDados.queryDespesas.SQL.Add('codigo_tipo_despesas = :codigo_tipo_despesas, valor = :valor, codigo_forma_pagamento = :codigo_forma_pagamento,');
  dmDados.queryDespesas.SQL.Add('condicao_pagamento = :condicao_pagamento, numero_parcela = :numero_parcela, data_pagamento = :data_pagamento,');
  dmDados.queryDespesas.SQL.Add('status = :status WHERE id = :id');
  dmDados.queryDespesas.ParamByName('documento').Value := edtDocumento.Text;
  dmDados.queryDespesas.ParamByName('data_despesa').Value := dtpDataDespesa.DateTime;
  dmDados.queryDespesas.ParamByName('observacoes').Value := edtObservacoes.Text;
  dmDados.queryDespesas.ParamByName('codigo_tipo_despesas').Value := edtTipoDespesa.Text;
  dmDados.queryDespesas.ParamByName('valor').Value := edtValor.Text;
  dmDados.queryDespesas.ParamByName('codigo_forma_pagamento').Value := edtFormaPagamento.Text;
  dmDados.queryDespesas.ParamByName('condicao_pagamento').Value := cbCondicaoPagamento.Text;
  dmDados.queryDespesas.ParamByName('numero_parcela').Value := edtQuantidadeParcelas.Text;
  dmDados.queryDespesas.ParamByName('data_pagamento').Value := dtpDataPagamento.DateTime;
  dmDados.queryDespesas.ParamByName('status').Value := cbStatus.Text;
  dmDados.queryDespesas.ParamByName('id').Value:= edtID.Text;
  dmDados.queryDespesas.ExecSQL;

  exibirConsultaInicial();
  MessageDlg('Editado com sucesso!', mtInformation, mbOKCancel, 0);
  btnEditar.Enabled := False;
  btnExcluir.Enabled := False;
  limparCampos;
  desabilitarCampos;
end;

procedure TfrmRegistroContasPagar.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Deseja excluir o registro', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
        dmDados.queryDespesas.Close;
        dmDados.queryDespesas.SQL.Clear;
        dmDados.queryDespesas.SQL.Add('DELETE FROM despesas WHERE id = :id');
        dmDados.queryDespesas.ParamByName('id').Value := edtID.Text;
        dmDados.queryDespesas.ExecSQL;
        MessageDlg('Excluído com sucesso!', mtInformation, mbOKCancel, 0);
        exibirConsultaInicial();

        limparCampos();
		    btnExcluir.Enabled := False;
        desabilitarCampos();
    end;
end;

procedure TfrmRegistroContasPagar.btnFormaPagamentoClick(Sender: TObject);
begin
  frmFormaPagamento.ShowModal;
end;

procedure TfrmRegistroContasPagar.btnNovoClick(Sender: TObject);
begin
  habilitarCampos();
  limparCampos();
  btnExcluir.Enabled := False;
  dmDados.tbDespesas.Insert;
end;

procedure TfrmRegistroContasPagar.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtDocumento.Text) = '' then
    begin
		  MessageDlg('Preencha o Documento!', mtInformation, mbOKCancel, 0);
		  edtDocumento.SetFocus;
		  //exit;
    end;

  if Trim(edtObservacoes.Text) = '' then
    begin
		  MessageDlg('Preencha as Observações!', mtInformation, mbOKCancel, 0);
		  edtObservacoes.SetFocus;
		  //exit;
    end;

  if Trim(edtTipoDespesa.Text) = '' then
    begin
		  MessageDlg('Preencha o Tipo de Despesa!', mtInformation, mbOKCancel, 0);
		  edtTipoDespesa.SetFocus;
		  //exit;
    end;

  if Trim(edtValor.Text) = '' then
    begin
		  MessageDlg('Preencha o Valor!', mtInformation, mbOKCancel, 0);
		  edtValor.SetFocus;
		  //exit;
    end;

  if Trim(edtFormaPagamento.Text) = '' then
    begin
		  MessageDlg('Preencha a Forma de Pagamento!', mtInformation, mbOKCancel, 0);
		  edtFormaPagamento.SetFocus;
		  //exit;
    end;

  if Trim(cbCondicaoPagamento.Text) = '' then
    begin
		  MessageDlg('Preencha a Condição de Pagamento!', mtInformation, mbOKCancel, 0);
		  cbCondicaoPagamento.SetFocus;
		  //exit;
    end;

  if Trim(cbStatus.Text) = '' then
    begin
		  MessageDlg('Preencha o Status!', mtInformation, mbOKCancel, 0);
		  cbStatus.SetFocus;
		  //exit;
    end;


  associarCampos();
  dmDados.tbDespesas.Post;
  MessageDlg('Salvo com sucesso', mtInformation, mbOKCancel, 0);
  limparCampos();
  desabilitarCampos();
  btnSalvar.Enabled := False;
  exibirConsultaInicial();
end;

end.
