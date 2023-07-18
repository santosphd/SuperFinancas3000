unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    T1: TMenuItem;
    iposdeDespesa1: TMenuItem;
    Financeiro1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ConsultadeContasPagar1: TMenuItem;
    Image1: TImage;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    procedure T1Click(Sender: TObject);
    procedure iposdeDespesa1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ConsultadeContasPagar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses FormasPagamento, TiposDespesa, RegistroContasPagar, ConsultaContasPagar,
  Sobre;

procedure TfrmMenu.ConsultadeContasPagar1Click(Sender: TObject);
begin
  frmConsultaContasPagar.ShowModal;
end;

procedure TfrmMenu.ContasaPagar1Click(Sender: TObject);
begin
  frmRegistroContasPagar.ShowModal;
end;

procedure TfrmMenu.iposdeDespesa1Click(Sender: TObject);
begin
  frmTiposDespesa.ShowModal;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
  frmMenu.Close;
end;

procedure TfrmMenu.Sobre1Click(Sender: TObject);
begin
  frmSobre.ShowModal;
end;

procedure TfrmMenu.T1Click(Sender: TObject);
begin
frmFormaPagamento.ShowModal;
end;

end.
