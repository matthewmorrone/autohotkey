
MButton::
CoordMode, Mouse, Screen
MouseGetPos, Mx, My
SysGet, Mon1, Monitor, 1
SysGet, Mon2, Monitor, 3
SysGet, Mon3, Monitor, 2

Mon1Width  := Mon1Right - Mon1Left
Mon1Height := Mon1Bottom - Mon1Top

Mon2Width  := Mon2Right - Mon2Left
Mon2Height := Mon2Bottom - Mon2Top

Mon3Width  := Mon3Right - Mon3Left
Mon3Height := Mon3Bottom - Mon3Top

if (Mx > Mon1Left and Mx < Mon1Right) {
    Mid := 1
}
if (Mx > Mon2Left and Mx < Mon2Right) {
    Mid := 2
}
if (Mx > Mon3Left and Mx < Mon3Right) {
    Mid := 3
}

if (Mid = 1) {
    Offset1x := Mx - Mon1Left
    Offset1y := My - Mon1Top
    OffsetRx := Offset1x / Mon1Width
    OffsetRy := Offset1y / Mon1Height

    Offset2x := Round(OffsetRx * Mon2Width)  + Mon2Left
    Offset2y := Round(OffsetRy * Mon2Height) 
    Offset3x := Round(OffsetRx * Mon3Width)  + Mon3Left
    Offset3y := Round(OffsetRy * Mon3Height)
}
if (Mid = 2) {
    Offset2x := Mx - Mon2Left
    Offset2y := My - Mon2Top
    OffsetRx := Offset2x / Mon2Width
    OffsetRy := Offset2y / Mon2Height

    Offset1x := Round(OffsetRx * Mon1Width)
    Offset1y := Round(OffsetRy * Mon1Height)
    Offset3x := Round(OffsetRx * Mon3Width)  + Mon3Left
    Offset3y := Round(OffsetRy * Mon3Height)
}
if (Mid = 3) {
    Offset3x := Mx - Mon3Left
    Offset3y := My - Mon3Top
    OffsetRx := Offset3x / Mon3Width
    OffsetRy := Offset3y / Mon3Height

    Offset1x := Round(OffsetRx * Mon1Width)
    Offset1y := Round(OffsetRy * Mon1Height)
    Offset2x := Round(OffsetRx * Mon2Width)  + Mon2Left
    Offset2y := Round(OffsetRy * Mon2Height)
}
; Mon1Left := Format("{1:04}", Mon1Left)

data =
(
#`tTop`tLeft`tRight`tBottom`tWidth`tHeight
1`t%Mon1Top%`t%Mon1Left%`t%Mon1Right%`t%Mon1Bottom%`t%Mon1Width%`t%Mon1Height%
2`t%Mon2Top%`t%Mon2Left%`t%Mon2Right%`t%Mon2Bottom%`t%Mon2Width%`t%Mon2Height%
3`t%Mon3Top%`t%Mon3Left%`t%Mon3Right%`t%Mon3Bottom%`t%Mon3Width%`t%Mon3Height%

%Mx% %My%
1: %Mon1Left% to %Mon1Right%
2: %Mon2Left% to %Mon2Right%
3: %Mon3Left% to %Mon3Right%

%Mid%

%OffsetRx% %OffsetRy%

%Offset1x% / %Mon1Width%
%Offset1y% / %Mon1Height%
%Offset2x% / %Mon2Width%
%Offset2y% / %Mon2Height%
%Offset3x% / %Mon3Width%
%Offset3y% / %Mon3Height%
)
if (Mid = 1) {
    MouseMove, %Offset2x%, %Offset2y%
}
if (Mid = 2) {
    MouseMove, %Offset3x%, %Offset3y%
}
if (Mid = 3) {
    MouseMove, %Offset1x%, %Offset1y%
}
return
