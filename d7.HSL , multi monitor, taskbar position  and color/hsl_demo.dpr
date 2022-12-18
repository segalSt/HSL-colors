program Project1;

{  compiler           versions symbols
  Delphi 10.3 Rio	    33	     VER330
  Delphi 10.2 Tokyo	  32	     VER320
  Delphi 10.1 Berlin	31	     VER310
  Delphi 10 Seattle	  30	     VER300
  Delphi XE8	        29	     VER290
  Delphi XE7	        28	     VER280
  Delphi XE6	        27	     VER270
  AppMethod 1	        26.5  	 VER265
  Delphi XE5	        26	     VER260
  Delphi XE4	        25	     VER250
  Delphi XE3	        24	     VER240
  Delphi XE2	        23	     VER230
  Delphi XE	          22	     VER220
  Delphi 2010	        21	     VER210
  Delphi 2009	        20	     VER200
  Delphi 2007 .NET	  19	     VER190
  Delphi 2007	        18.5     VER185 (also VER180)
  Delphi 2006	        18	     VER180
  Delphi 2005	        17	     VER170
  Delphi 8 .NET	      16	     VER160
  Delphi 7  	        15	     VER150
  Delphi 6	          14	     VER140
  Delphi 5	          13(*) 	 VER130
  Delphi 4	          12(*)	   VER120
  Delphi 3	          10(*) 	 VER100
  Delphi 2	          9(*)  	 VER90
  Delphi 1	          8(*)  	 VER80

  (*) These versions did not have a CompilerVersion constant, it was introduced with Delphi 6.
  http://docwiki.embarcadero.com/RADStudio/Tokyo/en/Compiler_Versions
}


{$R *.dres}

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  HSLUtility in 'HSLUtility.pas',
  uWinControlHelper in 'uWinControlHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
