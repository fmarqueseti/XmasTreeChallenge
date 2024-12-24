{******************************************************************
 * DATE      : 2024-12-24                                         *
 * AUTHOR    : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)           *
 * OBJECTIVE : PRINT A CHRISTMAS TREE USING PASCAL                *
 * CPD       : EMBARCADERO                                        *
 ******************************************************************}
program XmasTree;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  LMaxLines = 10;
  LMaxCols = 10;

var
  LLineNumber: Integer;

begin
  for LLineNumber := 1 to LMaxLines do
  begin
    Writeln( StringOfChar(' ', LMaxLines - LLineNumber),
             StringOfChar('*', LLineNumber),
             StringOfChar('*', LLineNumber) );
  end;

  Writeln( StringOfChar(' ', LMaxLines), '|' );
  Writeln( ' MERRY CHRISTMAS AND ' );
  Writeln( '  A HAPPY NEW YEAR!  ' );
end.