unit FormasPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFormaPagamento = class(TForm)
    edtDescricao: TEdit;
    edtBanco: TEdit;
    edtAgencia: TEdit;
    edtConta: TEdit;
    edtBandeira: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnNovo: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    Label6: TLabel;
    btnEditar: TSpeedButton;
    DBGrid1: TDBGrid;
    edtCodigo: TEdit;
    Label7: TLabel;
    edtBusca: TEdit;
    CheckBox1: TCheckBox;
    procedure btnSalvarClick(Sender: TObject);
    procedure BuscarFormadePagamento1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure edtBuscaChange(Sender: TObject);
  private
    { Private declarations }
    procedure habilitarCampos;
    procedure desabilitarCampos;
    procedure associarCampos;
    procedure limparCampos;
    procedure listar;
    procedure entradaContasPagar;
    procedure entradaFiltroConsultaContasPagar;
    procedure buscaDescricao;
  public
    { Public declarations }
  end;

var
  frmFormaPagamento: TfrmFormaPagamento;

implementation

{$R *.dfm}

uses ConsultaFormasPagamento, Dados, RegistroContasPagar,
  FiltroConsultaContasPagar;

procedure TfrmFormaPagamento.BuscarFormadePagamento1Click(Sender: TObject);
begin
frmConsultaFormasPagamento.ShowModal;
end;

procedure TfrmFormaPagamento.CheckBox1Click(Sender: TObject);
begin
  edtBusca.Enabled := True;
  btnEditar.Enabled := True;
  btnExcluir.Enabled := True;
end;

procedure TfrmFormaPagamento.DBGrid1CellClick(Column: TColumn);
begin
  habilitarCampos;
  btnEditar.Enabled := True;
  btnExcluir.Enabled := True;
  btnSalvar.Enabled := False;

  dmDados.tbFormaPagamento.Edit;
  edtDescricao.Text := dmDados.queryFormaPagamento.FieldByName('descricao').Value;
  edtBanco.Text := dmDados.queryFormaPagamento.FieldByName('banco').Value;
  edtAgencia.Text := dmDados.queryFormaPagamento.FieldByName('agencia').Value;
  edtConta.Text := dmDados.queryFormaPagamento.FieldByName('conta').Value;
  edtBandeira.Text := dmDados.queryFormaPagamento.FieldByName('bandeira').Value;
  edtCodigo.Text := dmDados.queryFormaPagamento.FieldByName('codigo').Value;

end;

procedure TfrmFormaPagamento.DBGrid1DblClick(Sender: TObject);
begin
  entradaContasPagar();
  entradaFiltroConsultaContasPagar();
end;

procedure TfrmFormaPagamento.desabilitarCampos;
begin
  edtDescricao.Enabled := False;
  edtBanco.Enabled := False;
  edtAgencia.Enabled := False;
  edtConta.Enabled := False;
  edtBandeira.Enabled := False;
  btnNovo.Enabled := True;
  btnEditar.Enabled := False;
  btnSalvar.Enabled := False;
  btnExcluir.Enabled := False;
end;

procedure TfrmFormaPagamento.edtBuscaChange(Sender: TObject);
begin
  buscaDescricao();
end;

procedure TfrmFormaPagamento.entradaContasPagar;
begin
  frmFormaPagamento.Close;
  frmRegistroContasPagar.edtFormaPagamento.Text := DBGrid1.Fields [0].Value;
  frmRegistroContasPagar.edtDescricaoFormaPagamento.Text := DBGrid1.Fields [1].Value;
end;

procedure TfrmFormaPagamento.entradaFiltroConsultaContasPagar;
begin
  frmFormaPagamento.Close;
  frmFiltroConsultaContasPagar.edtFormaPagamento.Text := DBGrid1.Fields [0].Value;
  frmFiltroConsultaContasPagar.edtFormaPagamentoDescricao.Text := DBGrid1.Fields [1].Value;
end;

procedure TfrmFormaPagamento.FormClick(Sender: TObject);
begin
  desabilitarCampos();
  limparCampos();
  dmDados.tbFormaPagamento.Cancel;
end;

procedure TfrmFormaPagamento.FormShow(Sender: TObject);
begin
  desabilitarCampos();
  limparCampos();
end;

procedure TfrmFormaPagamento.habilitarCampos;
begin
  edtDescricao.Enabled := True;
  edtBanco.Enabled := True;
  edtAgencia.Enabled := True;
  edtConta.Enabled := True;
  edtBandeira.Enabled := True;
  btnNovo.Enabled := False;
  btnEditar.Enabled := True;
  btnSalvar.Enabled := True;
  btnExcluir.Enabled := False;
end;

procedure TfrmFormaPagamento.limparCampos;
begin
  edtDescricao.Text := '';
  edtBanco.Text := '';
  edtAgencia.Text := '';
  edtConta.Text := '';
  edtBandeira.Text := '';
end;

