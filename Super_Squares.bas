' ***********************************
'
' Super Squares
'
' A simple graphics demo that draws
' a bunch of squares in various ways.
'
' Version 1.04 (for QB64)
'
' Copyleft 2020 by Erich Kohl
'
' Feel free to use this code.
'
' Send comments/questions to:
' ekohl1972@outlook.com
'
' ***********************************

CONST TRUE = -1
CONST FALSE = 0

DIM SHARED KEY_SPACE AS STRING
DIM SHARED KEY_ESC AS STRING

DIM SHARED quit AS INTEGER

Initialize
Main
Terminate

SYSTEM

SUB Center (Text$, Row%, LeftCol%, RightCol%)

    LOCATE Row%, ((LeftCol% + RightCol%) \ 2) - ((LEN(Text$) - 1) \ 2)
    PRINT Text$;

END SUB

SUB DemoLoop ()

    STATIC newscreen AS LONG

    IF newscreen = 0 THEN
        newscreen = _NEWIMAGE(800, 600, 32)
    END IF

    SCREEN newscreen
    _TITLE "Super Squares"

    quit = FALSE

    DO
        Style1
        IF quit = FALSE THEN Style2
        IF quit = FALSE THEN Style3
        IF quit = FALSE THEN Style4
        IF quit = FALSE THEN Style5
        IF quit = FALSE THEN Style6
        IF quit = FALSE THEN Style7
        IF quit = FALSE THEN Style8
    LOOP UNTIL quit = TRUE

END SUB

SUB Initialize ()

    RANDOMIZE TIMER

    KEY_SPACE = CHR$(32)
    KEY_ESC = CHR$(27)

END SUB

SUB Main ()

    DIM keyin AS STRING

    _FULLSCREEN

    DO
        Title
        DO
            keyin = INKEY$
        LOOP UNTIL LEN(keyin)
        IF keyin <> KEY_ESC THEN DemoLoop
    LOOP UNTIL keyin = KEY_ESC

END SUB

SUB Style1 ()

    DIM x AS INTEGER
    DIM y AS INTEGER
    DIM r AS INTEGER
    DIM g AS INTEGER
    DIM b AS INTEGER
    DIM t AS SINGLE
    DIM keyin AS STRING

    CLS

    DO
        FOR x = 0 TO 789 STEP 20
            FOR y = 0 TO 589 STEP 20
                r = INT(256 * RND)
                g = INT(256 * RND)
                b = INT(256 * RND)
                LINE (x, y)-(x + 19, y + 19), _RGB(r, g, b), BF
            NEXT y
        NEXT x

        t = TIMER
        DO
            keyin = INKEY$
        LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC OR TIMER - t >= 1 OR TIMER < t

    LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC

    IF keyin = KEY_ESC THEN quit = TRUE

END SUB

SUB Style2 ()

    DIM x AS INTEGER
    DIM y AS INTEGER
    DIM r AS INTEGER
    DIM g AS INTEGER
    DIM b AS INTEGER
    DIM t AS SINGLE
    DIM keyin AS STRING

    CLS

    DO
        FOR x = 0 TO 789 STEP 20
            FOR y = 0 TO 589 STEP 20
                r = INT(256 * RND)
                g = INT(256 * RND)
                b = INT(256 * RND)
                LINE (x, y)-(x + 19, y + 19), _RGB(r, g, b), B
            NEXT y
        NEXT x

        t = TIMER
        DO
            keyin = INKEY$
        LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC OR TIMER - t >= 1 OR TIMER < t

    LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC

    IF keyin = KEY_ESC THEN quit = TRUE

END SUB

SUB Style3 ()

    DIM x AS INTEGER
    DIM y AS INTEGER
    DIM rgb_combo AS INTEGER
    DIM v AS SINGLE
    DIM t AS SINGLE
    DIM keyin AS STRING

    CLS

    DO
        rgb_combo = INT(7 * RND + 1)
        v = 0
        FOR x = 0 TO 789 STEP 20
            FOR y = 0 TO 589 STEP 20
                SELECT CASE rgb_combo
                    CASE 1
                        LINE (x, y)-(x + 19, y + 19), _RGB(v, 0, 0), BF
                    CASE 2
                        LINE (x, y)-(x + 19, y + 19), _RGB(0, v, 0), BF
                    CASE 3
                        LINE (x, y)-(x + 19, y + 19), _RGB(0, 0, v), BF
                    CASE 4
                        LINE (x, y)-(x + 19, y + 19), _RGB(v, v, 0), BF
                    CASE 5
                        LINE (x, y)-(x + 19, y + 19), _RGB(0, v, v), BF
                    CASE 6
                        LINE (x, y)-(x + 19, y + 19), _RGB(v, 0, v), BF
                    CASE 7
                        LINE (x, y)-(x + 19, y + 19), _RGB(v, v, v), BF
                END SELECT
                v = v + .2125
            NEXT y
        NEXT x

        t = TIMER
        DO
            keyin = INKEY$
        LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC OR TIMER - t >= 1 OR TIMER < t

    LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC

    IF keyin = KEY_ESC THEN quit = TRUE

