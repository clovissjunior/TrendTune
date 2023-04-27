unit UMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Grids, ComCtrls, Menus, ExtCtrls, DBGrids, DBCtrls, TAGraph, TASeries, ZConnection, ZDataset, ZSqlUpdate,
  Types, math;

type

  { TFMain }

  TFMain = class(TForm)
    ComboBoxProtocol: TComboBox;
    ConnectionMySQL: TZConnection;
    DataSourceUpdates: TDataSource;
    DataSourceColumns: TDataSource;
    DataSourceTables: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    EditUser: TEdit;
    EditPassword: TEdit;
    EditLocalhost: TEdit;
    EditDatabase: TEdit;
    GridLasso: TStringGrid;
    GridLinear: TStringGrid;
    GridLogistic: TStringGrid;
    GridPCR: TStringGrid;
    GridPolynomial: TStringGrid;
    GridRidge: TStringGrid;
    GridSVR: TStringGrid;
    GridValores: TStringGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    ImageList1: TImageList;
    ImageList2: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    LabelRidge1: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabelLinear1: TLabel;
    LabelLasso1: TLabel;
    LabelLogistic1: TLabel;
    LabelPolynomial1: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    PageControlPatterns: TPageControl;
    Panel1: TPanel;
    BarLinear: TProgressBar;
    BarLasso: TProgressBar;
    BarLogistic: TProgressBar;
    BarPolynomial: TProgressBar;
    BarRidge: TProgressBar;
    BarPCR: TProgressBar;
    BarSVR: TProgressBar;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    QAdditionalBase1: TStringField;
    QAdditionalBase10: TStringField;
    QAdditionalBase2: TStringField;
    QAdditionalBase3: TStringField;
    QAdditionalBase4: TStringField;
    QAdditionalBase5: TStringField;
    QAdditionalBase6: TStringField;
    QAdditionalBase7: TStringField;
    QAdditionalBase8: TStringField;
    QAdditionalBase9: TStringField;
    QAdditionaldate_insert: TDateField;
    QAdditionalIdReg: TLargeintField;
    QAdditionaltime_insert: TTimeField;
    QAdditionalTypeRegression: TStringField;
    QColumnsCOLUMN_NAME: TStringField;
    QColumnsDATA_TYPE: TStringField;
    QParametersLastTable: TStringField;
    QPatternsBase1: TStringField;
    QPatternsBase10: TStringField;
    QPatternsBase2: TStringField;
    QPatternsBase3: TStringField;
    QPatternsBase4: TStringField;
    QPatternsBase5: TStringField;
    QPatternsBase6: TStringField;
    QPatternsBase7: TStringField;
    QPatternsBase8: TStringField;
    QPatternsBase9: TStringField;
    QPatternsTypeRegression: TStringField;
    QRowsTABLE_NAME: TStringField;
    QRowsTABLE_ROWS: TLargeintField;
    QTablestable_name: TStringField;
    QUpdatesFirstColumn: TStringField;
    QUpdatesOwner: TStringField;
    QUpdatesSecondColumn: TStringField;
    QUpdatesTableName: TStringField;
    QValues: TZQuery;
    QValuesano: TStringField;
    QValuespattern: TFloatField;
    BtnCalculate: TSpeedButton;
    BtnExit: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    StatusBar1: TStatusBar;
    QTables: TZQuery;
    GridSummary: TStringGrid;
    ConnectionSQLite: TZConnection;
    QColumns: TZQuery;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    QUpdates: TZQuery;
    UUpdates: TZUpdateSQL;
    QRows: TZQuery;
    QPatterns: TZQuery;
    UPpatterns: TZUpdateSQL;
    QAdditional: TZQuery;
    UAdditional: TZUpdateSQL;
    QParameters: TZQuery;
    UParameters: TZUpdateSQL;
    procedure FormShow(Sender: TObject);
    procedure GridLassoDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure GridLinearDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure GridLogisticDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure GridPCRDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure GridPolynomialDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure GridRidgeDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure GridSVRDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure GridValoresDrawCell(Sender: TObject; aCol, aRow: Integer;
      aRect: TRect; aState: TGridDrawState);
    procedure MenuItem2Click(Sender: TObject);
    procedure BtnCalculateClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure QTablesAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    function GridDE(g1,g2:TStringGrid):double;
    function GridPearson(g1,g2:TStringGrid):double;
    function GridLine(g:TStringGrid;line:byte):string;
  public

  end;

