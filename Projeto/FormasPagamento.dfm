object frmFormaPagamento: TfrmFormaPagamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Formas de Pagamento'
  ClientHeight = 509
  ClientWidth = 514
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClick = FormClick
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 59
    Top = 150
    Width = 31
    Height = 13
    Caption = 'Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 41
    Top = 113
    Width = 49
    Height = 13
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 49
    Top = 190
    Width = 41
    Height = 13
    Caption = 'Ag'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 59
    Top = 232
    Width = 31
    Height = 13
    Caption = 'Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 45
    Top = 269
    Width = 45
    Height = 13
    Caption = 'Bandeira'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnNovo: TSpeedButton
    Left = 91
    Top = 435
    Width = 41
    Height = 49
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A47158A47158A47158A4
      7158A47158A47158A471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A37085BD9D
      85BD9D85BD9D85BD9D85BD9D85BD9D56A26EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF56A26C84D5B15ED09D5ED09D5ED09D5ED09D70C79C53A06AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF53A0698CD8B662D19F62D19F62D19F62D19F73C89E50
      9E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF509D6592DBBA67D2A267D2A267D2
      A267D2A275C9A04D9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9A6097DDBE
      6CD3A56CD3A56CD3A56CD3A57ACBA24A985EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF49975C99DEC072D5A872D5A872D5A872D5A87FCBA546955AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4593579ADFC078D6AC78D6AC78D6AC78D6AC84CDA942
      9155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A370
      56A26C53A069509D654D9A6049975C4593573E8E5098DEBF7ED8B07ED8B07ED8
      B07ED8B08ACFAB3E8E5042915546955A4A985E4D9B63509E6753A06A56A26E58
      A47158A471A7E6CA74CAA072C89D74C99F78CBA17ECBA482CCA888CFAA8ED0AD
      85DAB485DAB485DAB485DAB477C9A072C89D74C99F78CBA17ECBA482CCA888CF
      AA8ED0AD85BD9D58A47158A471A7E6CA8CDCB88CDCB88CDCB88CDCB88CDCB88C
      DCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB8
      8CDCB88CDCB88CDCB88CDCB885BD9D58A47158A471A7E6CA93DDBC93DDBC93DD
      BC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93
      DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC85BD9D58A47158A471A7E6CA
      99DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DF
      C099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC085BD9D58
      A47158A471A7E6CAA0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4
      A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1
      C4A0E1C485BD9D58A47158A471A7E6CA94DDBD98DEBF9ADFC099DEC097DDBE92
      DBBA8CD8B684D5B1A7E3C8A7E3C8A7E3C8A7E3C87AD0A69ADFC09ADFC099DEC0
      97DDBE92DBBA8CD8B684D5B185BD9D58A47158A47156A26E53A06A509E674D9B
      634A985E46955A4291553E8E508CD8B6ADE5CCADE5CCADE5CCADE5CC80D1A93E
      8E5045935749975C4D9A60509D6553A06956A26C58A37058A471FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45935792DBBAB3E6D0B3E6D0B3E6
      D0B3E6D087D1AC429155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49975C97DDBE
      B9E8D3B9E8D3B9E8D3B9E8D38CD2AE46955AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF4D9A6099DEC0BEE9D6BEE9D6BEE9D6BEE9D691D3B14A985EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF509D659ADFC0C3EAD9C3EAD9C3EAD9C3EAD996D3B24D
      9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53A06998DEBFC7EBDBC7EBDBC7EB
      DBC7EBDB9BD4B5509E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56A26C94DDBD
      CAECDDCAECDDCAECDDCAECDD9ED5B753A06AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF58A370A7E6CAA7E6CAA7E6CAA7E6CAA7E6CAA7E6CA56A26EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF58A47158A47158A47158A47158A47158A47158A47158
      A471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = btnNovoClick
  end
  object btnExcluir: TSpeedButton
    Left = 384
    Top = 435
    Width = 41
    Height = 49
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E2616BF9616BF93842E0FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0616BF9
      616BF93B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
      FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
      42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFF3842E0
      4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
      FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
      FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
      E73741DFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85C64F3646CF96A73FD74
      7DFE7B85FE5D67F73B46E2FFFFFF3B46E25D67F77B85FE747DFE6A73FD646CF9
      5C64F34851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
      E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
      6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
      FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
      5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE4E
      55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E93640DEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF3640DE575FF05A62F25C64F35C64F35C64F35A62F2575FF036
      40DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
      F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
      5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4750E75860F15D
      65F4616AF7646DF96770FB6770FB6770FB646DF9616AF75D65F45860F14750E7
      3741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
      E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
      6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
      E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
      FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
      FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
      E73741DFFFFFFFFFFFFFFFFFFF3842E04C54EA6169F66972FC757FFE848DFE63
      6DFA3842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0636DFA848DFE757FFE
      6972FC6169F64C54EA3842E0FFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
      FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
      42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Transparent = False
    OnClick = btnExcluirClick
  end
  object btnSalvar: TSpeedButton
    Left = 184
    Top = 435
    Width = 41
    Height = 49
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF4646463D3D3D4141416B6B6BA5A5A5ADADADA9
      A9A9A8A8A8A6A6A6A4A4A4A2A2A2A0A0A09E9E9E9D9D9D9A9A9A9999999A9A9A
      9191916363633D3D3D353535414141FFFFFFFFFFFF4040409494944B4B4B8888
      88128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF312
      8BF3128BF3128BF3128BF37878787F7F7F505050343434FFFFFFFFFFFF454545
      AEAEAE99999985858525A5F725A5F725A5F725A5F725A5F725A5F725A5F725A5
      F725A5F725A5F725A5F725A5F725A5F725A5F7777777929292A4A4A4353535FF
      FFFFFFFFFF4747473E3E3E414141868686F0F0F0FFFFFFFFFFFFFDFDFDFAFAFA
      F6F6F6F3F3F3F0F0F0EEEEEEEAEAEAE7E7E7E4E4E4E7E7E7D5D5D57979793030
      30212121353535FFFFFFFFFFFF4A4A4A424242444444878787EFEFEFFFFFFFFF
      FFFFFFFFFFFEFEFEFBFBFBF8F8F8F5F5F5F3F3F3EFEFEFECECECE9E9E9ECECEC
      D9D9D9797979303030212121353535FFFFFFFFFFFF4D4D4D4747474747478787
      87EFEFEFCEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CE
      BDB5CEBDB5CEBDB5DEDEDE7B7B7B2F2F2F212121353535FFFFFFFFFFFF4F4F4F
      4C4C4C4B4B4B878787EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFCFCFCF8F8F8F5F5F5F1F1F1F5F5F5E2E2E27D7D7D2F2F2F212121353535FF
      FFFFFFFFFF5353535151514E4E4E888888EFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF6F6F6FBFBFBE6E6E67D7D7D2F2F
      2F212121353535FFFFFFFFFFFF575757575757515151898989EFEFEFCEBDB5CE
      BDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5
      ECECEC8080802F2F2F212121353535FFFFFFFFFFFF5959595B5B5B5555558B8B
      8BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF0F0F08484842F2F2F212121353535FFFFFFFFFFFF5B5B5B
      606060595959888888E9E9E9FCFCFCF5F5F5F4F4F4F4F4F4F4F4F4F5F5F5F5F5
      F5F5F5F5F5F5F5F5F5F5F6F6F6FFFFFFEAEAEA808080313131222222353535FF
      FFFFFFFFFF5E5E5E6767676060606767678787878C8C8C888888868686848484
      8282828282828181818181818181817F7F7F8080808181817979794F4F4F3232
      32272727373737FFFFFFFFFFFF6262626B6B6B6A6A6A65656562626260606056
      56564E4E4E4A4A4A4747474545454242424040403D3D3D3A3A3A393939373737
      3737373737373434342D2D2D3A3A3AFFFFFFFFFFFF6868687070706A6A6A6464
      645E5E5E5A5A5A5B5B5B6060606161615C5C5C5959595555555353535353534F
      4F4F4848484242423B3B3B3838383838383333333D3D3DFFFFFFFFFFFF6F6F6F
      7373735454544747474848483E3E3E797979B9B9B9BFBFBFB1B1B1ADADADA8A8
      A8A4A4A4A1A1A19C9C9C9898988C8C8C6B6B6B4141413C3C3C383838404040FF
      FFFFFFFFFF7575757575754141412C2C2C303030202020909090FFFFFFFFFFFF
      F1F1F1ECECECEAEAEAD5D5D5B1B1B1B3B3B3CECECEC7C7C78D8D8D4848484040
      403D3D3D434343FFFFFFFFFFFF7A7A7A7A7A7A4444443030303434342525258E
      8E8EF7F7F7FAFAFAE7E7E7E3E3E3E6E6E6B9B9B95D5D5D707070BDBDBDC3C3C3
      8989894C4C4C444444414141464646FFFFFFFFFFFF7E7E7E7D7D7D4747473131
      313535352626268D8D8DF6F6F6FAFAFAE6E6E6E2E2E2E7E7E7B5B5B54A4A4A62
      6262BABABAC3C3C38B8B8B505050484848454545494949FFFFFFFFFFFF838383
      8282824848483131313434342727278E8E8EF5F5F5FAFAFAE6E6E6E2E2E2E6E6
      E6B6B6B6515151676767BABABAC2C2C28C8C8C5353534C4C4C4A4A4A4D4D4DFF
      FFFFFFFFFF8A8A8A8888884545452B2B2B2F2F2F212121919191FFFFFFFFFFFF
      F0F0F0ECECECEAEAEAD0D0D09B9B9BA2A2A2C9C9C9C6C6C69393935858585050
      504E4E4E797979FFFFFFFFFFFF8686868484845B5B5B4B4B4B4E4E4E45454585
      8585C5C5C5C7C7C7BABABAB6B6B6B3B3B3AEAEAEA5A5A5A2A2A2A3A3A39C9C9C
      8080805F5F5F5A5A5A797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = btnSalvarClick
  end
  object Label6: TLabel
    Left = 8
    Top = 16
    Width = 305
    Height = 28
    Caption = 'Cadastro de Formas de Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnEditar: TSpeedButton
    Left = 283
    Top = 435
    Width = 41
    Height = 49
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F6FAE1DCEBD5CCE2DDD7E8F9F8FBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F7A799C37359A07458A1795EA39A87
      BCE5E1EFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8AAA8B27C6C9D866AB3
      977BBF8D6EB98164B1836DB4E8E4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDEDDDCC3
      C3C3939393929094BAB1CAAE99D89277CC8067BE9B8CCBFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFD
      FFC8D6DEBAB9B98C8C8C626262818182CACACDEEECF69A88DB836ED47C6BC8FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF9FDFF83C8F41697F0449EE386ACCEB1B1B4ABABAF919194BABABEA8A6
      B17D6FD97064D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFAFDFF8CCDF42099EE289AF52C9CFC3BA3FE8EC9FDE4EAF4
      AEAEB16C6C6E6F6F715D5A8C675FDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFF8BCCF41F99F0289AF5309DFA39A0FE41
      A4FF50AFFF7DBEEEA6A9AE5F5F6039393A3D3D3C7472D9FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CCDF51F99EF289AF5319C
      FA399FFE42A4FF4FAEFE59B8FC6CC5F86BA9C74B4A4A2B2B2B5C5C5CF7F7FCFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8ECEF41E99EE
      279BF5309CFA389FFE43A4FF4DADFF59B8FA64C2F771CCF68DD5F45D7F877979
      78FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90
      CEF41E9AEF279BF5309DFA399FFD42A5FF4EADFF58B7FB64C0F770CAF684D6F8
      8CDBFFDFEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF97D1F61E9AED269BF42F9DFA389FFD41A4FF4DACFF57B6FC63C0F76F
      C9F583D6F88FDBFEB7E4FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF9ED5F61F9BEE259BF32E9DF8369FFD3EA3FF49ABFF55B4
      FC61BEF96BC8F67CD3F790DCFDB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D7F51E99EC239AF22C9CF7359EFC3DA1FF
      48A8FF54B2FC5FBDF96BC5F67AD0F78DDBFCACE1FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2E6FA46B2F130A3F32498F631
      9CFB3CA1FF46A8FF52B0FD5EBBF969C5F679D0F68EDAFCA8E0FFFEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5F1FFB0E5FFAFE4
      FDA1DDFD79C8FD42A5FF44A5FF51B1FD5CBBF968C4F679CFF58DDAFDA6E0FFF9
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      B1E6FFC6F0FFDCF9FFDDFAFFC8F0FF97D7FF5EB8FC5BB9F967C4F579D1F78DDA
      FCA4DFFFF4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFB4E8FFBCEDFFD0F6FFD6F8FFD8F8FFC8F2FF98DAFE6EC8F7
      75CEF58DDBFCA1DEFFEFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFA6DBF2C0F5FFC6F5FFC5F2FFCAF4FFCE
      F5FFBAEDFF90DAFB8CDBFD9DDCFFEDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFB889BA2A2C4CFB9EC
      FABCF2FFBBEFFFC1F1FFBEEFFFA1E3FF99DBFFE8F7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F8
      948B87787A7A95B9C3B6F1FFB3EEFFB3EEFFB5EFFFA7E2FFE4F5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFEEF0F08988874B454460747995D1E4A4EBFF99E2FF97E1FFDBF3FF
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD0CFCF393939454133869297D0E9F3E4F8FFF4
      FCFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FBFBFAFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = btnEditarClick
  end
  object Label7: TLabel
    Left = 51
    Top = 75
    Width = 39
    Height = 15
    Caption = 'C'#243'digo'
  end
  object edtDescricao: TEdit
    Left = 96
    Top = 109
    Width = 377
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtBanco: TEdit
    Left = 96
    Top = 146
    Width = 377
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object edtAgencia: TEdit
    Left = 96
    Top = 186
    Width = 121
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object edtConta: TEdit
    Left = 96
    Top = 228
    Width = 121
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object edtBandeira: TEdit
    Left = 96
    Top = 265
    Width = 121
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 41
    Top = 309
    Width = 432
    Height = 120
    DataSource = dmDados.dsFormaPagamento
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
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
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'conta'
        Title.Caption = 'CONTA'
        Width = 60
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
  object edtCodigo: TEdit
    Left = 96
    Top = 72
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 6
  end
end
