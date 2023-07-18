object frmRelatorioContasPagar: TfrmRelatorioContasPagar
  Left = 0
  Top = 0
  Caption = 'frmRelatorioContasPagar'
  ClientHeight = 500
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object rlrContasPagar: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dmDados.dsConsultaContasPagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object rlbCabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 35
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 3
        Width = 39
        Height = 16
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 656
        Top = 3
        Width = 59
        Height = 16
        Alignment = taRightJustify
        Info = itHour
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 304
        Top = 3
        Width = 150
        Height = 16
        Caption = 'SUPER FINAN'#199'AS 3000'
      end
    end
    object rlbTitulo: TRLBand
      Left = 38
      Top = 73
      Width = 718
      Height = 56
      BandType = btTitle
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 56
        Align = faClient
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'RELAT'#211'RIO DE CONTAS A PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlbColunas: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 24
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel3: TRLLabel
        Left = 3
        Top = 6
        Width = 25
        Height = 14
        Caption = 'DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 41
        Top = 6
        Width = 82
        Height = 14
        Caption = 'DATA DESPESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 193
        Top = 6
        Width = 68
        Height = 14
        Caption = 'OBS / DESCR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 295
        Top = 6
        Width = 79
        Height = 14
        Caption = 'FORMA PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 440
        Top = 6
        Width = 100
        Height = 14
        Caption = 'PLANO DE CONTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 546
        Top = 6
        Width = 56
        Height = 14
        Caption = 'VALOR R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 608
        Top = 6
        Width = 31
        Height = 14
        Caption = 'PARC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 671
        Top = 6
        Width = 44
        Height = 14
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 129
        Top = 6
        Width = 39
        Height = 14
        Caption = 'PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object rlbDetail: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 24
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLDBText1: TRLDBText
        Left = 3
        Top = 6
        Width = 39
        Height = 10
        DataField = 'documento'
        DataSource = dmDados.dsConsultaContasPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 48
        Top = 6
        Width = 48
        Height = 10
        DataField = 'data_despesa'
        DataSource = dmDados.dsConsultaContasPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 193
        Top = 6
        Width = 45
        Height = 10
        DataField = 'observacoes'
        DataSource = dmDados.dsConsultaContasPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 295
        Top = 6
        Width = 96
        Height = 10
        DataField = 'FORMA DE PAGAMENTO'
        DataSource = dmDados.dsConsultaContasPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 440
        Top = 6
        Width = 76
        Height = 10
        DataField = 'PLANO DE CONTAS'
        DataSource = dmDados.dsConsultaContasPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 546
        Top = 6
        Width = 19
        Height = 10
        DataField = 'valor'
        DataSource = dmDados.dsConsultaContasPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 608
        Top = 6
        Width = 57
        Height = 10
        DataField = 'numero_parcela'
        DataSource = dmDados.dsConsultaContasPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 671
        Top = 6
        Width = 22
        Height = 10
        DataField = 'status'
        DataSource = dmDados.dsConsultaContasPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 130
        Top = 6
        Width = 57
        Height = 10
        DataField = 'data_pagamento'
        DataSource = dmDados.dsDespesas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object rlbRodape: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 56
      BandType = btFooter
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 432
    Top = 376
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 632
    Top = 384
  end
end
