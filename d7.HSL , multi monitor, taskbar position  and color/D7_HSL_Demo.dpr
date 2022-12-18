program D7_HSL_Demo;

uses
  Forms,
  uD7Unit in 'uD7Unit.pas' {Form1},
  HSLUtility in 'HSLUtility.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
