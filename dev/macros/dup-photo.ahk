










#IfWinActive Awesome Duplicate



Numpad0::clickAndReturn(844,231)
r::
clickAndReturn(WindowW()/2, 265)
return
d::
clickAndReturn(WindowW()/4+WindowW()/40,WindowH()/2+WindowH()/40)
return
f::
; clickAndReturn(((3*WindowW()/4)+(1.65*WindowW()/40))-10*(WindowW()/(800)),WindowH()/2+WindowH()/40)
heights := Array()
heights[0] := 800
heights[1] := 1600
x := Array_Closest(heights, WindowW())
if (x = 0) {
	clickAndReturn(((3*WindowW())/4)+WindowW()/20, WindowH()/2+WindowH()/40)
}
if (x = 1) {
	clickAndReturn(((3*WindowW())/4)+WindowW()/40, WindowH()/2+WindowH()/40)
}
return
g::
; for i in range(10) {
	clickAndRepeat(((3*WindowW())/4)+WindowW()/40, WindowH()/2+WindowH()/40, 10)
; }
return
; x::
; SetKeyDelay, -1, 1
; Send {click 246, 576, 500}
; SetKeyDelay, 10, 0
; return
space::down
b::up


clicker := false
^Insert::
	clicker := !clicker
Return
~LButton::
if (clicker = true) {
	Loop
	{
		If (Stop)
			Break
		Send {LButton}
		Sleep 200
	}
	Stop := 0
}
Return
~LButton Up::
if (clicker = true) {
	Stop := 1
	Send {LButton}
}
return


#IfWinActive