var
  FMain: TFMain;

implementation

uses upatterneditor,upatterns_additional;

{$R *.lfm}

{ TFMain }

procedure TFMain.BtnCalculateClick(Sender: TObject);
type reg=record
           year,value:integer;
         end;
var v,min,max,VarLinear,
    VarLasso,
    VarLogistic,
    VarPolynomial,
    VarRidge,
    VarPCR,
    VarSVR:double;
    i,num,x:integer;
    values:array[1..20] of reg;
    NameRegression:string;
    Tempo: TTime;
begin
  num:=0; tempo:=now;
  QParameters.close;
  QParameters.open;
  if (QParameters.recordcount=0) then
    QParameters.append
  else QParameters.edit;
  QParametersLastTable.value:=QTablestable_name.value;
  QParameters.applyupdates;

  for i:=0 to GridValores.colcount-1 do
    for x:=0 to GridValores.rowcount-1 do
      GridValores.cells[i,x]:='';

  BarLasso.Position:=0;
  BarLinear.Position:=0;
  BarLogistic.Position:=0;
  BarPolynomial.Position:=0;
  BarRidge.Position:=0;
  BarSVR.Position:=0;
  BarPCR.Position:=0;

  QValues.close;
  QValues.sql.clear;
  QValues.sql.add('select t3.ano,round(t3.m10 /(');
  QValues.sql.add('	select max(t.media)');
  QValues.sql.add('	from ( select DATE_FORMAT('+QUpdatesFirstColumn.value+' , "%Y%m") ano,');
  QValues.sql.add('			avg('+QUpdatesSecondColumn.value+') Media');
  QValues.sql.add('		from '+QUpdatesTableName.value);
  QValues.sql.add('		group by DATE_FORMAT('+QUpdatesFirstColumn.value+' , "%Y%m")) t),0) pattern');
  QValues.sql.add('from (select t2.ano,(t2.Media * 10) m10');
  QValues.sql.add('	from ( select DATE_FORMAT('+QUpdatesFirstColumn.value+' , "%Y%m") ano,');
  QValues.sql.add('			avg('+QUpdatesSecondColumn.value+') Media');
  QValues.sql.add('		from '+QUpdatesTableName.value);
  QValues.sql.add('		group by DATE_FORMAT('+QUpdatesFirstColumn.value+' , "%Y%m")) t2) t3');
  QValues.sql.add('		order by t3.ano desc limit 20');
  QValues.open;
  while not QValues.eof do
  begin
    num:=num+1;
    {values[num].year:=QValuesano.asinteger;
    if (QValuespattern.asinteger=0) then
      values[num].value:=1
    else values[num].value:=QValuespattern.asinteger; }
    GridValores.cells[num-1,QValuespattern.asinteger]:='*';
    //memo1.lines.add(inttostr(num-1)+','+QValuespattern.asstring);
    QValues.next;
  end;
  i:=0;

   VarLinear:=GridPearson(GridLinear,GridValores);
   VarSVR:=GridPearson(GridSVR,GridValores);
   VarLasso:=GridPearson(GridLasso,GridValores);
   VarLogistic:=GridPearson(GridLogistic,GridValores);
   VarPolynomial:=GridPearson(GridPolynomial,GridValores);
   VarRidge:=GridPearson(GridRidge,GridValores);
   VarPCR:=GridPearson(GridPCR,GridValores);

   min:=VarLinear;
   NameRegression:='Linear';
   max:=VarLinear;

   if (VarLasso<min) then
       min:=VarLasso;


    if (VarLasso>max) then
    begin
      max:=VarLasso;
      NameRegression:='Lasso';
    end;

   if (VarLogistic<min) then
      min:=VarLogistic;

   if (VarLogistic>max) then
   begin
      max:=VarLogistic;
      NameRegression:='Logística';
   end;

   if (VarPolynomial<min) then
        min:=VarPolynomial;

   if (VarPolynomial>max) then
   begin
      max:=VarPolynomial;
      NameRegression:='Polinomial';
   end;

   if (VarRidge<min) then
        min:=VarRidge;

   if (VarRidge>max) then
   begin
      max:=VarRidge;
      NameRegression:='Ridge';
   end;

   if (VarPCR<min) then
      min:=VarPCR;

   if (VarPCR>max) then
   begin
      max:=VarPCR;
      NameRegression:='PCR';
   end;

   if (VarSVR<min) then
      min:=VarSVR;

   if (VarSVR>max) then
   begin
      max:=VarSVR;
      NameRegression:='SVR';
   end;

   BarLasso.Max:=trunc(max);
   BarLinear.Max:=trunc(max);
   BarLogistic.Max:=trunc(max);
   BarPolynomial.Max:=trunc(max);
   BarRidge.Max:=trunc(max);
   BarSVR.Max:=trunc(max);
   BarPCR.Max:=trunc(max);

   {BarLasso.Position:=trunc(max-VarLasso);
   BarLinear.Position:=trunc(max-VarLinear);
   BarLogistic.Position:=trunc(max-VarLogistic);
   BarPolynomial.Position:=trunc(max-VarPolynomial);
   BarRidge.Position:=trunc(max-VarRidge);
   BarSVR.Position:=trunc(max-VarSVR);
   BarPCR.Position:=trunc(max-VarPCR); }

   BarLasso.Position:=trunc(VarLasso/2);
   BarLinear.Position:=trunc(VarLinear/2);
   BarLogistic.Position:=trunc(VarLogistic/2);
   BarPolynomial.Position:=trunc(VarPolynomial/2);
   BarRidge.Position:=trunc(VarRidge/2);
   BarSVR.Position:=trunc(VarSVR/2);
   BarPCR.Position:=trunc(VarPCR/2);


   QRows.close;
   QRows.ParamByName('t').value:=QTablestable_name.value;
   QRows.ParamByName('s').value:=EditDatabase.text;
   QRows.open;
   GridSummary.cells[1,0]:=floattostr(roundto(100-((min*100)/max),-2))+'%';
   GridSummary.cells[1,1]:=NameRegression;
   GridSummary.cells[1,2]:=inttostr(QRowsTABLE_ROWS.value);
   GridSummary.cells[1,3]:=timetostr(now-tempo);

   case NameRegression of
     'Linear':PageControlPatterns.ActivePageIndex:=0;
     'Lasso':PageControlPatterns.ActivePageIndex:=1;
     'Logística':PageControlPatterns.ActivePageIndex:=2;
     'Polinomial':PageControlPatterns.ActivePageIndex:=3;
     'Ridge':PageControlPatterns.ActivePageIndex:=4;
     'PCR':PageControlPatterns.ActivePageIndex:=5;
     'SVR':PageControlPatterns.ActivePageIndex:=6;
   end;
