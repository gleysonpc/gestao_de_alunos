object frmBaixaBoleto: TfrmBaixaBoleto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Micro Point Inform'#225'tica - Baixa de Boletos'
  ClientHeight = 544
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lbNome: TDBText
    Left = 8
    Top = 30
    Width = 553
    Height = 28
    DataField = 'nome'
    DataSource = DM.dsAluno
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 8
    Top = 8
    Width = 37
    Height = 16
    Caption = 'Aluno:'
    FocusControl = edtParcela8
  end
  object edtResponsavel: TDBText
    Left = 8
    Top = 86
    Width = 553
    Height = 20
    DataField = 'responsavel'
    DataSource = DM.dsAluno
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label24: TLabel
    Left = 8
    Top = 64
    Width = 76
    Height = 16
    Caption = 'Respons'#225'vel:'
    FocusControl = edtParcela8
  end
  object Label25: TLabel
    Left = 653
    Top = 33
    Width = 227
    Height = 25
    Alignment = taCenter
    Caption = 'Baixa de Pagamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 114
    Caption = '1'#170' Parcela:'
    TabOrder = 0
    Height = 89
    Width = 280
    object Label1: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela1
    end
    object Label2: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit1
    end
    object edtParcela1: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela1'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par1'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 209
    Caption = '2'#170' Parcela:'
    TabOrder = 1
    Height = 89
    Width = 280
    object Label3: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela2
    end
    object Label4: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit2
    end
    object edtParcela2: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela2'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par2'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 491
    Width = 900
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 11
    object btnSalvar: TPngSpeedButton
      AlignWithMargins = True
      Left = 667
      Top = 3
      Width = 112
      Height = 47
      Align = alRight
      Caption = 'Confirmar'
      Flat = True
      OnClick = btnSalvarClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000002714944415478DA632C3AE5C9C1C0C0D009C42E40CCC2401FF0078877
        01712563D1498F7E20A3804E16A3833EC6C2131E97810C9D0172C025A003DCAF
        02195A03E4802B8C05C707DA01C7DC06D601F9475D07D601794706D801B9875D
        06D801879CA9EF004626063799488683CFD633FCFCFB0DBF03720E52D7018C8C
        8C0C316AE50C66E22E0CF73F5D65987AA582E1E79FEFB81D907DC0896A0E0059
        1EAB0EB2DC152E0672C4848B450C7FFFFDC1EE80ACFD8E041D0032F8FFFFFF04
        2D8FD3A840B11C0436DE9BC3B0EBD152900AEC0EC8DCE780D7014AFC3A0C916A
        850CD32E5732BCFFF10A87E54C0CF120CB25D02D9FCDB0F3E1327CEEBEC298B1
        179703FE3328032DCFD1EF62E060E16278F3FD3943DFF97CA0235E63F83C5EB3
        92C11CCDF20D774196E3F4399203F6D863750033130B43B3E53206410E31B8D8
        9BEFCF187ACFE5337C803A026CB916C8723754CBEFCC62D801B49C11BFE51007
        A4EFB6C3190572BC6A0C05467D0C5CACBCA88E389B0774C41B8604ED2A067349
        54CBD7832C7FB08418CB210E48DB658B370D801C5168DC8FE188079F6E329888
        3BA25A7E7B26C376E22D87382075A70DC15C20C7ABCE506482EA0874B00E64F9
        FD25C45B0D7340CA0EC20E002548793E9023266075C4BA5B40CBEF2D06250AD2
        AC07392079BB35D105913C9F1A43B1E9441447ACBD358361FB5DB22C873A609B
        15D10EF80F76843A438919C4116B6FCE60D876771138379009AE30266DB524A9
        2806394201E80865415D86BD0FD690E9712407246E21CD015406571813365B0C
        B00336990FAC03E2370EB003E236988D7007C4AE37BD0864E80D90032E30C6AE
        33ED06324A06C8011D2007B001198D0C03D33D6F0400164CED793AB34BDD0000
        000049454E44AE426082}
      ExplicitLeft = 329
      ExplicitTop = 6
      ExplicitHeight = 51
    end
    object btnCancelar: TPngSpeedButton
      AlignWithMargins = True
      Left = 785
      Top = 3
      Width = 112
      Height = 47
      Align = alRight
      Caption = 'Cancelar'
      Flat = True
      OnClick = btnCancelarClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000473424954080808087C086488000000097048597300000B1300000B
        1301009A9C18000003C44944415478DACDD7C94F13511C07F0DF2C2DDD18C002
        22B2285B8000825ED80E5E948398A840217A352EFF11EA1F40D94CC48B7822C1
        034B3DC8A2605410010101296D698169EBEF9529BC99CEA31543F0971252E675
        BE9FF9CD7BD30707675CDC7F057821494541085EE34E09168EBC04D793EDEDAF
        3100122E70302D0118E39CE49FCA07B0BB075CD923B77B4E05E894ACED19BCE8
        B47047179F5058F8EF483B387E0342AD8FDDDE7E15E09964EDC8E4C52E33773A
        D322CA2480B570B0EDA9DBDBA70BB0EA00C2F821197F1B12C4EDE178D6581F1E
        5B6501B27400247CDD62067351311826272129CE1506707CB0BA1AFC333360DF
        DD8D99CD5E3CBEC2025C40808D9E03A45D187EBDB71FEC555530D8DA02C2D818
        9834A14085871B1AA1A9A707D6DEBB60D8E180740D82009659806C042453807D
        8B152A7A7B20ABAEFEE0BDD71B418814225A7E3C714809172D96C8DF7EBE1B86
        A98E0E30ECEC1C8EF3E0B82516204703B0612B2B075E8368B31DA11484711411
        DC517810C36F52E1A4648F07269A6F81176F5DB4B671EC220B902B18BA2404D0
        AD956A6BA1BCBB2706F1B6AD1511A391B1727D836EF8348EF18C8FAB6E1701FC
        08C9FA803C05A02D8228D541BCC1005E10556D8F867FC263DB4A385D6E042CB0
        00F90848612C9F64052150083910889C40309954E133D495EB01E659804B0848
        3D66AD27D7D54189B35B85A08B84CF62B897114E6A0B01732C40411C0029113B
        51D1FF1244937A1DC838D327EFDE01D9E53AF6F3BF11F08D052844401A034026
        1159C33E9C704D7D7DAAB647007E3F0CB6DC83E49111B01E731104F085052842
        C0399E5785468B847BF079A09DED74EDFB7C91D521E1EAB0E93DD2F167331462
        038A35003ADCAD131EC4B67318C49BCD31885405A17D5A12C06716A00401760D
        C0A384DFD086E3849B77B401271A20DFE904C16A8D41A4E974620301B32C40A9
        0640AE7C9311BE80E13BCA6CB7E0983C06221D11F49C5847C00C0B508680740A
        60ACA981FC5703BAE17ECD5223885C0D4246C4FCED66D89B9850013EB200E508
        C8A000E4DE667739C1DAD87818BEA8134E232E5208EFD0102C3DB80F61FC468C
        D62F044CB30015A25105201388531026FC3A5E6A7740800ED7D98E991504412E
        6BC249AD21608A05A8D4000E3B81B7C0505000BB535390482521766F76F6309C
        6612C064705F1F5085804C1DC0498AB5555D45C0040B700501E74F0848746FBC
        82800F7A00B22DAF168DCE930212AD95830EC46ECB3B25A9D0CE73D3393C9F74
        F2D3C7AF05590E7878A1F4E1D6D6771580D4F39494CBB8B9BA1A3AA57FCDB0B7
        6181135DD1F018C059D49903FE00EE6B5D3F73E4693E0000000049454E44AE42
        6082}
      ExplicitLeft = 586
      ExplicitTop = 1
      ExplicitHeight = 51
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 8
    Top = 304
    Caption = '3'#170' Parcela:'
    TabOrder = 2
    Height = 89
    Width = 280
    object Label5: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela3
    end
    object Label6: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit3
    end
    object edtParcela3: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela3'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par3'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 8
    Top = 399
    Caption = '4'#170' Parcela:'
    TabOrder = 3
    Height = 89
    Width = 280
    object Label7: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela4
    end
    object Label8: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit4
    end
    object edtParcela4: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela4'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par4'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 303
    Top = 114
    Caption = '5'#170' Parcela:'
    TabOrder = 4
    Height = 89
    Width = 280
    object Label9: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela5
    end
    object Label10: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit5
    end
    object edtParcela5: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela5'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit5: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par5'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox6: TcxGroupBox
    Left = 303
    Top = 209
    Caption = '6'#170' Parcela:'
    TabOrder = 5
    Height = 89
    Width = 280
    object Label11: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela6
    end
    object Label12: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit6
    end
    object edtParcela6: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela6'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit6: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par6'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox7: TcxGroupBox
    Left = 303
    Top = 304
    Caption = '7'#170' Parcela:'
    TabOrder = 6
    Height = 89
    Width = 280
    object Label13: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela7
    end
    object Label14: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit7
    end
    object edtParcela7: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela7'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit7: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par7'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox8: TcxGroupBox
    Left = 303
    Top = 399
    Caption = '8'#170' Parcela:'
    TabOrder = 7
    Height = 89
    Width = 280
    object Label15: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela8
    end
    object Label16: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit8
    end
    object edtParcela8: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela8'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit8: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par8'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox9: TcxGroupBox
    Left = 600
    Top = 114
    Caption = '9'#170' Parcela:'
    TabOrder = 8
    Height = 89
    Width = 280
    object Label17: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela9
    end
    object Label18: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit9
    end
    object edtParcela9: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela9'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit9: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par9'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox10: TcxGroupBox
    Left = 600
    Top = 209
    Caption = '10'#170' Parcela:'
    TabOrder = 9
    Height = 89
    Width = 280
    object Label19: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela10
    end
    object Label20: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit10
    end
    object edtParcela10: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela10'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit10: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par10'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
  object cxGroupBox11: TcxGroupBox
    Left = 600
    Top = 304
    Caption = '11'#170' Parcela:'
    TabOrder = 10
    Height = 89
    Width = 280
    object Label21: TLabel
      Left = 16
      Top = 26
      Width = 135
      Height = 16
      Caption = 'C'#243'digo do comprovante'
      FocusControl = edtParcela11
    end
    object Label22: TLabel
      Left = 165
      Top = 26
      Width = 30
      Height = 16
      Caption = 'Data '
      FocusControl = cxDBDateEdit11
    end
    object edtParcela11: TcxDBTextEdit
      Left = 16
      Top = 48
      DataBinding.DataField = 'parcela11'
      DataBinding.DataSource = DM.dsAluno
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 143
    end
    object cxDBDateEdit11: TcxDBDateEdit
      Left = 165
      Top = 48
      DataBinding.DataField = 'data_par11'
      DataBinding.DataSource = DM.dsAluno
      Properties.DateButtons = []
      TabOrder = 1
      Width = 100
    end
  end
end
