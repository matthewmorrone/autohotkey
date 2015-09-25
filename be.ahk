
;	#Include prelude.ahk




;	MouseGetPos, StartVarX, StartVarY
;	loop
;	{
;		Sleep, 100
;		MouseGetPos, CheckVarX, CheckVarY
;		If (StartVarX != CheckVarX) or (StartVarY != CheckVarY)
;		{
;			msgbox, Y U MOVE MY MOUSE!?
;		}
;	}



;	#Persistent
;		SetTimer, Timer, 300
;	Return

;	Timer:
;	MouseGetPos, x1, y1
;	Sleep, 500
;	MouseGetPos, x2, y2
;	If ((%x1% <> %x2%) or (%y1% <> %y2%))
;	{
;		Msgbox, 262208, Mouse ,You moved`nUse Esc to quit this script , 1
;		Return
;	}
;	return
;	esc::exitapp
Tab::
	Send {click 1625, 1000}
return
inCorner := false
+Tab::
	; if (A_PriorHotkey <> "Tab" or A_TimeSincePriorHotkey > 400)
	; {
	; 	;	Too much time between presses, so this isn't a double-press.
	; 	inCorner := false

	; 	KeyWait, Tab
	; 	return
	; }
	if (inCorner = true)
	{
		if (%xpos% = 1625 and %ypos% = 1000)
		{
			MouseMove, %xpos%, %ypos%
			inCorner := False
		}
	}
	else
	{
		MouseGetPos, xpos, ypos
		Send {click 1625, 1000}
		inCorner := true
	}
	; SetTimer, Timer, 2000
return


; Timer:
; 	inCorner := false
; 	SetTimer, Timer, Off
; return

;	~Tab::
;	if (A_PriorHotkey <> "~Tab" or A_TimeSincePriorHotkey > 400)
;	{
;	;	Too much time between presses, so this isn't a double-press.
;	KeyWait, Tab
;	return
;	}
;	;	this is a double-press
;	return

#IfWinActive Beyond Earth



MButton::
	Send +{Click}
return

z::l
x::i
c::l
v::p

#IfWinActive




;	Esc::
;		Send {^x}
;	return
;	$^Esc::
;		Send {esc}
;	return

;	x::
;		Send {ctrl}
;		Sleep 152
;		Send {r}
;		Sleep 16
;		Send {r UP}
;		Sleep 176
;		Send {ctrl UP}
;		;Send {!r}	;	Remove Road – Alt-R
;	return
;	c::
;		Send {!i}	;	Clear a Marsh – Alt-I
;	return
;	v::
;		Send {^+r}	;	Route to Mode – Shift-Ctrl-R
;	return

;	Sid Meier's Civilization: Beyond Earth (DX11)
;	ahk_class WinClass_FXS
;	ahk_exe civilizationbe_dx11.exe

;	Next Unit – Period
;	Previous Unit – Comma
;	Zoom Out – –
;	Zoom In – +
;	Zoom In – Page Up
;	Zoom Out – Page Down
;	Next City – ]
;	Previous City – [

;	F1;	- Civilopedia
;	F2;	- Economic Info
;	F3;	- Military Info
;	F4;	- Diplomacy Info
;	F5;	- Virtues Screen
;	F6;	- Tech Web

;	F7;	- Notification Log
;	F8;	- Victory Progress
;	F9;	- Quest Log
;	F10;	- Trade Route Overview

;	Covert Ops Overview – Ctrl-E

;	End Turn – Enter

;	City Manager View – Insert
;	Orbital Layer – Shift-O

;	F11;	- Quick Save
;	Quick Load – Ctrl-F11
;	Menu – Esc
;	Save – Ctrl-S
;	Load – Ctrl-L
