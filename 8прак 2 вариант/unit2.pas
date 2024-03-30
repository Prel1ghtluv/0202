unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, TAGraph,
  TASeries;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Edit1Change(Sender: TObject);
begin

end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm2.Button1Click(Sender: TObject);
    var z,y,n,k,s,g:double;
begin
  n:=StrToInt(Edit1.Text);
  k:=StrToInt(Edit2.Text);
  s:=StrToFloat(Edit3.Text);

  Chart1LineSeries1.Clear;
  Chart1LineSeries1.SeriesColor:=clRed;
  Chart1LineSeries1.ShowLines:=True;
  Chart1LineSeries1.ShowPoints:=True;
  z:=n;
  While z<=k do
    begin
      if ComboBox1.ItemIndex = 0 then begin
      y:= sin(2*z) ;
      end;
      Chart1LineSeries1.AddXY(z,y);
      if ComboBox1.ItemIndex = 1 then begin
      y:=    cos(3*z);
      Chart1LineSeries1.AddXY(z,y);
      end;
      z:=z+s;
    end;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin

end;

procedure TForm2.Edit3Change(Sender: TObject);
begin

end;

procedure TForm2.Edit4Change(Sender: TObject);
  var z,y,n,k,s,g:double;
begin
  n:=StrToInt(Edit1.Text);
  k:=StrToInt(Edit2.Text);
  s:=StrToFloat(Edit3.Text);

  Chart1LineSeries1.Clear;
  Chart1LineSeries1.SeriesColor:=clRed;
  Chart1LineSeries1.ShowLines:=True;
  Chart1LineSeries1.ShowPoints:=True;
  z:=n;
  While z<=k do
    begin
      if ComboBox1.ItemIndex = 0 then begin
      y:= sin(2*z) ;
      end;
      Chart1LineSeries1.AddXY(z,y);
      if ComboBox1.ItemIndex = 1 then begin
      y:=    cos(3*z);
      Chart1LineSeries1.AddXY(z,y);
      end;
      z:=z+s;
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

end.

