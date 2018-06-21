unit Common.Form.Search;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Core.Form.Base, Common.Data.Search, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, System.Actions, Vcl.ActnList, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls,
  cxTextEdit, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmSearch = class(TfrmBase)
    txtFilter: TcxTextEdit;
    dsSearch: TDataSource;
    grdSearch: TcxGrid;
    grdSearchDBTableView1: TcxGridDBTableView;
    grdSearchLevel1: TcxGridLevel;
    actList: TActionList;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    lblBusqueda: TcxLabel;
    gpFotter: TGridPanel;
    procedure txtFilterPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdSearchDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure grdSearchDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FCode: string;
    FTable: string;
    FField: string;
    { Private declarations }
  public
    { Public declarations }
    dmSearch: TdmSearch;
    function GetCode: string;
    property Code: string read FCode write FCode;
    property Table: string read FTable write FTable;
  end;

implementation

{$R *.dfm}

uses Main.Data.Global;

procedure TfrmSearch.FormCreate(Sender: TObject);
begin
  dmSearch:= TdmSearch.Create(Self);
  FField:= 'NAME';
end;

procedure TfrmSearch.FormDestroy(Sender: TObject);
begin
  dmSearch.Free;
end;

procedure TfrmSearch.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
  begin
    dmSearch.cdsGetByField.Next;
    Key:= 0;
  end;
  if Key = VK_UP then
  begin
    dmSearch.cdsGetByField.Prior;
    Key:= 0;
  end;
end;

procedure TfrmSearch.FormShow(Sender: TObject);
begin
  txtFilter.Clear;
  txtFilter.SetFocus;
  dmSearch.GetByField(FTable, FField, EmptyStr);
  grdSearchDBTableView1.DataController.CreateAllItems;
end;

function TfrmSearch.GetCode: string;
begin
  Exit(dmSearch.cdsGetByField.FieldByName('CODE').Value);
end;

procedure TfrmSearch.grdSearchDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnOk.Click;
end;

procedure TfrmSearch.grdSearchDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  FField:= (AColumn as TcxGridDBColumn).DataBinding.FieldName;
  lblBusqueda.Caption:= 'B�SQUEDA POR ' + FField;
  txtFilter.SetFocus;
end;

procedure TfrmSearch.txtFilterPropertiesChange(Sender: TObject);
begin
  dmSearch.GetByField(FTable, FField, txtFilter.Text);
end;

end.