end;

procedure TFMain.BtnExitClick(Sender: TObject);
begin
  close;
end;

procedure TFMain.PageControl1Change(Sender: TObject);
begin

end;

procedure TFMain.QTablesAfterScroll(DataSet: TDataSet);
begin
  QColumns.close;
  QColumns.ParamByName('tab').value:=QTablestable_name.value;
  QColumns.ParamByName('sc').value:=EditDatabase.text;
  QColumns.open;

  QUpdates.close;
  QUpdates.ParamByName('t').value:=QTablestable_name.value;
  QUpdates.ParamByName('o').value:=EditDatabase.text;
  QUpdates.open;
end;

procedure TFMain.SpeedButton1Click(Sender: TObject);
begin

end;

procedure TFMain.SpeedButton2Click(Sender: TObject);
begin
  if (QUpdates.recordcount=0) then
     begin
       QUpdates.append;
       QUpdatesOwner.value:=EditDatabase.text;
       QUpdatesTableName.value:=QTablestable_name.value;
       QUpdatesFirstColumn.value:=QColumnsCOLUMN_NAME.value;
       QUpdates.ApplyUpdates;
     end
  else
   begin
    QUpdates.edit;
    QUpdatesFirstColumn.value:=QColumnsCOLUMN_NAME.value;
    QUpdates.ApplyUpdates;
  end;
end;

procedure TFMain.SpeedButton3Click(Sender: TObject);
begin
  if (QUpdates.recordcount=0) then
     begin
       QUpdates.append;
       QUpdatesOwner.value:=EditDatabase.text;
       QUpdatesTableName.value:=QTablestable_name.value;
       QUpdatesSecondColumn.value:=QColumnsCOLUMN_NAME.value;
       QUpdates.ApplyUpdates;
     end
  else
   begin
    QUpdates.edit;
    QUpdatesSecondColumn.value:=QColumnsCOLUMN_NAME.value;
    QUpdates.ApplyUpdates;
  end;
