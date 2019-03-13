object frmConfig: TfrmConfig
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Micro Point Infom'#225'tica - Configura'#231#245'es'
  ClientHeight = 423
  ClientWidth = 527
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
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 106
    Height = 16
    Caption = 'Nome da Unidade:'
    FocusControl = cxDBTextEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 109
    Width = 120
    Height = 16
    Caption = 'Data de Vencimento:'
    FocusControl = cxDBSpinEdit1
  end
  object Label16: TLabel
    Left = 8
    Top = 8
    Width = 149
    Height = 25
    Alignment = taCenter
    Caption = 'Configura'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Label14: TLabel
    Left = 8
    Top = 168
    Width = 65
    Height = 16
    Caption = 'Toler'#226'ncia:'
    FocusControl = cxDBSpinEdit2
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 8
    Top = 70
    DataBinding.DataField = 'unidade'
    DataBinding.DataSource = DM.dsConfig
    Properties.CharCase = ecUpperCase
    TabOrder = 0
    Width = 257
  end
  object cxDBSpinEdit1: TcxDBSpinEdit
    Left = 8
    Top = 131
    DataBinding.DataField = 'vencimento'
    DataBinding.DataSource = DM.dsConfig
    TabOrder = 1
    Width = 121
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 527
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object btnSalvar: TPngSpeedButton
      AlignWithMargins = True
      Left = 294
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
      Left = 412
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
  object GroupBox1: TGroupBox
    Left = 271
    Top = 43
    Width = 233
    Height = 321
    Caption = 'Datas de Vencimento:'
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 21
      Width = 59
      Height = 16
      Caption = '1'#170' Parcela'
      FocusControl = edtData1
    end
    object Label4: TLabel
      Left = 112
      Top = 21
      Width = 59
      Height = 16
      Caption = '2'#170' Parcela'
      FocusControl = edtData2
    end
    object Label5: TLabel
      Left = 8
      Top = 69
      Width = 59
      Height = 16
      Caption = '3'#170' Parcela'
      FocusControl = edtData3
    end
    object Label6: TLabel
      Left = 112
      Top = 69
      Width = 59
      Height = 16
      Caption = '4'#170' Parcela'
      FocusControl = edtData4
    end
    object Label7: TLabel
      Left = 8
      Top = 117
      Width = 59
      Height = 16
      Caption = '5'#170' Parcela'
      FocusControl = edtData5
    end
    object Label8: TLabel
      Left = 112
      Top = 117
      Width = 59
      Height = 16
      Caption = '6'#170' Parcela'
      FocusControl = edtData6
    end
    object Label9: TLabel
      Left = 8
      Top = 165
      Width = 59
      Height = 16
      Caption = '7'#170' Parcela'
      FocusControl = edtData7
    end
    object Label10: TLabel
      Left = 112
      Top = 165
      Width = 59
      Height = 16
      Caption = '8'#170' Parcela'
      FocusControl = edtData8
    end
    object Label11: TLabel
      Left = 8
      Top = 213
      Width = 59
      Height = 16
      Caption = '9'#170' Parcela'
      FocusControl = edtData9
    end
    object Label12: TLabel
      Left = 112
      Top = 213
      Width = 66
      Height = 16
      Caption = '10'#170' Parcela'
      FocusControl = edtData10
    end
    object Label13: TLabel
      Left = 8
      Top = 261
      Width = 66
      Height = 16
      Caption = '11'#170' Parcela'
      FocusControl = edtData11
    end
    object btnPremiacao: TPngSpeedButton
      AlignWithMargins = True
      Left = 109
      Top = 265
      Width = 112
      Height = 51
      Caption = 'Premia'#231#227'o'
      Flat = True
      OnClick = btnPremiacaoClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000002834944415478DAED975F48935118C6CF5963C42EB629510662175194
        248454149120444174314BA988A0321183042FECDF7D60751145142503232846
        A51214E44D518651208136022928A43F10BAED6218ACBDFDCEB7AF1882DFBEC9
        9C37FBE0E19CEF39EF79DEE7FCD9CEF9B45AE447E70B78BEB5B681E2080881CF
        E04EE39B586C8ED85A8A76B0167C0377897D316F03089E26E4A252625E535A6B
        BF88A4A9B7203C382B368C5A542BED232605E5B7D4459D21F652C10610ACA1F8
        047E81DDA2641CF1BDD4A32009D6233C65C72EA3F80002E010B28FC96C66E319
        580E5613FBB5500361463CC068AED3F9540E7F1EFE02FC3DF8C336771FEE20DC
        39B89E9CD8ABF09DF04DB367CC8D810D4AEB312562D67B1B02499BF752BC4378
        A311B6650618F17B2A9B894BDB71663646686326A40E7E7C3E7B2042A2E3249A
        2272F45FB088AA865F07FFC312D1BA8AFA479668D26ACFEE997AF84AF83E921F
        2B780FD8063C149DA00BD420A8DC3C24358559F32B64B8D63812CBCC6920FE2A
        504519013B49E0CB279EEAA9736CF79F1D7363D02CD3106835069E90788FABA1
        15C9408E91A7C6C06F37235F2003699D180E8AEB1E4536609EC537101F0E367B
        7EEA6E95D65BDC7498B8B9CAB17D4DC7177799BDF236B3422E5BBFAB6434C41F
        890E97D48092C1C081789365808DF8888DB8CF4DB7A22D81487F7047727FD940
        D940D940D940D940D6C04B0C784A6B4032D21F6AB00D2486820FF88C682EE90C
        A4D4C3E0AE444BF634ECABE895EACC09B5B4440666387B273DB70347A7DBB306
        7A2B36717B7DCD2CF8D412E7BE1337F21CC727F31CC77FACD1CF7073DF1E689B
        FE7FD5CF9A50AA8D4B7EA553FFD1C84AAF537B7DEBF7B4A301F38DA1D42D93DC
        BCBABBE82FE0F317ED7575D826BB49220000000049454E44AE426082}
    end
    object edtData1: TcxDBDateEdit
      Left = 8
      Top = 43
      DataBinding.DataField = 'parcela1'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 0
      Width = 95
    end
    object edtData2: TcxDBDateEdit
      Left = 112
      Top = 43
      DataBinding.DataField = 'parcela2'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 1
      Width = 95
    end
    object edtData3: TcxDBDateEdit
      Left = 8
      Top = 91
      DataBinding.DataField = 'parcela3'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 2
      Width = 95
    end
    object edtData4: TcxDBDateEdit
      Left = 112
      Top = 91
      DataBinding.DataField = 'parcela4'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 3
      Width = 95
    end
    object edtData5: TcxDBDateEdit
      Left = 8
      Top = 139
      DataBinding.DataField = 'parcela5'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 4
      Width = 95
    end
    object edtData6: TcxDBDateEdit
      Left = 112
      Top = 139
      DataBinding.DataField = 'parcela6'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 5
      Width = 95
    end
    object edtData7: TcxDBDateEdit
      Left = 8
      Top = 187
      DataBinding.DataField = 'parcela7'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 6
      Width = 95
    end
    object edtData8: TcxDBDateEdit
      Left = 112
      Top = 187
      DataBinding.DataField = 'parcela8'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 7
      Width = 95
    end
    object edtData9: TcxDBDateEdit
      Left = 8
      Top = 235
      DataBinding.DataField = 'parcela9'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 8
      Width = 95
    end
    object edtData10: TcxDBDateEdit
      Left = 112
      Top = 235
      DataBinding.DataField = 'parcela10'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 9
      Width = 95
    end
    object edtData11: TcxDBDateEdit
      Left = 8
      Top = 283
      DataBinding.DataField = 'parcela11'
      DataBinding.DataSource = DM.dsConfig
      Properties.DateButtons = []
      TabOrder = 10
      Width = 95
    end
  end
  object cxDBSpinEdit2: TcxDBSpinEdit
    Left = 8
    Top = 190
    DataBinding.DataField = 'tolerancia'
    DataBinding.DataSource = DM.dsConfig
    TabOrder = 4
    Width = 121
  end
end
