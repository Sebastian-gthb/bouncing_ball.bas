DECLARE FUNCTION FeldGroesse (WLinks, WRechts, WOben, Wunten)
DECLARE SUB andersrum ()
SCREEN 13
VIEW (4, 10)-(316, 195), , 0
CONST PI = 3.141592653589#
WINDOW (-3.15, -.14)-(3.56, 1.05)
WLinks = -.25
WRechts = .25
WOben = .08
Wunten = -.08
FeldGross% = FeldGroesse(WLinks, WRechts, WOben, Wunten)
DIM Felda(1 TO FeldGross%)  AS INTEGER
j = 19
FOR i = 1 TO 21
PALETTE j, 0
j = j + 1
NEXT i
CIRCLE (0, -.001), 0, 31
CIRCLE (0, -.001), .01, 31
CIRCLE (0, -.001), .02, 30
CIRCLE (0, -.001), .03, 30
CIRCLE (0, -.001), .04, 29
CIRCLE (0, -.001), .05, 29
CIRCLE (0, -.001), .06, 28
CIRCLE (0, -.001), .07, 28
CIRCLE (0, -.001), .08, 27
CIRCLE (0, -.001), .09, 27
CIRCLE (0, -.001), .1, 26
CIRCLE (0, -.001), .11, 26
CIRCLE (0, -.001), .12, 25
CIRCLE (0, -.001), .13, 25
CIRCLE (0, -.001), .14, 24
CIRCLE (0, -.001), .15, 24
CIRCLE (0, -.001), .16, 23
CIRCLE (0, -.001), .17, 23
CIRCLE (0, -.001), .18, 22
CIRCLE (0, -.001), .19, 21
CIRCLE (0, -.001), .2, 20
CIRCLE (0, -.001), .21, 19
PSET (.02, .01), 29
PSET (.02, -.005), 29
PSET (-.03, .01), 29
PSET (-.03, -.005), 29
PSET (.04, .02), 26
PSET (.04, -.015), 26
PSET (-.05, .02), 26
PSET (-.05, -.015), 26
PSET (.07, .03), 24
PSET (.09, .02), 24
PSET (-.09, .03), 24
PSET (-.11, .02), 24
PSET (.07, -.025), 24
PSET (.09, -.02), 24
PSET (-.09, -.025), 24
PSET (-.11, -.02), 24
PSET (.11, .035), 21
PSET (.16, .03), 20
PSET (.11, -.03), 21
PSET (.16, -.025), 20
PSET (-.13, -.03), 21
PSET (-.18, -.025), 20
PSET (-.13, .035), 21
PSET (-.18, .03), 20
GET (WLinks, WOben)-(WRechts, Wunten), Felda
20
j = 19
FOR i = 1 TO 21
PALETTE j, 0
j = j + 1
NEXT i
CLS
WINDOW (-3.15, -.14)-(3.56, 1.05)
PALETTE
SchrWeit = .02
StartSchleife = -PI
NimmAb = 1
DO
   EndSchleife = -StartSchleife
   FOR x = StartSchleife TO EndSchleife STEP SchrWeit
      y = ABS(COS(x)) * NimmAb - .14
      IF y < -.13 THEN NimmAb = NimmAb * 1
      Esc$ = INKEY$
      IF Esc$ = CHR$(27) THEN EXIT FOR
      IF Esc$ = "g" THEN andersrum: GOTO 20
     PUT (x - .1, y), Felda, PSET
   NEXT x
   SchrWeit = -SchrWeit
   StartSchleife = -StartSchleife
LOOP UNTIL Esc$ = CHR$(27)
CLS : SCREEN 9: SCREEN 0
END

SUB andersrum
VIEW (4, 10)-(316, 195), , 0
CONST PI = 3.141592653589#
WINDOW (-3.15, -.14)-(3.56, 1.05)
WLinks = -.25
WRechts = .25
WOben = .08
Wunten = -.08
FeldGross% = FeldGroesse(WLinks, WRechts, WOben, Wunten)
DIM Feld(1 TO FeldGross%)  AS INTEGER
j = 19
FOR i = 1 TO 21
PALETTE j, 0
j = j + 1
NEXT i
CIRCLE (0, -.001), 0, 31
CIRCLE (0, -.001), .01, 31
CIRCLE (0, -.001), .02, 30
CIRCLE (0, -.001), .03, 30
CIRCLE (0, -.001), .04, 29
CIRCLE (0, -.001), .05, 29
CIRCLE (0, -.001), .06, 28
CIRCLE (0, -.001), .07, 28
CIRCLE (0, -.001), .08, 27
CIRCLE (0, -.001), .09, 27
CIRCLE (0, -.001), .1, 26
CIRCLE (0, -.001), .11, 26
CIRCLE (0, -.001), .12, 25
CIRCLE (0, -.001), .13, 25
CIRCLE (0, -.001), .14, 24
CIRCLE (0, -.001), .15, 24
CIRCLE (0, -.001), .16, 23
CIRCLE (0, -.001), .17, 23
CIRCLE (0, -.001), .18, 22
CIRCLE (0, -.001), .19, 21
CIRCLE (0, -.001), .2, 20
CIRCLE (0, -.001), .21, 19
PSET (.02, .01), 29
PSET (.02, -.005), 29
PSET (-.03, .01), 29
PSET (-.03, -.005), 29
PSET (.04, .02), 26
PSET (.04, -.015), 26
PSET (-.05, .02), 26
PSET (-.05, -.015), 26
PSET (.07, .03), 24
PSET (.09, .02), 24
PSET (-.09, .03), 24
PSET (-.11, .02), 24
PSET (.07, -.025), 24
PSET (.09, -.02), 24
PSET (-.09, -.025), 24
PSET (-.11, -.02), 24
PSET (.11, .035), 21
PSET (.16, .03), 20
PSET (.11, -.03), 21
PSET (.16, -.025), 20
PSET (-.13, -.03), 21
PSET (-.18, -.025), 20
PSET (-.13, .035), 21
PSET (-.18, .03), 20
GET (WLinks, WOben)-(WRechts, Wunten), Feld
CLS
PALETTE
WINDOW (-3.05, .34)-(3.66, -.85)
SchrWeit = .02
StartSchleife = -PI
NimmAb = 1
DO
   EndSchleife = -StartSchleife
   FOR x = StartSchleife TO EndSchleife STEP SchrWeit
      y = ABS(COS(x)) * NimmAb - .14
      IF y > -.13 THEN NimmAb = NimmAb * 1
      Esc$ = INKEY$
      IF Esc$ = CHR$(27) THEN EXIT FOR
      IF Esc$ = "g" THEN GOTO 10
      PUT (x, -y), Feld, PSET
   NEXT x
   SchrWeit = -SchrWeit
   StartSchleife = -StartSchleife
LOOP UNTIL Esc$ = CHR$(27)
CLS : SCREEN 9: SCREEN 0
END
10
END SUB

REM $DYNAMIC
FUNCTION FeldGroesse (WLinks, WRechts, WOben, Wunten) STATIC
   FeldGroesse = 4 + INT(((PMAP(WRechts, 0) - PMAP(WLinks, 0) + 1) * 8 + 7) / 8) * (PMAP(Wunten, 1) - PMAP(WOben, 1) + 1)
END FUNCTION

