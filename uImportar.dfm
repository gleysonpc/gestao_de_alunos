object frmImportar: TfrmImportar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Micro Point Inform'#225'tica - Importar Dados'
  ClientHeight = 482
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    761
    482)
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 16
    Caption = 'Arquivo:'
  end
  object btnSelArquivo: TPngSpeedButton
    Left = 359
    Top = 30
    Width = 142
    Height = 24
    Caption = 'Selecionar Arquivo'
    Flat = True
    OnClick = btnSelArquivoClick
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
      0D0000012E4944415478DACD943D4EC3401085DF44D0E60411757A22A15C8322
      5528E82C84C401E8B94088687C86281537201517884415A5A00244A0B1C80ECF
      3FBBB6A3987514236564C9DECFE3E737FB2C0B1A2E593DF55A101DA8E20442A2
      D90D11C3D38B0AA6EDFEF32E82A7D7D4185100AA5ABE49B6FE3197AF8BEF478F
      4ED41DCE3FACC30785064577B922F0F51E61F516E5604B93A6ECAE7B31BF8D1D
      5210817528F1433C926B3263D8AEF0961AFD3C3A96B3C421D7B943B11D054375
      19709F38A49500557D1AEFA585E9C2BADF64ACD0ED6155288E652E1C930C1418
      CFA1DBC3AA501C13D41939F48652C9B29137583A329B83DA5FEEDF15FA432932
      8FC37F0EA5C9914BA1E42F468941EA8F7CB0A1482238EB5D71316E2214F6DCA4
      3F58E09C4977F69995F24B4A4E641F916DF50BAED80EC3BB86C2960000000049
      454E44AE426082}
  end
  object btnImportar: TPngSpeedButton
    Left = 681
    Top = 0
    Width = 80
    Height = 80
    Align = alRight
    Caption = 'Importar'
    Enabled = False
    Flat = True
    Layout = blGlyphTop
    OnClick = btnImportarClick
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
      87000000097048597300000B1300000B1301009A9C180000072F4944415478DA
      E59A0B5014751CC77F7B77BC51938194033587145F2028A8E0DCF0508143B469
      D44C05951A2444C6CCB19A2CB3514C27A794ACC047A30381F8C094B3010E81D3
      7C3496372569351643CA010A28CAF31EFBEFBF7B7BDE63F7DE2434FD6E601FFF
      FFEE7EBEFFE7EFF7DF25E03F6EC460033C3301332B12FD792A5E0A4210420021
      44807C492A0169D311F34792FA6B705E6DB26E8BFFEB9211A94FA38C44441B3E
      509040DC542B4949635A65F3800888922C8C2681CC458888D5C3202DB00E9E01
      4486624CE011423A56767ECEEB511D16F55EE3CA8AAB0E0908AD4CF0F25009F2
      F16EAA31CC3381377C5E91EA895BA622B3BCC7660173CF2E16AA786A094140F8
      E0C26BD3706B93133C32E5EE0AA9C2AA00AAE4DD95824B43055E773DDEB9A1E9
      761599D6044BC06C4972E1E0371B6378FDBD5151535A559A5901DA0E8B2E0F45
      785D7E8224A29BD6E83BB69180D91271ED208C3636C333C7B52DAB2BE35902A8
      719EAFE22B9C81E7137CD837672B44F88698B64C50916A28BA530E79F5DF3803
      4F67561384B08D99279E0A882C1767E0C383CE947CD4F333E0B02817CC990669
      20ECF412E8D1F43B0C4F9F238875ADAB2B0F1909883827CEC3336C8E33CD669E
      300A3E8FDA06962CBC6C29742ABB1C8667D2F21EACADDA685C03E7924FE12C4B
      9C69F3F1FE517020DAB28030468013F0949DC2029699D6401D4E8B71A6C35235
      604DC0742CE0717F9733F0B49BD1962E8D331230030BC0B9621C85D735A12FAC
      0938CD342187E1E963597B7A55ACB180B3580053038E0E95F303AC0B08A50430
      35E0203C65DC027086185BE1477BF84146F072F076F17C0A479D8BF49B6651C0
      F9BF2F8192543D3D6EEE6987BD3F1742BF4669133C3D08212CE0351301E13A01
      3696BC8FEB73703CFE3308F41A0DCED8C5E61B9056F3019E273436C1332CB287
      A602C2280124D3076C6C3663BD02A034FE5318E936DC21F89B1D7760A9740B3C
      51F6DA034F9D933D7ADD4440E819711D01FA2664AB7B103232180AE3F68007DF
      CD2EF8C6AE6678A9E22DB8DFFBD05E78BA063AB904804127B6C7B789191D0905
      A2EDD895E0D904DFDED7098B2B3741C3638523F0548020EBCCE010A0EBC48E38
      664BC627C09E599BACC2F7A8FB6099F46D90B7FDE118BCF6000B901A0B0829D3
      4E64CE7895D95357C0E6903566E1D5D8175A5BFB21D434FDE8303CD25E237B62
      2A605A99762273145E3BBC11B0237203AC7A7121A7808D573E81937F5E700E5E
      7B4ED6C512705AE74A38E7CFF3F0EF2BD1FB9018186D04BF4BFE351CA83F3110
      F094B1054CA5042014630ACF27043069C47823519475F43F86BB5D2D9C0F74E7
      BB4271FC6E88F09B42E73DF2DB59D8763D1FF73DC4093F71C4587017B8EBDB38
      B67E8D0AEA3B1AB8E0E91AE85EC71290544772F8425490227FB90CDC3094A1DD
      7EF4172457AC679716B33FC27518EC8CCC867BDDADB05B7E14C702DCF0C35CBC
      E0F6F25270E5BB18DDFF6A6B3D88259B396313AA06580226630180387C21BC3D
      357F3F84FA4C64B5E9C4EF32E1F7CE46A71CB355139260DF5CF6E895FFEBB7F0
      CEB52FCD3561596F2687006A26E6BA6073483ABC31F915D643AAEE5D81CC4B3B
      98D2B51F7EB8AB3754A5EC87A0E181AC7BAFACDE0E92C62BE6FA1F5BC0A49349
      66E3811786054075F261E0B2BCFA12D8FBCB31BBE17978D22B9EBF03E60544B0
      EED9DADB01538EA78252A3E62E182CA0CF54403025C0423C7058F411C4096771
      8A286BA8815CF91168C19EA52DF0537D82E0E3D9EB216A14B7E7BAF3A7A3B047
      5E6C0E9E5A1896F567990A38A1AF01AEA1728CB73F54890B589D5967D40C4B09
      B97EFF165D822AEC321B0E8BD475815EA340E41F068BC689700D702FCBDEE9BC
      0773CA32E951C85C6C8277B805909CF1807E9C5F8927A8DCC81CF8B7AC0FC704
      C9E7B7E042B86D312AC4DB3A5596494839A154AC0DEA2D4C5254DAA6D0347873
      DAAA018757E378E055E976A8BCFB83D59096C403A33A4B6A1CD44F284DCAC335
      9063099E7617F06FCDC4C5B06D460608788201816FC3DE697ACD2EA853C86D8B
      C749C853674B8D9755824AC51938E7414BF060B03FDD27184F545910EE3BC929
      F8330D17E1DD6BF9A0E86EB37D3101C13A4D76B5F1C2D6B8C2447FBE0BA1B067
      C50CB0F3168B87C1E5410B20D67F261ED7BD6C826EEA7E40379543B7CAB5EE02
      C7BDCDC2E3AD86CF1742A6C9D22265E34B126B7186585BE04D874ACAE5081A3E
      064679FA809FFB48FA1819DCBB4FAD8296DE7668EA7A80039966DA2F72700DAA
      56B3BE9ABDB84BD74249423476892FDB0BEF845769F71A948644D1B0E102F7F2
      3A2DA238A11021227528C2E3FD2232FB82F9171C94090B1679F2BC95DFE384F0
      A1050F3748818708ACBD62A26C4CC9022152F32488794F3624E0496211E4D8F0
      92CFB02608CFFE020444EAA0371B816726D8F39AD5D0028E25456908948B6F15
      F78CE16B7187DD6AD8611D12A0335F6A9E4090429288722185F841BEB876081D
      096908C37C8340EAC419409386F0CC7707A436B90DEF28307EBD46C097E8C679
      6BF6FFF9D863A8DA3F86258AA9D0CAF6B40000000049454E44AE426082}
    ExplicitLeft = 713
  end
  object btnAjuda: TPngSpeedButton
    Left = 568
    Top = 0
    Width = 113
    Height = 80
    Align = alRight
    Caption = 'Pad'#227'o da planilha'
    Flat = True
    Layout = blGlyphTop
    OnClick = btnAjudaClick
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
      8700000E1D4944415478DAD55A0974145516BDD555D5DDE934091092088C02A3
      B8600BA8808123883ACA30E3327A66DC151105441941544407059145401D411C
      450157045494886CC32210946D00892B1020842D0964EB2C9DEEEAAA79FFD7AF
      EAEA7427C09CF1CC993AFCFCEAAA5FBFEE7DF7BDF79742C2FFF921FDAF01FCD7
      09741CA3FAAEE895395496F576B20CC82EC04545A696123B67B5241EB49E36F8
      3F18F44767E73A1065E7AC66250A68BA246AF19B158DD51222E2775493E81A6B
      E7824E25AA99CF44A9B350B5BEBE70CAA1C54D12505A41B9634EF66786527F13
      036E11B048B8248393900489380256D1190929065E140E306A02D604E0884D44
      90D0CC6B11418CFD0E8BE760C8902BDD8F154D3F3CA35102E97DD1FED6315905
      BA117631F08A055E364C15187897C155801487DF26C1C0B31732027A32AB3700
      EF046B818F242504786B7C5F17BE74B81FBD2D9C9440B3EE08DC31392B3F6A84
      A15AD627F0B2C2CE99F525E142744E1248023EFD120A189C8061595E63B59400
      DE2420D9C04CD0C29D98D535439C336206A960AAE6AEF4E6154E3B721DBD3494
      94401A11B87B6A563E29008501672414471CD8AE943C0674E1F7ACB654307D3B
      E6EB51CBFADC3D84E535EB9A44E0638422961B09A22A113838B50902CD7B2070
      EF7453014640510DC4C5826412B063C07118462C88A38EE0E5FEAF4976C03674
      8B8800C8ADED50C3BA1671B47757A6E4ED7FA909022DAE4060C0CB4400F55015
      D37D1442CD6341F3A17BB3A1485533E2FC1F3111E2B2919390151B8650C8BA6E
      A965D5C5D5C7F0D99ED90819113B0EB8F585324C81FD539A20D09208DCFF6A66
      BE2185B9EBF03810C1DC551D821B3B4EFE8F72F5991CE3560EC1EAA38B1D2AC4
      082844A06072130432721078E0B5CC7C5DAA27CB9B041441E272F5715CDFE16F
      BF3A81A96B47E2ABA20F13DD888A4C2EB46F5213045AF54460D00C2240594AE5
      0A9881CC885CAA8CC235ED9EB1DB96060B283DD6C6B98F7538DDC9E95610B5F3
      7A4B5F6BA4A7B6B29F9DBEEE712C3BFC21071E0B6893848B14D837F114041E7A
      5D1060C015F06066E79D5D8FA3EFD96378BB0327F3B0B2E616A86EC3066C671F
      3D9681ACC064256CE5F5482CB3305046B039DEB9E5171BCA2BEB4761F991F971
      2E141649C055E1CDDBDB1481CC5E2601430471CC8D0C5C228DC2556D47F3767B
      CA9663330650EF3EC8910CCE401725A45742F754F1A984265261B89EE40F65D1
      F4C0638FBC1A35288B1E434D7514EFDD709452B38BF7FDEAC627B1C241201607
      4C8194BC3D2F9E82C0E0598C80A980A218708B180860247AB77E8AB7DB5BBE02
      DBE401681DBA1D5767CDC48FC7737161767F02A1A05EABC1D747C6A340791F3A
      755F5FE3C1B5697F47E7EC1BE9BE6CBF2BAC85F06C5E4F94D61463EE1F8ED03D
      13CA6B9B9EC2CAA3F3B9D56D12115349A6C069118088016679B76212B8581F81
      5E673DC9DB1554ACC00EF740189A0BDD8CB771B4762B593F823E6D260A3FD7F1
      C5C141382AAF428E3A1597B7BE3B2158DFDF350ADB6B17A2B60A78FBF745B0C6
      F599DF8CC6AA630B1A282062E05404B2980B7102C285A8B84520778A8E40CFEC
      27CC18A85C851D9E81DCC5F49A34F4767F866F4F8EC7B9A9B7A253CBDB799B50
      A412DB8E7C80DEED1F4D00BFF1E007C82D79161A8D0D359506DEBABE3046E0DB
      D1587D7C51820B99044ED38592297091F657E4648D120456639777204DF2241E
      C252C579E893FA2E56163F803EAD5E466B7F573476EC2FDB8E7907EE46C415E6
      A018817FFCEE804DE0F5CDA3B1A6F8133B0B9D91029CC0EBE64066C580351630
      023D5A8DE4ED0E06D760A7F7019A5E988FEB941B9B95F7C325A9C3B1A6E431DC
      D476218DD89909E0AB42C7317BCF9F502D97D800198137AE2D203B987DBDB175
      0CD6967C1ACB40114716AA3C0D027616924D17B2B2D045DA0874CF18CEDB1506
      D76187F7413E2F327DDECC2CBFAD1D09BFAB1D7EA8FA0837FDE63D22E8B65F13
      D5C3786FCF3D38AEECE0A9D40257536560D6D57B05015263DBB344E0B3E42E44
      5968EF8BA71A076666E6474901B72C0632418229D0ADA5E9CF8782EBB1DDF360
      4C0141A23E28A39FE72BFC5C4D168CD6A26F9B7176DF3B0F7F899DB5F310A15C
      5B1FAD47A95EC0532C53E0F5BEBFD803DD5BDBC7626DE9A7A64211C738103D8D
      712083083C3823369029220E980B75D286A35B8B474C02D51BB0CDFD908801B1
      0E2016D9C1BFA077C604B2A38EDCA2A1E8907A1D3AB7BC2DC1958E05F760D681
      9B7910D7920233FBFC641398BDE33922B038F94076AA9198CD8506BE66BA9062
      133027739DB447498187F92345D51BB1451D4C04622E9452D505FD5ABC4BAA78
      789B9056894F0BEFC335D9E3D1C6DFC57E1573A545FB9EC6CF91957C3D505B09
      CCE8F33D37026BF3F6CE715847041ABA8F35172A98741AB3515D0A9BC0ADE934
      1B07B44788C010DEAE28B8099B69762A090550DD12FDFD8B2870B3E32C7DB2AE
      004B8A46E0B6F673E1779B41BDF7C466CC2F1E8A28ADEA1828360ECCE8BD5B10
      00DED9F5825020712E74CAD9680B5AD0DCF70A5BD05010ABD67A80292021101D
      86EE2D069B046A3663936B307721BD5EC555CA9B689DD20DC98E3D956BB1B5F4
      7DDC71EE6C28929BBF71F9C1D7F04DCD3CBEC03109ECA265A820F0DD0422F045
      CC851CAB32B6A42C98728A15D93DD3CC25A54C29545162ABB12EFAC314030FF1
      76876BB6608334949F77D69EC425E977D93EDCF06033840DC7DE44557D296E68
      3F56CC4675CCF969380AB4CD9CC0CCDE3B2886CC0EE6EC9E48043EB71732D68A
      2C4A44BC411AC8261D6E7A4D7CD74BD69A18260919DCD7BB1A434981074D05AA
      B760BD348C7A9571299E800A7FFCD4D93A17A5B5EF62729D2DE879F6ED7CCC60
      476DA402D37FB813276B4E1081ED36817788C0BAD225622E644EFA18788540B8
      AB7C793F4C38D8388166DD10B8638A5813DB6B6133955E8687D1BDE54041601B
      D618C3681C3073B77357C270EE0909CBE9751E9CA35E0905A9FCBA35F5FE3EB8
      0165C10A22B085EF6498042691025FDABB14AC0F99C0A7B83D70957BF2763CB7
      AF7102FECB11F8F324528032856CADC6C44E443779287AB41C60A6C19AEFB1B4
      6E106435F66C6C574E8A81746E6AD99B5B9263438BDCA35AA52CB4D156E0EDDD
      9389C0527E8F6DC930CB7B5537523D5E68A572DEB7CFFCD23801DF6508DCFA22
      29A0876DF056E94159E78A0C9300B37971EDCF60C1EEF0F6D8A2CC882DD00C23
      F982DFBAE7575B20DB7F8EDDCBECDD5368245E6A83F730F0647D1F959A63C8DB
      38FAC7C609A47445E0E6174C176AB89D92E31E829C56F7E2D73E66EF9E4A0A7C
      655BDEE77673F7715346A92C8AE6AD7FAA09029E2E08DC302E5E019728399EFB
      D13B73D0AF4E60D67713B1B5622DB73C03CF8AAA90AF1A2E448EA6E42D1BB5B9
      7102EECE08F41FCB148808F0069FEFB040F6469BA357DA00785DCDE277E5ACC3
      70548614731771B1E17E9173CFC8BA57567F02B9873F80EC31C8EA4EF012543D
      15919D6D162D99B698B941F2BD51E51204AE7F369B2B906C3B31B62F8A463777
      59468ADBB0125BEDD62E9D999DA4B8C08E884D00EE36DC65CCE251A8B87CC896
      3BC25F724168E1AC8FEFDCB7FBC75C98F3C74402F2C5085C3B263B5F33C23105
      24C77E282F9249823F2DD9E63553A921AC2BF17CAFDBDF0962992961B79AEE4D
      BB661EDAFA3BD07D9A464622A80D8550555D8D8A8A202A4ED6A1A4BC5CFF3C77
      FEDCFC7F6E65BB0A654ECC7104A44E08F41DCD148870F0B6E5AD6F039224B6D6
      0DBE82B24601AB1B7B1C302008480E2524A18039305924D8FD397FFC126D523A
      A08E805712F092B232149796A2F8E44944E9C94F167FB0E0BB55DF8EA557EC6F
      1833F19E7C1102BD9FC8CE8FE89178D711DF04AC4D5D670C486890321DFEAD3B
      3E7634FCE06129A250AA7BB3DF6264C86D6DF0C7097C29D5AA57D5172C7C77FE
      B6651BC60BF07AD3042E94023923C98528061215484EC019C4B14075AAD060D3
      4B28C1DAA8D4B1D7AD625A9F8F9012C9B0C19F282F873FCDAFCF9F3F77FEA6DC
      D58D824F8471BE1CE836222B3FACD78BEF6206DFAF31B7D4C5470D4120E937B2
      4654885AEE242CCFC193C429043EC5A3E2994BDF8256E1E56EC32C9FDE225DFF
      78C1BB0BD62F5EF17C53E013097454035D8767E6D7EB21F373929444012B761B
      10B05D080EF08EEDF4A888037630F0CCF23EAFCA490C6E3F0515470D0EBE595A
      33FDD34F3E5CB06EF1B253824F24709E3B1018C608D4D91F321A731FC911BCD6
      84AE61BE7712E0531D667945B2C1FBC8FA6E1A316F4D7B06C58521A81EB7BE34
      F793055F7FBEFCB4C0271238D71DB860A8A98015BCA60A12CF3CAE38020921E0
      2020C56724DD24CBC0339749E5E0153E3D60D7FBE3695494D7E9AB962F59B421
      77E5D8D3059F48A0833B70DE90CCFCBA6828CEF2C915688A40FC48CB0E378167
      16E796F79AE05922CE52DAE3BCD29BF515CB962CCA5B7A66E0E308783C1ED4A7
      6AE7B71B9EFDAF901CF2C7816E40406A848005D6394560202DF0A929C2F2AA02
      175D970D0F2EA8EAAF6D5EB263C1372B574FF0F97CFBD2D3D3F528FF30CCA6DB
      1ADC3422BBC89AC5C5C5FC770281ECEC6C17935B218B50A3B4D49EA9CF37BB32
      75B09CE2F22523D08876F11F381C966773299556471E95A6C6E4EF2C8025C905
      A5CEA71B3F353FB17FE3C155C1E2F28504FE1065B930616128353A6735FBADB3
      73EB3AFBCD6CE4F57AF5DADA5A5D6ADBB6AD4B12C8229188ABACACAC0D59A00F
      FD3C8B987BA9A4D07D567B9927D0B9E2A815ABA6E21285A55B97839A2E761C2C
      B7D044A95555F528295F44C6AB8039C38C2BF45C889112BFED9A1162252D2D4D
      9332323278C05167FCA54CAE6030C848D12029BBD841B50D50808BABE9791B38
      3386D1C80A5F5853176474EA9701D1D9C16A56581BD1CE22AD13043D1C0EF3E7
      991BD173BADFEFC7810307CEEC7FAB90CC601DB1232727877584929212D4D5D5
      99814AFE2A49C9BB642FB67C3B2B2B8BF775E8D02114161672F76586B3FA3993
      E3DFDD1F018442AB0FA90000000049454E44AE426082}
  end
  object edtArquivo: TEdit
    Left = 8
    Top = 30
    Width = 345
    Height = 24
    TabOrder = 0
  end
  object stgAlunos: TStringGrid
    Left = 0
    Top = 80
    Width = 761
    Height = 384
    Align = alBottom
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    TabOrder = 1
    ColWidths = (
      305
      111
      64
      64
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 464
    Width = 761
    Height = 18
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object ProgressBar: TProgressBar
      Left = 0
      Top = 0
      Width = 761
      Height = 18
      Align = alClient
      TabOrder = 0
    end
  end
  object pnProcessando: TPanel
    Left = 302
    Top = 195
    Width = 159
    Height = 153
    Anchors = []
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object imgProcessando: TImage
      Left = 0
      Top = 0
      Width = 159
      Height = 134
      Align = alClient
      Center = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000008000
        0000800806000000C33E61CB00001CC94944415478DAED7D095814C7D6F674CF
        CA80C32A8E6C12DC40895B901054824B143551E3160D2A015454547037DB4D4C
        F27F5F6E4CEEBD899A28B82BAB88883B225144440405838806917D5F0766DFBE
        6A4CF243F7687AA67BBAC7FBF03EFA3C50DD749DAE7EEBD43955754E410C12B0
        2C6CA32BCFCCEC008BCD9E027E6591F14C2AA0D5681832A9946E31F49359AB95
        A894CA93128978534AEC5109D1E741441F3073EEFB2C27B7E1F7992C9627DD8D
        A32F5E4502FC09A55211151BBD2F8CE8730813E08BEFFE33AEBEB1291F82083F
        8A72BCCA0460C270FBEEAF3EEB6F6B63AD22F21CC25FED9B7FEFF5ABAAA9BBD1
        47006AC1643265BB777D6A0908A020F29C3E02F4118018FA08400FFA084002FA
        08D047803E021015A48F00F4A08F0024A08F002410E0EB7FEDF5ABAEED2300D5
        3019026CFA6C978344A6780608C0A1BB51F4C5AB4C0080E21FBEFE7CA49DAD0D
        A18790D26D4323B6EF6273389F811F61BA5B451FBCAA04D06AB532855CFE7EFC
        E15F2E137D162904E86769C598B734C89FC3E54E064FC4680218662E012ACB15
        5D6E656E56CE61B308A93022D00002883BBB685DBC92C81502995265872E57AB
        5499E043E7A0CBB50C6D8754224E3E1373B4848CFA2919B8576DDA798BC962F9
        F67A112D8331CACDE9BAC0DC4C46850CBA8010A0ADAD8DD6A1ABB6A5DDA1A1AD
        D31D5DAE522ABF8D89DEFBB1B1EBA78400A191DB0BD96CCEA89E6580DD8CCD61
        C189AF0D7269A742065D50A954706545058FAEFA11DCC8CE1D929D5FE0832E57
        C8653FC51DFA25C2D8F5534280908DDB1E81E1A117CB11027CBE39FCA4835048
        784DDB5028954A464579399F4E0F262B37DFF57A76EE4474B94C26DD9F7078FF
        5A63D74F1101B63EE67079C37A96010268766D8F3C6E6F674B9B0D600A04B89D
        77DFE95A568E3FBA5C26951C4C38726095B1EBA753032004380908409B0D6012
        04C82F70BA76F3B63FBA1C7827510947F613DEF0F177A0C60688003600076B03
        7CB17563ACD0BE7F171532E882291020FBEE7DB78C5B39BEE872B95CB637FED0
        2F1B8C5D3F555EC06DE005F4327410026C5DB7327EB0EB20111532E882291000
        7C7C3740020C018017F01DF0027618BB7E6A8680886D97381C6E40CF32840061
        2B96268FF11CD14C850CBA600A04B894913922FFC1C371E87260047E0C8CC06F
        8D5D3F556E600C70033FEC59861060F1DCD917274FF0A9A642065D300502249D
        BF32A6A4B40CB3A1160C01ABC01070D0D8F5536504EE0646E05674F934BF0999
        F367CF206546CB109802018E259E9958555BEF8A2E974AC4EF251E8D3A6FECFA
        2979F3E00D5BD67379667BD0E563467A3C58BD62698E21CF2403A640803D874F
        CEEA1075625674DA5A9A5F4F4D385164ECFA2979F365611B022C049697D0E50E
        C201959F6D0A27BCA06128E8268042A9847FD87F78A15AADE9351D0D8647457E
        CECDFE0FEFE71BDD40A6E4CDDF5B1CE8E238E8B5670CD46A2197CB91ECFEC7CE
        932C163DEB317413A0BCAA467022E9EC1C74FD6A95AA2C39E6C86089D8F81E32
        256F2E747481DFFB20B086C9640A7B96238660C4EAE044F7216EB4AC07D04D80
        F49BD94372F20B31EB00C0054C042EE00754C840D99B87466C3FCDE670E6A3CB
        27787BE5042E98F3802A397A826E0244C79CF26F686A764297030F200278003F
        512103656F1EB271EB3A0E97B70F5D6E6D2968FE7AE7E66418A67E2F099D0468
        696BE7ED3F1E3F1F6841CC8B8BDADB469E893D5A4C851C94BDF9FB811FB9D80F
        747C0A1ABBD7808F0C03C14B16A67A8F1B5D4F952C7F824E029CBBFAAB67E1C3
        9231E872B55AFD24E3428A476D75A5860A39287B731EDF1C7803EB6FB0586C3F
        F435270761E5C71BD75EA6FA43D045008954C6DA7BF8E43CE00560F62228958A
        AF62A3F77D41952C94BEF947EB372FE199F1E3745CD2AC0B5E96ECE93EAC954A
        79E82240DA8D5BC3EEDC2BF446D78BB87FED6D2DC353E34F9453250BA56FEE35
        C18F33CE67E22330DEBBA1AFB90D722EDDB2766506951F830E0228144AF8A743
        27E6C8E4720BF435954A191B13B5379032611814130041F0862DEBB83C338C31
        08BE8126322C2471E86BAE94AD0ED24180EBD9B96E37EFE4F9EAE8FD1A60FC8D
        4D893B46A947443901A6CC9CC31F3AC2F32904C342F4B561835F2B895C1D9C49
        952C541300D983B8E7F0C977C512A940C7B5F331517BDEA3EADDFF042D0E70C8
        C66DDB395CEE3F31C240906AFBFAD589839C1C29D9244235016EDDBDE79A9195
        3351477D1A7157E7A4A4E307B32911A4076821C0CCF94BAC9C5F737B0A6C01CC
        22C8C8E1438BC2439653D210541200B8778CBD47626675768931EF0CC6FE0C60
        F84DED147550F1DABD40DB3218D002BB8016F807BA1C9042F549C4BA7807A1BD
        D1770B534980DCFB0F9CAE5CCFF2D7559744DC35F5D4B1E80CA30BA103B41160
        C1F2503BBB0142646208331E8E1EE95110B66269AEB165784E800ABEB1BF3F12
        80B2EF686C4087A8131B01A456675FBF7C6E5275C5334A267ED0A035A4372462
        DB6E0E07BB5184C9642A3EDFBC3EBEE78E6171D1662FB5F809B1484814805666
        34B5CA495F8A846CA696C1F60B2BFFFCFDDE83870E17AEDD98A2ABF74BC55DB3
        138F455F245B06DCB2D2553182B94B8384420747C423E0A3AFBD31CAF35E68E0
        E2BC3F7F17176F1BA7A88EF522B37EB546CB68EDD092FB525A2D031EFC3F6990
        B55F23F2AB06FCBEFF58DCF4D6F60E7BF4ADC0F2BF7723EDFCF8EA727A7A3F02
        DA83FA4323B7EF61B339EBD1E52C164B816C1BB7B5B6EA0E1C51B5DDB5EABC3B
        6F3199751B85002C4B09F3F533290C98DDFD510B8B4B84A95732A6E9EAFD7299
        7441FCE1FDC9E40AA01F6827C007216B5CAC6C6C1F8306C2CC8B7B8F1D9DF7D1
        9205F7909F91452351F6E4391AF1EF42FD6BD10D631000B29D5504BB7E5CF0A7
        CC074E244C6B6E6DC3C8ACD1A88BEEE7668F2DBA974728D1236179E9ACFC4F84
        466C3FC0E67056A3CB396CB6ECCBED11F1560241B71690551C7695967C369D41
        92D5463A0120B60A1E713415E2B9747B300F1FFF6E977CE96A00A4A399653269
        60C2E1FDB1C669513D44A65B00040B8356BAD9F61FF048579691B7BCC6E52E5F
        34EF8F1EA5025A601A695A805C0268FFE8FD9FFCD5FBA3634E4D696C6E71C0D4
        AB5697DCBF73EBF58705F9B4F67E0426410004211BB71DE170B91FA1CBB91C8E
        64D78EC8788185457763A93AEE0B3AF33E98C7508B098775934A009E4B33EC1E
        9D0631F9DD637F4969995DD2F92B01BA6E954AC4C18947A38E1AAF35F1C36408
        B074E5BA61022BEB87E80D230826BDE995BD74FE9CBFB6482B1A2E0AC5BFAD9F
        C5D01073E1482300BBBF081EBE2F0DE20EEC765B91DE7F282EC9BFBE11BBDD4B
        A3D19415DDBFEB71FF4E366D51D13D61320440B03272470C8BCDFE105DCEE372
        255FEFDC146FCEE7FFA532E5B5494E92E26DD3191A85C1242085006C3B113CF4
        DFE99099EB5F3397BF3FABB049387B11E9FD98ED5E0A853C2CEEE0CF511435E9
        DFC2A40800B4C008A0050A756D1B9B3CC1277BF1DCD9BD022514F5A90EE2875B
        A633D41283D2BC10260067603B3CF4870C88E7DC6BDAFA70FC69BFDAFA4617F4
        EDA0F797973D79E4712B238DB69078344C8A00084223B727B0D91C8CBF6FC6E3
        75215A806F66D66BD244D97ADB46FC60ED74ADA24980BF96E7309C00E06FF81E
        B5F0907F66416C9B5EAAFC69459555DC99F3B3183A7ABF5C2E0B8F3FF4CBCFD4
        B7EA8B617204F82064CD182B1BDBBBBAB4C0D449BE590BDF9B89D92DAB91D5F2
        BA0AC3FCD41DF9AEFABC9261048034C0DA2F865CB63C80FE98ECE989A309C913
        ABEB1A5C31326AD4D54F1F3F1A9EFDEB55DA52E2E87C1BBA05D085D0886D67D8
        1CEE3C7439E8FDA26F766E4EE4F1B89886D76AD50C59E90FEEB28A281F86468A
        6B48D08F00DAE7C69E73440E64EDDFA8EB0E24D2E7E4E9D477193A7ABF4C2A8D
        4838B29F92BDFEFAC0240910B87ABD573F4BAB3B0C5443225A60BAFFA4CCF767
        4D7F6144B15AFC942F29F987B7AA257308E8772F0D36C04D0098A7806C671643
        8E6B4A809BF742DFFDD8A914DFAA9A3ACC7E4720773DE8FD436F655CA12D1BCA
        8B60920440124F2E0959738EC962BD8BBE063C816E2DC0E5725EBA80A26ACFB3
        9295FD344AD99A3584A196B174CD1EBE9400482243B69504B2F22F8506069540
        9CFE2F75DB2A6B6A05C74F9DD5D9FB954AC5B6D8E87DDFD3DDAEBA60920440B0
        6CCD461F8B7E825B0C1D5A2060CADBD7E7064C7B82E7391A7913475E13E7AA6A
        BEEEA2EE2A116A551DFCEE8F0B08F1FF09A0EDFEC780600D836DDBC5E0BBD743
        D66F5743D653EA2198836BA5EE44D259DF8AEA5A6CEFD7681AEBEB6A86A69D4D
        A22D15CECB60B20440B4C007216157582CF674F4350B737EFB373BB72471386C
        BD9651B51A1543237966A1EE2C126864F57C95A29355D7D8C56130CD151067A0
        84C11FDA05B1ED64FAAE3554D7D55B1C4B3C33075909465F037EFFC7C0EF377A
        AA174361B20440006C8189800837183AB4C0EC772667BCFBCE945222CF276B4B
        584CF2399F6795D543D0E5C0EF6FAEADA91C7AEDDC19DAB2A1FE1D4C9A00DD5A
        2038EC2A8BCD9E86BE26B0B068FF7AE7A624365B3F2DD0136410A0B6A1D1E248
        7CF21C5D419E0AB9ECF3B843BF7C435B03E280491300C1D295E1FE96D6D6BFA2
        CB112D3067C6D4F49953FDCB0C7D361904883B73DEFB6945D5307439E8FDADB5
        55E583AF5D386BB2BD1F81C913E00F2DF02BD002FEE86B96FDFAB57EB5735332
        9BC532480B1025407D6333FF505C12D2FB31EB1160ECFF0A8CFD9405791A0A93
        270082A0F0CD53CCF8FC6BE872440BCC9BF94EFA8CC97E066901A204884FB9E0
        5D5A5E89E9FD40AEF6F6B696C1A9F127280D763504AF04015CDC863202E62DBC
        053399988C9A567F2498601A90608208019A5A5AF9D12713E76874F47EB54AF5
        EDC9A83D46CFF54F065E09028C7AE34D8E8FFFD487300C632C6D7B3B9BEA2FB6
        465C34E42312214067971889F19FAFD66830D3CE2A95F2784CD4DE20BADB0D0F
        5E0902AC5817B9826F6E710C5D8ECCE78C1E3A286B756870B121296688104024
        12B1629352BC9A45620C299138FF96A6C6D72F24C5E29AACA213264F80D15E3E
        2C6F3FFFDF984C16E658153E97D31C386F56FAD871E30C9A65234200C4FEC8CC
        BC699F55F0D01FFC88D1024A85E270ECC17DA174B7DFDFC1E4091014BEE94333
        BE790CBA1CE9FD9E6E4ED92B83838AB95C2E2D5E405353132729F5A2574BA744
        D70290A2ADA5D9E35CE24983DD542A60D2041833FE2DD6F849FE854C267304FA
        9A1997DD1C387756FAB837DE30788E9D2801102D70E346A6F05661B19F4E2DA0
        5446C546EF35FAA10F4460D20478514E2164DD6684AB63CEAAE0A0221E8F47EB
        4C6063632327E9DC25AF56DD5A40D6D1D6EA7136FE78394D4DF8B73059028CF5
        F6658D9FF8763E70FD46A1AF9971D8AD4BE704A47B8D1F4F68968D0C02205AE0
        D7EBD785B70B4BFC0131312E21F0087E061E41382D8D8803264B80E00D5BE773
        79BCD3E872A4C13D0639E6AC0E01BD1FB53F505F90B518D4D0D0C043B4405B97
        D45587BC924E51C7F0333147683B17E16530490238B90E8667CE5F741758FE98
        9334781C56EBD2F702D2C77B7B139E63278B00082933327E75C8F9EDB19F2E2D
        A0542A7E8A8DDE67F433000D81491260D99A8D732CFA09CEA2CB91861EEEE290
        1B1612F4C08CCF271C524D668690FABA7ADEE90B975FA0053492A6FABAA197CE
        24D652D5867861720470711B0A4F9FBBE0368BC5F2465FE3B259ED4BDE9D9EF6
        A68F0F292B6C6412002167FAB50C873B454F904CA8582DA050FC2BF6E0BE2D54
        B4A13E303902AC581B398B6F6171015D8E58FEC39C847960EC2F3037372725A1
        02D93982EA6A6B811648F36E174B31412180205D2D4D0D832F24C5351AF26C63
        C1A40880F4FE197317DC441F348D00E9FD8B674D4B7FCBD797B41536B2098068
        81B4ABE94E778B4B91A36075D802CA6F632938105A1F98140182C2374D33E39B
        5F4597230D3B04F47E64ECB7F8234A980C18234B584D4D0D2FF9629A4F875886
        090C05EF216A6F6D1E9C9A7092B6A3F2D030190208AC6D908D1F37984C26269B
        3887C5142D9A392D6DC2C409A4AEAF1B830008592F5FB9EA945FF214790FCC0A
        954AA5FC26266AEFE7C668434360320458BA729DBFA5B58DCEAD5F6E0EF6F7D6
        847E54D0AF5F3F52132A182B4F607555153FF9D2556F9144AE2B3CBCB5A6B27C
        70C645D3D82A66120478D9E64F3693D9B53060F2E5497E7EA4F57E84540C7517
        4B216DE15455D5F1182C8102820D5B50D205242FE0A5CB692EF79F3C436C011D
        9B45E59FC71DFAD924368B9A040102C336F8F61358DE64A0B77F83FFAF0DB02B
        58131A744F606949A8F76BD572585177CA49D170C94DDDF548A855B4F0D56A15
        ABB5037C7788A36270EC4590B9473D6413500E09C6B712CD43545959C93F7329
        DDA7532AC7A48841B68BD7D7540DBE7A2E99F66011DA09F03C0064CD05E0F7CF
        425F6333E1AEF9D3FDD3DEF6F737D868D26AE4B0ACECC761F2EA98315A7993A0
        E7877D616818CFB51916AE28806CA6D51B4A04440B5CB874D9B5F0F70AC4A3D1
        152EB623367ADF779434F24B403B015E14088AC0C5DEF601E8FD7956565606F5
        7E654BA69DA478A79F46526EA7776C20827E632B61D74F7321CE0083123A9403
        FB22E5F235DF2E990293D4CA5402466927C08B8E9363C1B064DEB44997A74C9D
        AA77EF47C678D9D3DDEEB2673FFB32B4CA17A690C1151DCCB494C0AE3B3321AB
        897ACB81688173E72FBAFD5656859C0D884D18219346C41FA637649C56022C09
        5D3B0A58FEF9BA124339F5B72E5A131294676363A357322524959CF8B78D3ECA
        FAB3A3FEEE5EDCE1E1104B05398567F7CCFF8B17CFCACAF829577EF515CB153A
        92456A2A9F3E2E469246D09632865602AC8CDC11072CFF25E872260CCBE64C9E
        70F99DE9EFE8356DDAFDF10B564E5436A68DC03376EB972002D6408EAB736061
        A05E5BBC907302CE9EBBE0565C5EA3530B008F200C7804B4258DA28D00C0EF77
        175859FFA6ABF73BD85A15AF095E9E6BD7BF3FEEDE8FA87DF18375CF7B3E4EC3
        4DFF14318004CE9159B0FDFB7A6982D2D2528BD4ABD77D257225266134DD69E3
        E83B302262DB210E871B822E872148F6EEDB6FA5CD089851AFCF048DE4F1D79E
        F28AFDBEB8FF8061608E20241DECE06FD2214B5FDC36017256D099D4F3434A2A
        6ABD75A68C974882128F1E384EBC55F5072D0458FCD16A576BBBFE8F74258816
        5A0B4AC28297E70C183000778F90D7263B481E46CE02CEBE5EC101066709630A
        24B07BD44588E7887BEC7EF2E489456AFA8D8932854AD7A111C50577B347D391
        389A160280B17F0F18FB3129E241EF57044C1C9F367BF6EC5ABCBD5F2D7EC6EF
        BC336BBE5625E2E3FA839E7F4B244FA0D9D07AD8232A038C60B86610954A257C
        3A2575D8EF358D5EBADE0CD8028B802D9044A45D0D01E50498B7344838E00587
        44D85BF52B5D1D1498EDE0E080AB672199C13AEFBC17A01615BAE0B91F0D6289
        22B50CC87EF13DD87923EE439E1F3D7A24389F913551AE54E938384A957723ED
        C29BD5E565941E1E41390180DFFFBFC0EFDF89110462A8A6F98C4B9B37776E35
        DEDE2F2DFDDE5D56F62F3F435F8370A650D0FBE1613F5E842C46E15AD8512814
        F0A93367DDCB6A9BC6E9B405A4921989470EA4192E9001AF40656533E77F60E5
        E236F81904C156E86BB602F3B2D5CB976639BBB8E0EAFD6A71195F943363B1A1
        6962BB9F4146AE609E6B2373C4D13406C4C4757B515191E0E2F56C7F854AADEB
        F0C8EBA9F1C72753797C1CA50408DEB0753397C7FB41C72595BFD7A8F4450B17
        54E2EAFDC0E5EBCC5F324585A480230052080064811C57E5C0038370E52B92C9
        647062F259CF8A869651BA0E9014B5B7BD7926F6681E9E679101CA08E0ECEA06
        07CC5F8C047962C2BCAC2DF8952B031767BEE6E6862B8DAAA2E192BDB870D5BC
        E7EB858683B474F14C0B193C323615625BE3F25C0A0A0AAC2EDFBCE3AF526B30
        07482B958AFDB1D1FBD612170A1F28230032ED6B65635BA8E392E6ADD7DD3302
        3F5C528627C41B31FC9E9F1AF284F0A921E41D18819C1632FBAFB382FE0E62B1
        98157FFAECA8BAD60E4C67D068348DF939379D8B0BEE51323144190180FAFF04
        A8FFFF872EE773398DAB0217A50F1F3E1CD7AA98BC26C14952B4691619E70691
        7A6208C451C19E712910C71E970D732737D72EFD76FE145D41A59D1DED139263
        8E50727C2E650400BEFF35E0FB4F41970F76141644AC5B9DCB62E139F741CB10
        216E5FC77D83DC3E34483F3368C0D23CD829BC04CFDDEDEDEDACA309C9FE5D52
        3946932914F2CFE30E52B363881202788C1EC7F19B16D0007CFFDED63FA0FFFC
        199353A74D9D528FE7396A69354F9435611943ABD23F1D88AEE7917D6A18D7A9
        953932F6221EED84AC5D2424A77A9656D58EC1C8A5525D3C19B567367982BD18
        941060C1F250F7FEC2818FD0E52C18EEDA11BE32D9D1C90997DA9496FD384C56
        FA4F7FB2C436C6B981F088632990991BAEE1EC6EFE7DBBCB99B703D0DE805AAD
        AE4D893BEADC2512197D52881202AC581B319F6FD10F13E96B65C1AFDDB573CB
        45BCD93E3BF31601D72F9B90EBD7134639387260700EEC1082CB2544720B1C8C
        3B3D4F83B50334C50FEE0DB89B75C3E8F10394102064E3D6CD1C2ED6FF1FECE2
        58B4253C0C97B183ACF5775C1FB34CAB6CD37BCEFF4530CAD1B1FDDE28670EFB
        4F169E5B91F5811FA38F05C8144ACCD4B0A8BD6D3C15F30194100078007B8007
        8059FCF119FB7AF68A258B8AF03C43252A1274E64C5F42A6C8C6393BD8BA8B39
        2A258501E13353F61F8BF16B6E13618C5A7157E782A4E3078D7EAE30250458B9
        6947028BC5C61C04357BEADB69B3A74F2DC7F30C59F97E37E993AFA6993C0100
        60CFF86488EB886B522BE6F459AF6755B5980C684A85626DECC17DFB49170E05
        6A0810B90313F48158C12B16CE4D79CBDB0BD7B6AFAE07E1DECAFA943178EEC5
        0BE31000B883833ECD80ED66E2CA059072E9EA88A2C7A598441854058F50A401
        76DE41C7FB2304D810B23C7184FB305C2B69A29C99B3D4A242273CF7E2851A98
        9EDD81212403B25F740F768EC0B54C9C76FDE6B0DC82224C2E04A552F17D6CF4
        BE6DA40B8796D5D81520088DD8FE1B9BC3F1EC598610E0E38D6B625D9C1C71B9
        4CB919875D5B9AEA4833001168341AB8B5AD93D0F1B3BAE0EC36AAD579880F2E
        0B3EF376AE5BE69D7CCC5636B94CF673FCE15F8C9E5C8A222F60DB630E97DB2B
        AB362080E6CBAD1B4F0EB0EF8F6B0EE05E7EBE556727B91F0BD9B1DBD4D444F8
        106A34840306C89C9C9D71D900D977EF3965DCBAE38F2E9749A5510947F61B3D
        C720556E2020000F43805DDB238FDBDBD9D27688B2B1A283F5C1EDBC02A76B59
        B7FDD1E532A9E460C29103AB8C5D3F256FFED1FA2D8F786666BD2C5D6408F872
        5BC4C901FDED683B49D34408E00A0830115D2E1177459D3A16FDDFA10182C237
        3D34E39BF75AFA4408F049C4BA5867C781B4C5C69902013273F2DC3273EE626C
        0071A7E8E7A41387FE3B6C80156B230BF91616BD42B510026C5C1994E8316C08
        6D89124C810069376E0DC9BDFFC0075DDED9D1BE3739E6C80663D74FEA9B0FF1
        F0E45859DB600C358F5163AE9AF713F46279F73CC0E2F9E7C7BE3E02D74AA031
        A052AAE0CACA0AD28D407D90763DCBB3B0F831268EB1A3B5E5BBF2B2DF77A1CB
        9BEAEB143595E5A4C50F90428065611BDCB866FC03C0D7F7D515EA851CAA04CA
        3173A3A04C83FC27EB65F4457714B1584CCAD2B2A1D068BB27A2303200D954BA
        DA06B8AE12954A9924EEEA8C488D3F41D87E224C809973DF6739B90DBFCF64B1
        3C893E8B6A68351AC4DDA25B0C83A05428A2620FEE236C241226C097BBFF33AE
        AEA1299FCE71D450BCCA0460C270FBEEAF3EEB6F6B634D683820FCD5BEF9F75E
        BFAA9ABA1B7D04A0164C2653B67BD7A796800084E651FA08D0470062E823003D
        E8230009E823401F01FA084054903E02D0833E0290803E02904080AF7FD8E357
        5D57DF47008A8110E0BB2F3FB1B4B3D52F8D1E1A84BFDAAAF0882110CFFC110C
        C3A4EFAC31365E6502A855AAB2EFBFFA74A850282434954E980053FD270BAC1C
        07EDB31BE8B8EC55D302AF2A01341A8DA2AEFCE917C70F477DEBE0E040E85984
        BFD808770F582A164F74751FE9632B1C381A825E214DA0D522BB6FE996422FA8
        D52A497D65F9EDE6BA9AECF2EA2A5C31152F03295DD669A0039FC56279C21084
        A440A37575EDBF1DC82A21F85F2D572A8AEB1A1A08AFA4FE1FCF9F4853709710
        580000000049454E44AE426082}
      Proportional = True
      ExplicitLeft = -72
      ExplicitTop = -6
    end
    object Label3: TLabel
      Left = 0
      Top = 134
      Width = 159
      Height = 19
      Align = alBottom
      Alignment = taCenter
      Caption = 'Carregando...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 97
    end
  end
  object opdArquivo: TOpenDialog
    FileName = 
      'E:\Gest'#227'o de Alunos\Novo(a) Planilha do Microsoft Excel - Copia.' +
      'xls'
    Filter = 'Planilha do Excel|*.xlsx;*.xls'
    Title = 'Selecione o arquivo'
    Left = 176
    Top = 192
  end
  object qAluno: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select * from aluno')
    Left = 272
    Top = 240
  end
  object dsAluno: TDataSource
    DataSet = qAluno
    Left = 384
    Top = 248
  end
  object ImportExcel: TImportExcel
    Left = 264
    Top = 136
  end
end