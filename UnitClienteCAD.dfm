object frmClienteCAD: TfrmClienteCAD
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Cliente'
  ClientHeight = 387
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelPrincipal: TPanel
    Left = 0
    Top = 44
    Width = 541
    Height = 321
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 516
    object Label1: TLabel
      Left = 9
      Top = 7
      Width = 30
      Height = 13
      Caption = 'Nome '
    end
    object Label2: TLabel
      Left = 9
      Top = 49
      Width = 52
      Height = 13
      Caption = 'Identidade'
    end
    object Label3: TLabel
      Left = 260
      Top = 50
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label4: TLabel
      Left = 9
      Top = 90
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label5: TLabel
      Left = 260
      Top = 89
      Width = 28
      Height = 13
      Caption = 'E-Mail'
    end
    object Label6: TLabel
      Left = 9
      Top = 174
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label7: TLabel
      Left = 433
      Top = 174
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label8: TLabel
      Left = 9
      Top = 132
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object Label9: TLabel
      Left = 9
      Top = 219
      Width = 65
      Height = 13
      Caption = 'Complemento'
    end
    object Label10: TLabel
      Left = 260
      Top = 219
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label11: TLabel
      Left = 9
      Top = 265
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label12: TLabel
      Left = 260
      Top = 265
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label13: TLabel
      Left = 326
      Top = 265
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
    end
    object DBEdit_Nome: TDBEdit
      Left = 9
      Top = 23
      Width = 509
      Height = 21
      DataField = 'Nome'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit_Identidade: TDBEdit
      Left = 9
      Top = 64
      Width = 240
      Height = 21
      DataField = 'Identidade'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit_CPF: TDBEdit
      Left = 260
      Top = 64
      Width = 258
      Height = 21
      DataField = 'CPF'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit_Telefone: TDBEdit
      Left = 9
      Top = 104
      Width = 240
      Height = 21
      DataField = 'Telefone'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit_EMail: TDBEdit
      Left = 260
      Top = 104
      Width = 258
      Height = 21
      DataField = 'EMail'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit_Endereco: TDBEdit
      Left = 9
      Top = 190
      Width = 400
      Height = 21
      DataField = 'Endereco'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit_Numero: TDBEdit
      Left = 433
      Top = 190
      Width = 85
      Height = 21
      DataField = 'Numero'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit_CEP: TDBEdit
      Left = 9
      Top = 147
      Width = 84
      Height = 21
      DataField = 'CEP'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit_Complemento: TDBEdit
      Left = 9
      Top = 234
      Width = 240
      Height = 21
      DataField = 'Complemento'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit_Bairro: TDBEdit
      Left = 260
      Top = 234
      Width = 258
      Height = 21
      DataField = 'Bairro'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit_Cidade: TDBEdit
      Left = 9
      Top = 280
      Width = 240
      Height = 21
      DataField = 'Cidade'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object DBEdit_Pais: TDBEdit
      Left = 326
      Top = 280
      Width = 192
      Height = 21
      DataField = 'Pais'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object bbtnBuscar: TBitBtn
      Left = 95
      Top = 145
      Width = 82
      Height = 25
      Caption = 'Buscar'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777700000777770000070F000777770F00070F000777770
        F0007000000070000000700F000000F00000700F000700F00000700F000700F0
        000077000000000000077770F00070F000777770000070000077777700077700
        077777770F07770F077777770007770007777777777777777777}
      TabOrder = 6
      OnClick = bbtnBuscarClick
    end
    object DBComboBox_Estado: TDBComboBox
      Left = 260
      Top = 280
      Width = 55
      Height = 21
      Style = csDropDownList
      DataField = 'Estado'
      DataSource = dsFDMemTable_Cliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO'
        'EX')
      ParentFont = False
      TabOrder = 13
    end
  end
  object tbarPadraoCAD: TToolBar
    Left = 0
    Top = 0
    Width = 541
    Height = 44
    AutoSize = True
    ButtonHeight = 44
    ButtonWidth = 72
    Caption = 'ToolBarMenuPadraoCAD'
    Images = Dtm.ImageListMenu
    ShowCaptions = True
    TabOrder = 1
    ExplicitWidth = 516
    object tbtnInserirCAD: TToolButton
      Left = 0
      Top = 0
      AutoSize = True
      Caption = 'Inserir [INS]'
      ImageIndex = 0
      OnClick = tbtnInserirCADClick
    end
    object tbtnAlterarCAD: TToolButton
      Left = 70
      Top = 0
      Caption = 'Alterar [F2]'
      ImageIndex = 5
      OnClick = tbtnAlterarCADClick
    end
    object tbtnGravarCAD: TToolButton
      Left = 142
      Top = 0
      Caption = 'Gravar [F3]'
      ImageIndex = 12
      OnClick = tbtnGravarCADClick
    end
    object tbtnCancelarCAD: TToolButton
      Left = 214
      Top = 0
      Caption = 'Cancelar [F4]'
      ImageIndex = 9
      OnClick = tbtnCancelarCADClick
    end
    object tbtnExcluirCAD: TToolButton
      Left = 286
      Top = 0
      Caption = 'Excluir [DEL]'
      ImageIndex = 13
      OnClick = tbtnExcluirCADClick
    end
    object ToolButton2: TToolButton
      Left = 358
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object tbtnAcoesCAD: TToolButton
      Left = 366
      Top = 0
      Caption = 'A'#231#245'es'
      DropdownMenu = PopupMenu1
      ImageIndex = 19
    end
    object ToolButton1: TToolButton
      Left = 438
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object tbtnFecharCAD: TToolButton
      Left = 446
      Top = 0
      Caption = 'Fechar [ESC]'
      ImageIndex = 8
      OnClick = tbtnFecharCADClick
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 368
    Width = 541
    Height = 19
    Panels = <
      item
        Bevel = pbNone
        Text = 'Modo:'
        Width = 40
      end
      item
        Width = 100
      end
      item
        Bevel = pbNone
        Width = 50
      end>
    ExplicitWidth = 516
  end
  object FDMemTable_Cliente: TFDMemTable
    AfterOpen = FDMemTable_ClienteAfterOpen
    AfterInsert = FDMemTable_ClienteAfterInsert
    AfterEdit = FDMemTable_ClienteAfterEdit
    AfterPost = FDMemTable_ClienteAfterPost
    AfterCancel = FDMemTable_ClienteAfterCancel
    AfterDelete = FDMemTable_ClienteAfterDelete
    AfterScroll = FDMemTable_ClienteAfterScroll
    AfterRefresh = FDMemTable_ClienteAfterRefresh
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 88
    Top = 72
    object FDMemTable_ClienteNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object FDMemTable_ClienteIdentidade: TStringField
      FieldName = 'Identidade'
      Size = 30
    end
    object FDMemTable_ClienteCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;1;_'
      Size = 30
    end
    object FDMemTable_ClienteTelefone: TStringField
      FieldName = 'Telefone'
      EditMask = '!\(99\)99999\-9999;1;_'
      Size = 30
    end
    object FDMemTable_ClienteEMail: TStringField
      FieldName = 'EMail'
      Size = 100
    end
    object FDMemTable_ClienteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object FDMemTable_ClienteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 100
    end
    object FDMemTable_ClienteNumero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
    object FDMemTable_ClienteComplemento: TStringField
      FieldName = 'Complemento'
      Size = 50
    end
    object FDMemTable_ClienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object FDMemTable_ClienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object FDMemTable_ClienteEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object FDMemTable_ClientePais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
  end
  object dsFDMemTable_Cliente: TDataSource
    DataSet = FDMemTable_Cliente
    Left = 128
    Top = 72
  end
  object FDMemTable_Aux: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 88
    Top = 120
    object FDMemTable_Auxcep: TStringField
      FieldName = 'cep'
      Size = 50
    end
    object FDMemTable_Auxlogradouro: TStringField
      FieldName = 'logradouro'
      Size = 100
    end
    object FDMemTable_Auxcomplemento: TStringField
      FieldName = 'complemento'
      Size = 100
    end
    object FDMemTable_Auxbairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object FDMemTable_Auxlocalidade: TStringField
      FieldName = 'localidade'
      Size = 100
    end
    object FDMemTable_Auxuf: TStringField
      FieldName = 'uf'
      Size = 5
    end
    object FDMemTable_Auxunidade: TStringField
      FieldName = 'unidade'
      Size = 100
    end
    object FDMemTable_Auxibge: TStringField
      FieldName = 'ibge'
      Size = 100
    end
    object FDMemTable_Auxgia: TStringField
      FieldName = 'gia'
      Size = 50
    end
  end
  object RESTClient1: TRESTClient
    Params = <>
    HandleRedirects = True
    Left = 216
    Top = 192
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 248
    Top = 192
  end
  object RESTResponse1: TRESTResponse
    Left = 280
    Top = 192
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 224
    Top = 252
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 320
    Top = 44
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 256
    Top = 252
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 36
    object EnviarEMail1: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333000000000000000007FFFFFFFFFFFF700F77FFFFFFFF
        77F00FFF77FFFF77FFF00FFFFF0000FFFFF00FFF70EEEE07FFF00F707FFFFFF7
        07F0007EEEEEEEEEE7000777777777777770307EEEEEEEEEE70333707FFFFFF7
        07333333707EE707333333333370073333333333333333333333}
      Caption = 'Enviar E-Mail'
      OnClick = EnviarEMail1Click
    end
    object Relatorio1: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00030888888888888880088888888888888000000000000000000F8F8F8F8F8F
        8F8008F8F8F8F8F8F9F00F8F8F8F8F8F8F8000000000000000003330FFFFFFFF
        03333330F0000F0F03333330FFFFFFFF03333330F00F000003333330FFFF0FF0
        33333330F08F0F0333333330FFFF003333333330000003333333}
      Caption = 'Relat'#243'rio'
      OnClick = Relatorio1Click
    end
  end
  object frxReport1: TfrxReport
    Version = '6.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43771.678625358800000000
    ReportOptions.LastChange = 43771.759244236110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 80
    Top = 292
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDouble
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 34.015770000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA DO CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 3.779530000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o: [Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 166.299320000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Nome"]')
        end
        object frxDBDataset1Identidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 18.897650000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'Identidade'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Identidade"]')
        end
        object frxDBDataset1CPF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 22.677180000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CPF"]')
        end
        object frxDBDataset1Telefone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 37.795300000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'Telefone'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Telefone"]')
        end
        object frxDBDataset1EMail: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 45.354360000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          DataField = 'EMail'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMail"]')
        end
        object frxDBDataset1CEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 60.472480000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CEP"]')
        end
        object frxDBDataset1Endereco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 84.929190000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          DataField = 'Endereco'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Endereco"]')
        end
        object frxDBDataset1Numero: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 81.149660000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'Numero'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Numero"]')
        end
        object frxDBDataset1Complemento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 109.606370000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'Complemento'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Complemento"]')
        end
        object frxDBDataset1Bairro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 105.826840000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'Bairro'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Bairro"]')
        end
        object frxDBDataset1Cidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 128.504020000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'Cidade'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Cidade"]')
        end
        object frxDBDataset1Estado: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 132.283550000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'Estado'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Estado"]')
        end
        object frxDBDataset1Pais: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 136.063080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Pais'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Pais"]')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 41.574830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 45.354360000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMail:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 132.283550000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 136.063080000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pa'#237's:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 84.929190000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 81.149660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 109.606370000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 105.826840000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 158.740260000000000000
          Width = 714.330706220000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Nome=Nome'
      'Identidade=Identidade'
      'CPF=CPF'
      'Telefone=Telefone'
      'EMail=EMail'
      'CEP=CEP'
      'Endereco=Endereco'
      'Numero=Numero'
      'Complemento=Complemento'
      'Bairro=Bairro'
      'Cidade=Cidade'
      'Estado=Estado'
      'Pais=Pais')
    DataSource = dsFDMemTable_Cliente
    BCDToCurrency = False
    Left = 112
    Top = 292
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 32
    Top = 320
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 64
    Top = 320
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 96
    Top = 320
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 128
    Top = 320
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 160
    Top = 320
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 192
    Top = 320
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 214
    Top = 320
  end
end