end;

procedure TFMain.SpeedButton4Click(Sender: TObject);
begin
  if (messagedlg('Clear definitions. Confirm?',mtconfirmation,[mbyes,mbno],0)=mryes) then
    QUpdates.Delete;
end;

procedure TFMain.SpeedButton5Click(Sender: TObject);
begin
  QAdditional.close;
  QAdditional.open;
  QAdditional.append;
  QAdditionalTypeRegression.value:=LowerCase(PageControlPatterns.ActivePage.Caption);
  QAdditionalBase1.value:=GridLine(GridValores,0); QAdditionalBase2.value:=GridLine(GridValores,1);
  QAdditionalBase3.value:=GridLine(GridValores,2); QAdditionalBase4.value:=GridLine(GridValores,3);
  QAdditionalBase5.value:=GridLine(GridValores,4); QAdditionalBase6.value:=GridLine(GridValores,5);
  QAdditionalBase7.value:=GridLine(GridValores,6); QAdditionalBase8.value:=GridLine(GridValores,7);
  QAdditionalBase9.value:=GridLine(GridValores,8); QAdditionalBase10.value:=GridLine(GridValores,9);
  QAdditionaldate_insert.value:=date;
  QAdditionaltime_insert.value:=now;
  QAdditional.ApplyUpdates;
end;

procedure TFMain.SpeedButton6Click(Sender: TObject);
begin
  QParameters.close;
  QParameters.open;
  if (QParametersLastTable.value<>'') then
    QTables.Locate('table_name',QParametersLastTable.value,[Lopartialkey,locaseinsensitive]);
end;

function TFMain.GridLine(g:TStringGrid;line:byte):string;
var c:byte;
    temp:string;
begin
  temp:='';
  for c:=0 to g.ColCount-1 do
   if (g.cells[c,line]='*') then
    temp:=temp+'*'
   else temp:=temp+' ';
  result:=temp;
end;

