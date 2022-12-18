unit Unit1;

interface

uses
  SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, ToolWin, Grids, Spin;

type

  x = class
    constructor Create(w: single);    overload;
    constructor Create(d: double);    overload;
    constructor MakeNew(s: string);
    constructor BuildNew(s: string);
  end;



  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    TrackBar1: TTrackBar;
    SpinEdit1: TSpinEdit;
    TabControl1: TTabControl;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private    { Private declarations }
  public     { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses HSLUtility, ShellApi, uWinControlHelper;

function GetTaskBarRect(var aRect: Rect): boolean;
var
  Data: TAppBarData;
begin
  Data.hWnd := FindWindow('Shell_TrayWnd', nil);
  Result := Data.hWnd <> 0;
  Data.cbSize := SizeOf(TAppBarData);
  if Result then
    if SHAppBarMessage(ABM_GETTASKBARPOS, Data) = 1 then
    begin
      aRect.Left := Data.rc.Left;
      aRect.Right := Data.rc.Right;
      aRect.Top := Data.rc.Top;
      aRect.Bottom := Data.rc.Bottom;
    end;
end;

function GetTaskBarColor(): TColor;
var
  Hdc: THandle;
  Rect : TRect;
begin
  if GetTaskBarRect(Rect) then
  begin
    Hdc := GetDC(0);
    try
      result := GetPixel(Hdc, Rect.Left +1 , Rect.Top + 1);
    finally
      ReleaseDC(0, hdc);
    end;
  end;
end;

//------------------------------------------------------------------------------

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Frm : TForm1;
begin
  Frm := TForm1.Create(self);
  if Assigned(Frm)  then
  begin
    Frm.Width := Width - 20;
    Frm.Height := Height - 20;
    Frm.Tag := Tag + 1;
    Frm.Caption := 'child ' + IntToStr(Tag);
    Frm.ComboBox1.ItemIndex := ComboBox1.ItemIndex;
    Frm.Show;
    case integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]) of
      1: Frm.CenterOnOwner;
      2: Frm.CenterOnWinControl(self.owner as tform);
      3: Frm.CenterOnMonitorOfWindow(Panel2.Handle);
      4: Frm.CenterOnMonitor(SpinEdit1.Value);
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.Icon.LoadFromResourceName(HInstance, 'Icon_2');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.Icon.LoadFromResourceName(HInstance, 'Icon_1');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  pixel: TColor;
  h, s, l : integer;
begin
  pixel := GetTaskBarColor;
  RGBtoHSLrange(pixel, h, s, l );
  Panel2.Color := pixel;
  TrackBar1.Position := l;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
var
  h, s, l : integer;
begin
  RGBtoHSLrange(panel2.Color, h, s, l);
  panel2.color := HSLRangeToRGB(h, s, TrackBar1.Position);
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.AddItem('owner', pointer(1));
  ComboBox1.AddItem('win control', pointer(2));
  ComboBox1.AddItem('Monitor of Wnd', pointer(3));
  ComboBox1.AddItem('Monitor', pointer(4));
  ComboBox1.ItemIndex := 0;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  panel2.Caption := format('left %d, top %d', [Left, top]);
end;


{ x }

constructor x.BuildNew(s: string);
begin

end;

constructor x.Create(w: single);
begin

end;

constructor x.Create(d: double);
begin

end;

constructor x.MakeNew(s: string);
begin

end;

end.
