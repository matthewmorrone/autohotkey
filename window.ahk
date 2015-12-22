
^SPACE::WinSet, Alwaysontop, , A

; to see what's behind the current window
#Space::WinSet, Transparent, 50, A
#Space UP::WinSet, Transparent, OFF, A
return

; Start screen saver:
#Esc::
SendMessage, 0x112, 0xF140, 0,, Program Manager
return

; MButton::
; CoordMode, Mouse  ; Switch to screen/absolute coordinates.
; MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
; WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
; WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin%
; ; Only if the window isn't maximized
; ; if (EWD_WinState = 0) {
; SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
; ; }
; return

; EWD_WatchMouse:
; GetKeyState, EWD_LButtonState, MButton, P
; if EWD_LButtonState = U  ; Button has been released, so drag is complete.
; {
;     SetTimer, EWD_WatchMouse, off
;     return
; }
; GetKeyState, EWD_EscapeState, Escape, P
; if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
; {
;     SetTimer, EWD_WatchMouse, off
;     WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
;     return
; }
; CoordMode, Mouse
; MouseGetPos, EWD_MouseX, EWD_MouseY
; WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
; SetWinDelay, -1
; WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
; EWD_MouseStartX := EWD_MouseX
; EWD_MouseStartY := EWD_MouseY
; return

; minState = 0
; ^m::
; 	if (minstate = 1) {
; 		WinActivate, %Title%
; 		WinRestore
; 	}
; 	else {
; 		WinGetActiveTitle, Title
; 		WinMinimize, A
; 	}
; 	minState := !minstate
; return

; minAllState = 0
; ^+m::
; 	if (minAllstate = 1) {
; 		WinMinimizeAllUndo
; 	}
; 	else {
; 		WinMinimizeAll
; 	}
; 	minAllState := !minAllstate
; return

; #IfWinNotActive ahk_exe explorer.exe
; ^Up::WinMaximize, A
; ^Down::WinMinimize, A

; ^+Up::WinMinimizeAllUndo
; ^+Down::WinMinimizeAll
; #IfWinNotActive

; *+e::
; SysGet, Mon2, Monitor, 2
; WinGet, WinState, MinMax, A
; WinGetPos, WinXPos, WinYPos,,, A
; WinMove, A,, % (WinXPos+Mon2Left), % (WinYPos+Mon2Top)
; 		, % (ws:=WinState=1) ? (Mon2Right-Mon2Left) : ""
; 		, % (ws ? Mon2Bottom : "")
; Return

; inCorner := false
; +Tab::
; 	if (inCorner = true)
; 	{
; 		if (%xpos% = 1625 and %ypos% = 1000)
; 		{
; 			MouseMove, %xpos%, %ypos%
; 			inCorner := False
; 		}
; 	}
; 	else
; 	{
; 		MouseGetPos, xpos, ypos
; 		Send {click 1625, 1000}
; 		inCorner := true
; 	}
; return

; if (A_PriorHotkey <> "Tab" or A_TimeSincePriorHotkey > 400)
; {
; 	;	Too much time between presses, so this isn't a double-press.
; 	inCorner := false

; 	KeyWait, Tab
; 	return
; }

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

;	#Persistent
;		SetTimer, Timer, 300
;	Return

;	Timer:
;	MouseGetPos, x1, y1
;	Sleep, 500
;	MouseGetPos, x2, y2
;	If ((%x1% <> %x2%) or (%y1% <> %y2%))
;	{
;		Msgbox, 262208, Mouse , You moved`nUse Esc to quit this script , 1
;		Return
;	}
;	return
;	esc::exitapp

;	Esc::
;		Send {^x}
;	return
;	$^Esc::
;		Send {esc}
;	return