procedure TFMain.SpeedButton7Click(Sender: TObject);
begin
  QPatterns.close;
  QPatterns.ParamByName('type').value:=LowerCase(PageControlPatterns.ActivePage.Caption);
  QPatterns.open;

  if (QPatterns.recordcount=0) then
    QPatterns.append
  else QPatterns.edit;
  QPatternsTypeRegression.value:=LowerCase(PageControlPatterns.ActivePage.Caption);
    case LowerCase(PageControlPatterns.ActivePage.Caption) of
     'linear':begin
                QPatternsBase1.value:=GridLine(GridLinear,0); QPatternsBase2.value:=GridLine(GridLinear,1);
                QPatternsBase3.value:=GridLine(GridLinear,2); QPatternsBase4.value:=GridLine(GridLinear,3);
                QPatternsBase5.value:=GridLine(GridLinear,4); QPatternsBase6.value:=GridLine(GridLinear,5);
                QPatternsBase7.value:=GridLine(GridLinear,6); QPatternsBase8.value:=GridLine(GridLinear,7);
                QPatternsBase9.value:=GridLine(GridLinear,8); QPatternsBase10.value:=GridLine(GridLinear,9);
              end;
     'lasso':begin
                QPatternsBase1.value:=GridLine(GridLasso,0); QPatternsBase2.value:=GridLine(GridLasso,1);
                QPatternsBase3.value:=GridLine(GridLasso,2); QPatternsBase4.value:=GridLine(GridLasso,3);
                QPatternsBase5.value:=GridLine(GridLasso,4); QPatternsBase6.value:=GridLine(GridLasso,5);
                QPatternsBase7.value:=GridLine(GridLasso,6); QPatternsBase8.value:=GridLine(GridLasso,7);
                QPatternsBase9.value:=GridLine(GridLasso,8); QPatternsBase10.value:=GridLine(GridLasso,9);
              end;
     'logistic':begin
                QPatternsBase1.value:=GridLine(GridLogistic,0); QPatternsBase2.value:=GridLine(GridLogistic,1);
                QPatternsBase3.value:=GridLine(GridLogistic,2); QPatternsBase4.value:=GridLine(GridLogistic,3);
                QPatternsBase5.value:=GridLine(GridLogistic,4); QPatternsBase6.value:=GridLine(GridLogistic,5);
                QPatternsBase7.value:=GridLine(GridLogistic,6); QPatternsBase8.value:=GridLine(GridLogistic,7);
                QPatternsBase9.value:=GridLine(GridLogistic,8); QPatternsBase10.value:=GridLine(GridLogistic,9);
                end;
     'polynomial':begin
                QPatternsBase1.value:=GridLine(GridPolynomial,0); QPatternsBase2.value:=GridLine(GridPolynomial,1);
                QPatternsBase3.value:=GridLine(GridPolynomial,2); QPatternsBase4.value:=GridLine(GridPolynomial,3);
                QPatternsBase5.value:=GridLine(GridPolynomial,4); QPatternsBase6.value:=GridLine(GridPolynomial,5);
                QPatternsBase7.value:=GridLine(GridPolynomial,6); QPatternsBase8.value:=GridLine(GridPolynomial,7);
                QPatternsBase9.value:=GridLine(GridPolynomial,8); QPatternsBase10.value:=GridLine(GridPolynomial,9);
                end;
     'ridge':begin
                QPatternsBase1.value:=GridLine(GridRidge,0); QPatternsBase2.value:=GridLine(GridRidge,1);
                QPatternsBase3.value:=GridLine(GridRidge,2); QPatternsBase4.value:=GridLine(GridRidge,3);
                QPatternsBase5.value:=GridLine(GridRidge,4); QPatternsBase6.value:=GridLine(GridRidge,5);
                QPatternsBase7.value:=GridLine(GridRidge,6); QPatternsBase8.value:=GridLine(GridRidge,7);
                QPatternsBase9.value:=GridLine(GridRidge,8); QPatternsBase10.value:=GridLine(GridRidge,9);
                end;
     'pcr':begin
                QPatternsBase1.value:=GridLine(GridPCR,0); QPatternsBase2.value:=GridLine(GridPCR,1);
                QPatternsBase3.value:=GridLine(GridPCR,2); QPatternsBase4.value:=GridLine(GridPCR,3);
                QPatternsBase5.value:=GridLine(GridPCR,4); QPatternsBase6.value:=GridLine(GridPCR,5);
                QPatternsBase7.value:=GridLine(GridPCR,6); QPatternsBase8.value:=GridLine(GridPCR,7);
                QPatternsBase9.value:=GridLine(GridPCR,8); QPatternsBase10.value:=GridLine(GridPCR,9);
                end;
     'svr':begin
                QPatternsBase1.value:=GridLine(GridSVR,0); QPatternsBase2.value:=GridLine(GridSVR,1);
                QPatternsBase3.value:=GridLine(GridSVR,2); QPatternsBase4.value:=GridLine(GridSVR,3);
                QPatternsBase5.value:=GridLine(GridSVR,4); QPatternsBase6.value:=GridLine(GridSVR,5);
                QPatternsBase7.value:=GridLine(GridSVR,6); QPatternsBase8.value:=GridLine(GridSVR,7);
                QPatternsBase9.value:=GridLine(GridSVR,8); QPatternsBase10.value:=GridLine(GridSVR,9);
                end;
   end;
   QPatterns.ApplyUpdates;
end;

procedure TFMain.SpeedButton8Click(Sender: TObject);
begin
  try
    FPatterns_additional:=TFPatterns_additional.create(application);
    FPatterns_additional.showmodal;
  finally
    FPatterns_additional.free;
  end;
end;

function TFMain.GridDE(g1, g2: TStringGrid): double;
var c,l,v1,v2:integer;
    d1:double;
begin
  d1:=0;
  v1:=0; v2:=0;
  for c:=0 to 19 do
   begin
   for l:=0 to 9 do
    begin
      if (trim(g1.cells[c,l])='*') then v1:=v1+(l+1);
      if (trim(g2.cells[c,l])='*') then v2:=v2+(l+1);
    end;
   end;
   result:=abs(v1-v2);
end;

function TFMain.GridPearson(g1, g2: TStringGrid): double;
var conjunto1, conjunto2: array[1..20] of real;
tamanho,MAX: integer;
i: integer;
media1, media2: real;
soma1, soma2: real;
numerador, denominador1, denominador2: real;
similaridade:double;

