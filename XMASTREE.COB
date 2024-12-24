      ******************************************************************
      * DATE      : 2024-12-24                                         *
      * AUTHOR    : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)           *
      * OBJECTIVE : PRINT A CHRISTMAS TREE USING COBOL                 *
      * CPD       : IBM                                                *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. XMASTREE.
      *
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      *
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-MAX-LINES        PIC 99    VALUE 10.
       01  WS-MAX-COLS         PIC 99    VALUE 10.
       01  WS-COUNTER          PIC 99    VALUE ZEROES.
       01  WS-LINE-NUMBER      PIC 99    VALUE ZEROES.
       01  WS-SPACES           PIC X(80) VALUE SPACES.
       01  WS-ASTERISCS        PIC X(80) VALUE SPACES.
      *
       PROCEDURE DIVISION.
       FILL-LINE.
           PERFORM VARYING WS-COUNTER FROM 1 BY 1
                   UNTIL WS-COUNTER > WS-MAX-COLS
                       STRING "*" WS-ASTERISCS DELIMITED BY SPACE
                          INTO WS-ASTERISCS
           END-PERFORM.
      *
       DISPLAY-TREE.
           PERFORM VARYING WS-LINE-NUMBER FROM 1 BY 1
               UNTIL WS-LINE-NUMBER > WS-MAX-LINES
                   DISPLAY WS-SPACES(1:WS-MAX-LINES - WS-LINE-NUMBER)
                           WS-ASTERISCS(1:WS-LINE-NUMBER)
                           WS-ASTERISCS(1:WS-LINE-NUMBER)
           END-PERFORM.
      *
           DISPLAY WS-SPACES(1:WS-MAX-LINES) "|".
           DISPLAY " MERRY CHRISTMAS AND ".
           DISPLAY "  A HAPPY NEW YEAR!  ".
      *
           GOBACK.
      *
       END PROGRAM XMASTREE.
