inherited dmInventory: TdmInventory
  Height = 213
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmInventory'
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'IDINVENTORY'
        ParamType = ptInput
        Size = 38
      end>
    ProviderName = 'dspInventory'
    AfterInsert = cdsMasterAfterInsert
    OnCalcFields = cdsMasterCalcFields
    object cdsMasterIDINVENTORY: TStringField
      FieldName = 'IDINVENTORY'
      Required = True
      Size = 38
    end
    object cdsMasterFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object cdsMasterFOLIO: TStringField
      FieldName = 'FOLIO'
      Size = 10
    end
    object cdsMasterIDPROVISIONER: TStringField
      FieldName = 'IDPROVISIONER'
      Size = 38
    end
    object cdsMasterIDFUEL: TStringField
      FieldName = 'IDFUEL'
      Size = 38
    end
    object cdsMasterCANTIDAD: TFloatField
      DefaultExpression = '0'
      FieldName = 'CANTIDAD'
    end
    object cdsMasterPRECIO: TFloatField
      DefaultExpression = '0'
      FieldName = 'PRECIO'
    end
    object cdsMasterAJUSTE: TFloatField
      DefaultExpression = '0'
      FieldName = 'AJUSTE'
    end
    object cdsMasterSUBTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUBTOTAL'
      currency = True
      Calculated = True
    end
    object cdsMasterIMPORTE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IMPORTE'
      currency = True
      Calculated = True
    end
  end
  object cdsInventoryByDate: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspInventoryByDate'
    RemoteServer = dspMaster
    AfterInsert = cdsMasterAfterInsert
    OnCalcFields = cdsMasterCalcFields
    Left = 112
    Top = 64
    object cdsInventoryByDateIDINVENTORY: TStringField
      FieldName = 'IDINVENTORY'
      Required = True
      Size = 38
    end
    object cdsInventoryByDateFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object cdsInventoryByDatePROVISIONER: TStringField
      FieldName = 'PROVISIONER'
      ReadOnly = True
      Size = 61
    end
    object cdsInventoryByDateCOMBUSTIBLE: TStringField
      FieldName = 'COMBUSTIBLE'
      ReadOnly = True
      Size = 61
    end
    object cdsInventoryByDateCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object cdsInventoryByDatePRECIO: TFloatField
      FieldName = 'PRECIO'
      currency = True
    end
    object cdsInventoryByDateSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      ReadOnly = True
      currency = True
    end
    object cdsInventoryByDateAJUSTE: TFloatField
      FieldName = 'AJUSTE'
      ReadOnly = True
    end
    object cdsInventoryByDateIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      ReadOnly = True
      currency = True
    end
  end
  object frxInventoryByDate: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43269.964377395800000000
    ReportOptions.LastChange = 43269.977291562500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 112
    Top = 160
    Datasets = <
      item
        DataSet = fdsInventoryByDate
        DataSetName = 'fdsRefuelByDate'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 980.410082000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de entradas de combustible')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Width = 978.897791570000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 74.653477920000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 112.448777920000000000
          Width = 226.771653540000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PROVEEDOR')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 588.011065990000000000
          Width = 75.008449460000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'LITROS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 666.799045450000000000
          Width = 64.238867520000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COSTO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 734.817442970000000000
          Width = 77.781028600000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SUBTOTAL')
          ParentFont = False
          Style = 'Header'
        end
        object Memo18: TfrxMemoView
          Left = 340.157700000000000000
          Width = 226.771653540000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMBUSTIBLE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 816.378480000000000000
          Width = 70.221968600000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'AJUSTE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Left = 888.189550000000000000
          Width = 89.119618600000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo19: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '#')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 980.410082000000000000
        DataSet = fdsInventoryByDate
        DataSetName = 'fdsRefuelByDate'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = fdsInventoryByDate
          DataSetName = 'fdsRefuelByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsRefuelByDate."FECHA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 588.011065990000000000
          Width = 75.008449460000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = fdsInventoryByDate
          DataSetName = 'fdsRefuelByDate'
          DisplayFormat.FormatStr = '#,#0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRefuelByDate."CANTIDAD"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 666.799045450000000000
          Width = 64.238867520000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = fdsInventoryByDate
          DataSetName = 'fdsRefuelByDate'
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRefuelByDate."PRECIO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 885.998642970000000000
          Width = 92.899148600000000000
          Height = 18.897650000000000000
          DataField = 'IMPORTE'
          DataSet = fdsInventoryByDate
          DataSetName = 'fdsRefuelByDate'
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRefuelByDate."IMPORTE"]')
          ParentFont = False
          Style = 'Data'
        end
        object fdsRefuelByDateCOMBUSTIBLE: TfrxMemoView
          Left = 340.157700000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataField = 'COMBUSTIBLE'
          DataSet = fdsInventoryByDate
          DataSetName = 'fdsRefuelByDate'
          Memo.UTF8W = (
            '[fdsRefuelByDate."COMBUSTIBLE"]')
        end
        object fdsRefuelByDatePROVISIONER: TfrxMemoView
          Left = 113.385802360000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataField = 'PROVISIONER'
          DataSet = fdsInventoryByDate
          DataSetName = 'fdsRefuelByDate'
          Memo.UTF8W = (
            '[fdsRefuelByDate."PROVISIONER"]')
        end
        object fdsRefuelByDateAJUSTE: TfrxMemoView
          Left = 816.378480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'AJUSTE'
          DataSet = fdsInventoryByDate
          DataSetName = 'fdsRefuelByDate'
          DisplayFormat.FormatStr = '#,#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRefuelByDate."AJUSTE"]')
        end
        object fdsRefuelByDateSUBTOTAL: TfrxMemoView
          Left = 733.228820000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SUBTOTAL'
          DataSet = fdsInventoryByDate
          DataSetName = 'fdsRefuelByDate'
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRefuelByDate."SUBTOTAL"]')
        end
        object Memo11: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Line]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 275.905690000000000000
        Width = 980.410082000000000000
        object Memo15: TfrxMemoView
          Align = baWidth
          Width = 980.410082000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo16: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 904.819482000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 980.410082000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 889.700928980000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsRefuelByDate."IMPORTE">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 588.094488188976400000
          Width = 74.834645670000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsRefuelByDate."CANTIDAD">,MasterData1)]')
        end
      end
    end
  end
  object fdsInventoryByDate: TfrxDBDataset
    UserName = 'fdsRefuelByDate'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDINVENTORY=IDINVENTORY'
      'FECHA=FECHA'
      'PROVISIONER=PROVISIONER'
      'COMBUSTIBLE=COMBUSTIBLE'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'SUBTOTAL=SUBTOTAL'
      'AJUSTE=AJUSTE'
      'IMPORTE=IMPORTE')
    DataSet = cdsInventoryByDate
    BCDToCurrency = False
    Left = 112
    Top = 112
  end
  object frxXLSExport: TfrxXLSExport
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
    Left = 24
    Top = 160
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
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
    Left = 24
    Top = 112
  end
end