function valorlinha(g:TStringGrid;coluna:integer):integer;
var l,v:integer;
begin
  for l:=0 to 9 do
   if (g.cells[coluna,l]='*') then
   v:=l;
  result:=v+1;
end;

begin
  tamanho:=20;
  for i:=0 to g1.ColCount-1 do
  begin
   conjunto1[i+1]:=valorlinha(g1,i);
   conjunto2[i+1]:=valorlinha(g2,i);
  end;
  soma1 := 0;
    soma2 := 0;
    for i := 1 to tamanho do
    begin
      soma1 := soma1 + conjunto1[i];
      soma2 := soma2 + conjunto2[i];
    end;
    media1 := soma1 / tamanho;
    media2 := soma2 / tamanho;

    // Calcula o numerador e os denominadores do coeficiente de correlação de Pearson
    numerador := 0;
    denominador1 := 0;
    denominador2 := 0;
    for i := 1 to tamanho do
    begin
      numerador := numerador + ((conjunto1[i] - media1) * (conjunto2[i] - media2));
      denominador1 := denominador1 + sqr(conjunto1[i] - media1);
      denominador2 := denominador2 + sqr(conjunto2[i] - media2);
    end;
    similaridade:=numerador / (sqrt(denominador1) * sqrt(denominador2));
result:=(Similaridade + 1) * 100;
end;

procedure TFMain.GridValoresDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if GridValores.cells[acol,arow]='*' then
     with GridValores do
     begin
       Canvas.Brush.Color := clSilver;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left+3,aRect.Top,GridValores.Cells[ACol, ARow]);
     end;
end;

procedure TFMain.MenuItem2Click(Sender: TObject);
begin
  try
    FPatternEditor:=TFPatternEditor.create(application);
    FPatternEditor.showmodal;
  finally
    FPatternEditor.free;
  end;
end;

procedure TFMain.FormShow(Sender: TObject);
begin
  PageControlPatterns.ActivePageIndex:=0;
  QParameters.close;
  QParameters.open;
  if (QParametersLastTable.value<>'') then
    QTables.Locate('table_name',QParametersLastTable.value,[Lopartialkey,locaseinsensitive]);
end;

procedure TFMain.GridLassoDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if GridLasso.cells[acol,arow]='*' then
     with GridLasso do
     begin
       Canvas.Brush.Color := clSilver;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left+3,aRect.Top,GridLasso.Cells[ACol, ARow]);
     end;
end;

procedure TFMain.GridLinearDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if GridLinear.cells[acol,arow]='*' then
     with GridLinear do
     begin
       Canvas.Brush.Color := clSilver;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left+3,aRect.Top,GridLinear.Cells[ACol, ARow]);
     end;
end;

procedure TFMain.GridLogisticDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if GridLogistic.cells[acol,arow]='*' then
     with GridLogistic do
     begin
       Canvas.Brush.Color := clSilver;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left+3,aRect.Top,GridLogistic.Cells[ACol, ARow]);
     end;
end;

procedure TFMain.GridPCRDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if GridPCR.cells[acol,arow]='*' then
     with GridPCR do
     begin
       Canvas.Brush.Color := clSilver;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left+3,aRect.Top,GridPCR.Cells[ACol, ARow]);
     end;
end;

procedure TFMain.GridPolynomialDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if GridPolynomial.cells[acol,arow]='*' then
     with GridPolynomial do
     begin
       Canvas.Brush.Color := clSilver;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left+3,aRect.Top,GridPolynomial.Cells[ACol, ARow]);
     end;
end;

procedure TFMain.GridRidgeDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if GridRidge.cells[acol,arow]='*' then
     with GridRidge do
     begin
       Canvas.Brush.Color := clSilver;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left+3,aRect.Top,GridRidge.Cells[ACol, ARow]);
     end;
end;

procedure TFMain.GridSVRDrawCell(Sender: TObject; aCol, aRow: Integer;
  aRect: TRect; aState: TGridDrawState);
begin
  if GridSVR.cells[acol,arow]='*' then
     with GridSVR do
     begin
       Canvas.Brush.Color := clSilver;
       Canvas.FillRect(aRect);
       Canvas.TextOut(aRect.Left+3,aRect.Top,GridSVR.Cells[ACol, ARow]);
     end;
end;

end.

