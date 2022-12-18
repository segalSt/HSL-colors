unit uWinControlHelper;

interface

uses controls, Windows, Forms;

{$if CompilerVersion > 23}   // newest then delphi xe2 (VER230 = 23)
type
  TWinControlHelper = class helper for TWinControl
  protected
    procedure CenterOnMonitor(aMonitorIndex: integer);
    procedure CenterOnMonitorOfWindow(aWinControl: TWinControl); overload;
    procedure CenterOnMonitorOfWindow(aWinHandle: HWND); overload;
    procedure CenterOnWinControl(aWinControl: TWinControl);
    procedure CenterOnOwner();
  end;
{$ifend}

implementation


{$if CompilerVersion > 23}   // newest then delphi xe2
procedure TWinControlHelper.CenterOnWinControl(aWinControl: TWinControl);
begin
  if Assigned(aWinControl) then
  begin
    Left := aWinControl.Left + ((aWinControl.Width - Width) div 2);
    Top := aWinControl.Top + ((aWinControl.Height - Height) div 2);
  end;
end;

procedure TWinControlHelper.CenterOnMonitor(aMonitorIndex: integer);
var
  Monitor: TMonitor;
begin
  if aMonitorIndex < Screen.MonitorCount then
    Monitor := Screen.Monitors[aMonitorIndex]
  else
    Monitor := Screen.Monitors[0];

  Left := Monitor.Left + ((Monitor.Width - Width) div 2);
  Top := Monitor.Top + ((Monitor.Height - Height) div 2);
end;

procedure TWinControlHelper.CenterOnMonitorOfWindow(aWinControl: TWinControl);
begin
  CenterOnMonitor(Screen.MonitorFromWindow(aWinControl.Handle).MonitorNum);
end;

procedure TWinControlHelper.CenterOnMonitorOfWindow(aWinHandle: HWND);
begin
  CenterOnMonitor(Screen.MonitorFromWindow(aWinHandle).MonitorNum);
end;

procedure TWinControlHelper.CenterOnOwner;
var
  Wnd : TWinControl;
begin
  if Assigned(Owner) then
  begin
    if Owner is TWinControl  then
    begin
      Wnd := Owner as TWinControl;
      Left := Wnd.Left + ((Wnd.Width - Width) div 2);
      Top := Wnd.Top + ((Wnd.Height - Height) div 2);
    end;
  end
  else
  {todo: center on current monitor};
end;
{$ifend}

end.

