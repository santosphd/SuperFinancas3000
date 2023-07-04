object frmConsultaFormasPagamento: TfrmConsultaFormasPagamento
  Left = 0
  Top = 0
  Caption = 'Consulta de Formas de Pagamento'
  ClientHeight = 338
  ClientWidth = 628
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 303
    Height = 28
    Caption = 'Consulta de Formas de Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 88
    Width = 628
    Height = 250
    Align = alBottom
    DataSource = dmDados.dsFormaPagamento
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'CODIGO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'banco'
        Title.Caption = 'BANCO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agencia'
        Title.Caption = 'AGENCIA'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'conta'
        Title.Caption = 'CONTA'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bandeira'
        Title.Caption = 'BANDEIRA'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_cadastro'
        Title.Caption = 'DATA DE CADASTRO'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 380
    Top = 57
    Width = 240
    Height = 25
    TabOrder = 1
  end
end
