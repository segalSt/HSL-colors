unit uD7Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    trbLig: TTrackBar;
    Panel1: TPanel;
    trbHui: TTrackBar;
    trbSat: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblHui: TLabel;
    lblLig: TLabel;
    lblSat: TLabel;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure trbHuiChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetColorVals;
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses HSLUtility;

{$R *.dfm}

procedure TForm1.SetColorVals;
var
  h, s, l : integer;
begin
  RGBtoHSLrange(panel1.Color, h, s, l);
  lblLig.Caption := IntToStr(l);
  lblHui.Caption := IntToStr(h);
  lblsat.Caption := IntToStr(s);
  label10.Caption := IntToStr(GetRValue(panel1.Color));
  label12.Caption := IntToStr(GetGValue(panel1.Color));
  label11.Caption := IntToStr(GetBValue(panel1.Color));
end;

procedure TForm1.trbHuiChange(Sender: TObject);
var
  h, s, l : integer;
begin
  RGBtoHSLrange(panel1.Color, h, s, l);
  panel1.color := HSLRangeToRGB(trbHui.Position, trbSat.Position, trbLig.Position);
  SetColorVals;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  panel1.color := HSLRangeToRGB(0, 240, 120);
  SetColorVals;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  panel1.Color := RGB(TrackBar1.position, trackBAr2.position, trackBar3.position);
  SetColorVals;
end;

end.