procedure TfrmFormaPagamento.listar;
begin
  dmDados.queryFormaPagamento.Close;
  dmDados.queryFormaPagamento.SQL.Clear;
  dmDados.queryFormaPagamento.SQL.Add('SELECT codigo, descricao, banco, agencia, conta, bandeira, data_cadastro FROM forma_pagamento');
  dmDados.queryFormaPagamento.Open;
end;

procedure TfrmFormaPagamento.associarCampos;
begin
  dmDados.tbFormaPagamento.FieldByName('descricao').Value := edtDescricao.Text;
  dmDados.tbFormaPagamento.FieldByName('banco').Value := edtBanco.Text;
  dmDados.tbFormaPagamento.FieldByName('agencia').Value := edtAgencia.Text;
  dmDados.tbFormaPagamento.FieldByName('conta').Value := edtConta.Text;
  dmDados.tbFormaPagamento.FieldByName('bandeira').Value := edtBandeira.Text;
  //dmDados.tbFormaPagamento.FieldByName('codigo').Value := edtCodigo.Text;
end;

procedure TfrmFormaPagamento.btnEditarClick(Sender: TObject);
begin
  if Trim(edtDescricao.Text) = '' then
    begin
		  MessageDlg('Preencha a Descri��o!', mtInformation, mbOKCancel, 0);
		  edtDescricao.SetFocus;
		  //exit;
    end;

    associarCampos();
    dmDados.tbFormaPagamento.FieldByName('codigo').Value := edtCodigo.Text;
    dmDados.queryFormaPagamento.Close;
    dmDados.queryFormaPagamento.SQL.Clear;
    dmDados.queryFormaPagamento.SQL.Add('UPDATE forma_pagamento SET descricao = :descricao, banco = :banco, agencia = :agencia, conta = :conta, bandeira = :bandeira WHERE codigo = :codigo');
    dmDados.queryFormaPagamento.ParamByName('descricao').Value := edtDescricao.Text;
    dmDados.queryFormaPagamento.ParamByName('banco').Value := edtBanco.Text;
    dmDados.queryFormaPagamento.ParamByName('agencia').Value := edtAgencia.Text;
    dmDados.queryFormaPagamento.ParamByName('conta').Value := edtConta.Text;
    dmDados.queryFormaPagamento.ParamByName('bandeira').Value := edtBandeira.Text;
    dmDados.queryFormaPagamento.ParamByName('codigo').Value := edtCodigo.Text;
    dmDados.queryFormaPagamento.ExecSQL;

    listar;
    MessageDlg('Editado com sucesso!', mtInformation, mbOKCancel, 0);
    btnEditar.Enabled := False;
    btnExcluir.Enabled := False;
    limparCampos;
    desabilitarCampos;
end;

procedure TfrmFormaPagamento.btnExcluirClick(Sender: TObject);
begin
  if (MessageDlg('Deseja excluir o registro', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
        dmDados.queryFormaPagamento.Close;
        dmDados.queryFormaPagamento.SQL.Clear;
        dmDados.queryFormaPagamento.SQL.Add('DELETE FROM forma_pagamento WHERE codigo = :codigo');
        dmDados.queryFormaPagamento.ParamByName('codigo').Value := edtCodigo.Text;
        dmDados.queryFormaPagamento.ExecSQL;
        MessageDlg('Exclu�do com sucesso!', mtInformation, mbOKCancel, 0);
        listar;

        limparCampos();
        btnEditar.Enabled := False;
		    btnExcluir.Enabled := False;
    end;

end;

procedure TfrmFormaPagamento.btnNovoClick(Sender: TObject);
begin
  habilitarCampos();
  limparCampos();
  btnEditar.Enabled := False;
  dmDados.tbFormaPagamento.Insert; // ENTRA NO MODO DE INSER��O DE DADOS

end;

procedure TfrmFormaPagamento.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtDescricao.Text) = '' then
    begin
		  MessageDlg('Preencha a Descri��o!', mtInformation, mbOKCancel, 0);
		  edtDescricao.SetFocus;
		  //exit;
    end;

  associarCampos();
  dmDados.tbFormaPagamento.Post;
  MessageDlg('Salvo com sucesso', mtInformation, mbOKCancel, 0);
  limparCampos();
  desabilitarCampos();
  btnSalvar.Enabled := False;
  listar();

end;

procedure TfrmFormaPagamento.buscaDescricao;
begin
  dmDados.queryFormaPagamento.Close;
  dmDados.queryFormaPagamento.SQL.Clear;
  dmDados.queryFormaPagamento.SQL.Add('SELECT codigo, descricao, banco, agencia, conta, bandeira, data_cadastro FROM forma_pagamento WHERE descricao LIKE :descricao');
  dmDados.queryFormaPagamento.ParamByName('descricao').Value := '%' + edtBusca.Text + '%';
  dmDados.queryFormaPagamento.Open;
end;

end.
