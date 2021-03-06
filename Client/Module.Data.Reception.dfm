inherited dmReception: TdmReception
  Height = 213
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmReception'
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDRECEPTION'
        ParamType = ptInput
      end>
    AfterInsert = cdsMasterAfterInsert
    OnCalcFields = cdsMasterCalcFields
    object cdsMasterIDRECEPTION: TStringField
      FieldName = 'IDRECEPTION'
      Required = True
      Size = 38
    end
    object cdsMasterFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object cdsMasterIDPROVIDER: TStringField
      FieldName = 'IDPROVIDER'
      Size = 38
    end
    object cdsMasterIDPRODUCT: TStringField
      FieldName = 'IDPRODUCT'
      Size = 38
    end
    object cdsMasterIDTRUCK: TStringField
      FieldName = 'IDTRUCK'
      Size = 38
    end
    object cdsMasterIDDRIVER: TStringField
      FieldName = 'IDDRIVER'
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
    object cdsMasterIMPORTE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'IMPORTE'
      Calculated = True
    end
  end
  inherited cdsConsult: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FIN'
        ParamType = ptInput
      end>
    Left = 112
    object cdsConsultIDRECEPTION: TStringField
      FieldName = 'IDRECEPTION'
      Origin = 'IDRECEPTION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsConsultFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object cdsConsultPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsConsultPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsConsultCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object cdsConsultPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      DisplayFormat = '$,0.00;-$,0.00'
    end
    object cdsConsultIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '$,0.00;-$,0.00'
    end
  end
  inherited fdsConsult: TfrxDBDataset
    UserName = 'fdsReceptionByDate'
    Left = 112
  end
  inherited frxConsult: TfrxReport
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    ReportOptions.CreateDate = 43269.964377395800000000
    ReportOptions.LastChange = 43269.977291562500000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 112
    Datasets = <
      item
        DataSet = fdsConsult
        DataSetName = 'fdsReceptionByDate'
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
        Frame.Typ = []
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
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
        Frame.Typ = []
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de recepciones por fecha')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Width = 740.787401574803000000
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
          Width = 131.346427920627000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 131.346427920000000000
          Width = 197.293448550000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUCTO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 328.639876470000000000
          Width = 202.678239520000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PROVEEDOR')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 531.318115990000000000
          Width = 75.008449460000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PESO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 606.326565450000000000
          Width = 64.238867520000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRECIO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 670.565432970000000000
          Width = 70.221968600000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 740.409927000000000000
        DataSet = fdsConsult
        DataSetName = 'fdsReceptionByDate'
        RowCount = 0
        object Memo9: TfrxMemoView
          Width = 131.346427920627000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = fdsConsult
          DataSetName = 'fdsReceptionByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsReceptionByDate."FECHA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 131.346427920627000000
          Width = 197.293448550356000000
          Height = 18.897650000000000000
          DataField = 'PRODUCTO'
          DataSet = fdsConsult
          DataSetName = 'fdsReceptionByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsReceptionByDate."PRODUCTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 328.639876470983000000
          Width = 202.678239519695000000
          Height = 18.897650000000000000
          DataField = 'PROVEEDOR'
          DataSet = fdsConsult
          DataSetName = 'fdsReceptionByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsReceptionByDate."PROVEEDOR"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 531.318115990000000000
          Width = 75.008449460000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = fdsConsult
          DataSetName = 'fdsReceptionByDate'
          DisplayFormat.FormatStr = '#,#0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsReceptionByDate."CANTIDAD"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 606.326565450000000000
          Width = 64.238867520000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = fdsConsult
          DataSetName = 'fdsReceptionByDate'
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsReceptionByDate."PRECIO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 670.565432970000000000
          Width = 70.221968600000000000
          Height = 18.897650000000000000
          DataField = 'IMPORTE'
          DataSet = fdsConsult
          DataSetName = 'fdsReceptionByDate'
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsReceptionByDate."IMPORTE"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo16: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 670.488188980000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsReceptionByDate."IMPORTE">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 529.134200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,#0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsReceptionByDate."CANTIDAD">,MasterData1)]')
        end
      end
    end
  end
end
