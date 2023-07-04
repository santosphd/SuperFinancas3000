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
    procedure btnTipoDespesaClick(Sender: TObject);
    procedure btnFormaPagamentoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
    procedure habilitarCampos;
    procedure desabilitarCampos;
    procedure associarCampos;
    procedure limparCampos;
    procedure listar;
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

procedure TfrmRegistroContasPagar.DBGrid1CellClick(Column: TColumn);
begin
  btnExcluir.Enabled := True;
  btnSalvar.Enabled := False;
  edtID.Text := dmDados.queryDespesas.FieldByName('id').Value;

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
  cbStatus.Enabled := False;
  btnNovo.Enabled := True;
  btnSalvar.Enabled := False;
  btnExcluir.Enabled := False;
end;

procedure TfrmRegistroContasPagar.FormClick(Sender: TObject);
begin
  desabilitarCampos();
  limparCampos();
end;

procedure TfrmRegistroContasPagar.FormShow(Sender: TObject);
begin
  desabilitarCampos();
  limparCampos();
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
  cbStatus.Enabled := True;
  btnNovo.Enabled := False;
  btnSalvar.Enabled := True;
  btnExcluir.Enabled := True;
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
end;

procedure TfrmRegistroContasPagar.listar;
begin
  dmDados.queryDespesas.Close;
  dmDados.queryDespesas.SQL.Clear;
  dmDados.queryDespesas.SQL.Add('SELECT id, documento, data_despesa, observacoes, condicao_pagamento, gerar_parcelas, data_pagamento, data_cadastro, codigo_tipo_despesas, codigo_forma_pagamento FROM despesas');
  dmDados.queryDespesas.Open;
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
        MessageDlg('Exclu�do com sucesso!', mtInformation, mbOKCancel, 0);
        listar;

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
		  MessageDlg('Preencha as Observa��es!', mtInformation, mbOKCancel, 0);
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
		  MessageDlg('Preencha a Condi��o de Pagamento!', mtInformation, mbOKCancel, 0);
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
  listar();
end;

end.