END SUB

SUB Style4 ()

    DIM x AS INTEGER
    DIM y AS INTEGER
    DIM rgb_combo AS INTEGER
    DIM v AS SINGLE
    DIM t AS SINGLE
    DIM keyin AS STRING

    CLS

    DO
        rgb_combo = INT(7 * RND + 1)
        v = 0
        FOR x = 0 TO 789 STEP 20
            FOR y = 0 TO 589 STEP 20
                SELECT CASE rgb_combo
                    CASE 1
                        LINE (x, y)-(x + 19, y + 19), _RGB(v, 0, 0), B
                    CASE 2
                        LINE (x, y)-(x + 19, y + 19), _RGB(0, v, 0), B
                    CASE 3
                        LINE (x, y)-(x + 19, y + 19), _RGB(0, 0, v), B
                    CASE 4
                        LINE (x, y)-(x + 19, y + 19), _RGB(v, v, 0), B
                    CASE 5
                        LINE (x, y)-(x + 19, y + 19), _RGB(0, v, v), B
                    CASE 6
                        LINE (x, y)-(x + 19, y + 19), _RGB(v, 0, v), B
                    CASE 7
                        LINE (x, y)-(x + 19, y + 19), _RGB(v, v, v), B
                END SELECT
                v = v + .2125
            NEXT y
        NEXT x

        t = TIMER
        DO
            keyin = INKEY$
        LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC OR TIMER - t >= 1 OR TIMER < t

    LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC

    IF keyin = KEY_ESC THEN quit = TRUE

END SUB

SUB Style5 ()

    DIM x AS INTEGER
    DIM y AS INTEGER
    DIM size AS INTEGER
    DIM i AS INTEGER
    DIM rgb_combo AS INTEGER
    DIM v AS SINGLE
    DIM t AS SINGLE
    DIM keyin AS STRING

    CLS

    DO
        x = INT(800 * RND)
        y = INT(600 * RND)
        size = INT(75 * RND + 25)
        rgb_combo = INT(7 * RND + 1)
        v = 0
        FOR i = 0 TO size
            SELECT CASE rgb_combo
                CASE 1
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(v, 0, 0), B
                CASE 2
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(0, v, 0), B
                CASE 3
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(0, 0, v), B
                CASE 4
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(v, v, 0), B
                CASE 5
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(0, v, v), B
                CASE 6
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(v, 0, v), B
                CASE 7
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(v, v, v), B
            END SELECT
            v = v + (255 / size)
        NEXT i

        t = TIMER
        DO
            keyin = INKEY$
        LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC OR TIMER - t >= .25 OR TIMER < t

    LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC

    IF keyin = KEY_ESC THEN quit = TRUE

END SUB

SUB Style6 ()

    DIM x AS INTEGER
    DIM y AS INTEGER
    DIM size AS INTEGER
    DIM i AS INTEGER
    DIM rgb_combo AS INTEGER
    DIM v AS SINGLE
    DIM t AS SINGLE
    DIM keyin AS STRING

    CLS

    DO
        x = INT(800 * RND)
        y = INT(600 * RND)
        size = INT(75 * RND + 25)
        rgb_combo = INT(7 * RND + 1)
        v = 0
        FOR i = 0 TO size STEP 3
            SELECT CASE rgb_combo
                CASE 1
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(v, 0, 0), B
                CASE 2
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(0, v, 0), B
                CASE 3
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(0, 0, v), B
                CASE 4
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(v, v, 0), B
                CASE 5
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(0, v, v), B
                CASE 6
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(v, 0, v), B
                CASE 7
                    LINE (x - i, y - i)-(x + i, y + i), _RGB(v, v, v), B
            END SELECT
            v = v + ((255 / size) * 3)
        NEXT i

        t = TIMER
        DO
            keyin = INKEY$
        LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC OR TIMER - t >= .25 OR TIMER < t

    LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC

    IF keyin = KEY_ESC THEN quit = TRUE

END SUB

