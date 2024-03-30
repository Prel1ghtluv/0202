unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  TAGraph, TASeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  g,n,k,s:double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.Label6Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  n:=StrToInt(InputBox('Введите начальное значение','Ввод','0'));
  k:=StrToInt(InputBox('Введите конечное значение','Ввод','0'));
  Label5.Caption:=('от' + FloatToStr(n) + 'до' + FloatToStr(k));
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  s:=StrToInt(InputBox('Введите конечное значение','Ввод','0'));
  Label6.Caption:=('Шаг ' + FloatToStr(s));
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
var z,y:double;
begin
  Chart1LineSeries1.Clear;
  Chart1LineSeries1.SeriesColor:=clRed;
  Chart1LineSeries1.ShowLines:=True;
  Chart1LineSeries1.ShowPoints:=True;
  z:=n;
  While z<=k do
    begin
      if g=1 then begin
      y:= sin(2*z) ;
      end;
      Chart1LineSeries1.AddXY(z,y);
      if g=2 then begin
      y:=    cos(3*z);
      Chart1LineSeries1.AddXY(z,y);
      end;
      z:=z+s;
    end;
    end;




procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  g:=1;
  Label3.Caption:=('y=sin(2x)')
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  g:=2;
  Label3.Caption:=('y=cos(3x)')
end;

end.

