unit RelatorioContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLXLSFilter,
  RLPDFFilter, RLXLSXFilter;

type
  TfrmRelatorioContasPagar = class(TForm)
    rlrContasPagar: TRLReport;
    rlbCabecalho: TRLBand;
    rlbTitulo: TRLBand;
    rlbColunas: TRLBand;
    rlbDetail: TRLBand;
    rlbRodape: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLXLSXFilter1: TRLXLSXFilter;
    RLPDFFilter1: TRLPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioContasPagar: TfrmRelatorioContasPagar;

implementation

{$R *.dfm}

uses Dados;

end.
