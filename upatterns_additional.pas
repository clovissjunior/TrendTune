unit upatterns_additional;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, Grids,
  StdCtrls, DBGrids, ExtCtrls, Buttons, ZDataset;

type

  { TFPatterns_additional }

  TFPatterns_additional = class(TForm)
    BtnCalculate: TSpeedButton;
    BtnExit: TSpeedButton;
    DataSourceItens: TDataSource;
    DataSourcePA: TDataSource;
    DBGrid1: TDBGrid;
    GridView: TStringGrid;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    QPatternsADdate_insert: TDateField;
    QPatternsADtime_insert: TTimeField;
    QPatternsItens: TZQuery;
    QPatternsADTypeRegression: TStringField;
    QPatternsADTypeRegression1: TStringField;
    QPatternsItensBase1: TStringField;
    QPatternsItensBase10: TStringField;
    QPatternsItensBase2: TStringField;
    QPatternsItensBase3: TStringField;
    QPatternsItensBase4: TStringField;
    QPatternsItensBase5: TStringField;
    QPatternsItensBase6: TStringField;
    QPatternsItensBase7: TStringField;
    QPatternsItensBase8: TStringField;
    QPatternsItensBase9: TStringField;
    QPatternsItensdate_insert: TDateField;
    QPatternsItensIdReg: TLargeintField;
    QPatternsItenstime_insert: TTimeField;
    QPatternsValuesBase1: TStringField;
    QPatternsValuesBase10: TStringField;
    QPatternsValuesBase2: TStringField;
    QPatternsValuesBase3: TStringField;
    QPatternsValuesBase4: TStringField;
    QPatternsValuesBase5: TStringField;
    QPatternsValuesBase6: TStringField;
    QPatternsValuesBase7: TStringField;
    QPatternsValuesBase8: TStringField;
    QPatternsValuesBase9: TStringField;
    QPatternsValuesIdReg: TLargeintField;
    QPatternsValuesTypeRegression: TStringField;
    ScrollBox1: TScrollBox;
    QPatternsAD: TZQuery;
    QPatternsValues: TZQuery;
    procedure BtnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QPatternsADAfterScroll(DataSet: TDataSet);
  private

  public

  end;

var
  FPatterns_additional: TFPatterns_additional;
  GLinear,GLasso,GLogistic,GPolynomial,GRidge,RPCR,GSVR:TStringGrid;

implementation

uses umain;

{$R *.lfm}

{ TFPatterns_additional }

procedure atribuirvalores(g:tstringgrid;l:byte;valor:string);
var c:byte;
begin
  if (valor='') then valor:='                    ';
  for c:=0 to g.colcount-1 do
    g.cells[c,l]:=valor[c+1];
end;

procedure TFPatterns_additional.BtnExitClick(Sender: TObject);
begin
  close;
end;

procedure TFPatterns_additional.FormShow(Sender: TObject);
begin
  QPatternsAD.close;
  QPatternsAD.open;
end;

procedure TFPatterns_additional.QPatternsADAfterScroll(DataSet: TDataSet);
var c,l:integer;
begin
  for l:=0 to 9 do
   for c:=0 to 19 do
    GridView.cells[c,l]:=' ';

  QPatternsItens.close;
  QPatternsItens.params.ParamByName('tipo').value:=QPatternsADTypeRegression.value;
  QPatternsItens.open;

  atribuirvalores(GridView,0,QPatternsItensBase1.value);
  atribuirvalores(GridView,1,QPatternsItensBase2.value);
  atribuirvalores(GridView,2,QPatternsItensBase3.value);
  atribuirvalores(GridView,3,QPatternsItensBase4.value);
  atribuirvalores(GridView,4,QPatternsItensBase5.value);
  atribuirvalores(GridView,5,QPatternsItensBase6.value);
  atribuirvalores(GridView,6,QPatternsItensBase7.value);
  atribuirvalores(GridView,7,QPatternsItensBase8.value);
  atribuirvalores(GridView,8,QPatternsItensBase9.value);
  atribuirvalores(GridView,9,QPatternsItensBase10.value);
end;

end.