SUB Style7 ()

    DIM x(1 TO 50) AS INTEGER
    DIM y(1 TO 50) AS INTEGER
    DIM s(1 TO 50) AS INTEGER
    DIM c(1 TO 50) AS LONG
    DIM i AS INTEGER
    DIM t AS SINGLE
    DIM keyin AS STRING

    CLS

    FOR i = 1 TO 50
        x(i) = INT(800 * RND)
        y(i) = INT(600 * RND)
        s(i) = INT(75 * RND + 25)
        c(i) = _RGB(INT(256 * RND), INT(256 * RND), INT(256 * RND))
    NEXT i

    DO
        FOR i = 1 TO 50
            LINE (x(i) - s(i), y(i) - s(i))-(x(i) + s(i), y(i) + s(i)), c(i), BF
        NEXT i
        _DISPLAY
        t = TIMER
        DO
        LOOP UNTIL TIMER - t >= .1 OR TIMER < t
        FOR i = 1 TO 50
            LINE (x(i) - s(i), y(i) - s(i))-(x(i) + s(i), y(i) + s(i)), _RGB(0, 0, 0), BF
            x(i) = x(i) + (INT(3 * RND) - 1)
            y(i) = y(i) + (INT(3 * RND) - 1)
        NEXT i
        keyin = INKEY$
    LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC

    IF keyin = KEY_ESC THEN quit = TRUE

END SUB

SUB Style8 ()

    DIM x(1 TO 50) AS INTEGER
    DIM y(1 TO 50) AS INTEGER
    DIM s(1 TO 50) AS INTEGER
    DIM c(1 TO 50) AS LONG
    DIM i AS INTEGER
    DIM t AS SINGLE
    DIM keyin AS STRING

    CLS

    FOR i = 1 TO 50
        x(i) = INT(800 * RND)
        y(i) = INT(600 * RND)
        s(i) = INT(75 * RND + 25)
        c(i) = _RGB(INT(256 * RND), INT(256 * RND), INT(256 * RND))
    NEXT i

    DO
        FOR i = 1 TO 50
            LINE (x(i) - s(i), y(i) - s(i))-(x(i) + s(i), y(i) + s(i)), c(i), B
        NEXT i
        _DISPLAY
        t = TIMER
        DO
        LOOP UNTIL TIMER - t >= .1 OR TIMER < t
        FOR i = 1 TO 50
            LINE (x(i) - s(i), y(i) - s(i))-(x(i) + s(i), y(i) + s(i)), _RGB(0, 0, 0), B
            x(i) = x(i) + (INT(3 * RND) - 1)
            y(i) = y(i) + (INT(3 * RND) - 1)
        NEXT i
        keyin = INKEY$
    LOOP UNTIL keyin = KEY_SPACE OR keyin = KEY_ESC

    IF keyin = KEY_ESC THEN quit = TRUE

    _AUTODISPLAY

END SUB

SUB Terminate ()

    COLOR 7, 0
    CLS

END SUB

SUB Title ()

    DIM col AS INTEGER
    DIM row AS INTEGER

    SCREEN 0
    CLS
    _TITLE "Super Squares"
    LOCATE 1, 1
    COLOR 1, 0
    PRINT STRING$(560, CHR$(176))
    LOCATE 8, 1
    COLOR 9, 0
    PRINT STRING$(80, CHR$(205))
    COLOR 11, 0
    Center "Super Squares Graphics Demo 1.04", 10, 1, 80
    Center "Copyleft 2020 by Erich Kohl", 11, 1, 80
    COLOR 15, 0
    Center "During the demo, press Space to cycle to next style, Esc to exit.", 14, 1, 80
    Center "Press any key to begin or Esc to exit.", 16, 1, 80
    LOCATE 18, 1
    COLOR 9, 0
    PRINT STRING$(80, CHR$(205))
    LOCATE 19, 1
    COLOR 1, 0
    FOR row = 19 TO 25
        LOCATE row, 1
        PRINT STRING$(80, CHR$(176));
    NEXT row

    COLOR 12, 0

    FOR row = 2 TO 6 STEP 2
        FOR col = 5 TO 75 STEP 10
            IF row = 2 OR row = 6 THEN
                LOCATE row, col
                PRINT "*"
                LOCATE row + 18, col
                PRINT "*";
            ELSE
                IF col <> 75 THEN
                    LOCATE row, col + 5
                    PRINT "*"
                    LOCATE row + 18, col + 5
                    PRINT "*";
                END IF
            END IF
        NEXT col
    NEXT row

END SUB

