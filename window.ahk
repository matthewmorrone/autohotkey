
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

^SPACE::  Winset, Alwaysontop, , A

; to see what's behind the current window
#Space::   WinSet, Transparent,  50, A
#Space UP::WinSet, Transparent, OFF, A
return

; Start screen saver:
#Esc::
SendMessage, 0x112, 0xF140, 0,, Program Manager
return

MButton::
CoordMode, Mouse  ; Switch to screen/absolute coordinates.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
; if (EWD_WinState = 0) { 
	; Only if the window isn't maximized 
    SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
; }
return

EWD_WatchMouse:
GetKeyState, EWD_LButtonState, MButton, P
if EWD_LButtonState = U  ; Button has been released, so drag is complete.
{
    SetTimer, EWD_WatchMouse, off
    return
}
GetKeyState, EWD_EscapeState, Escape, P
if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
{
    SetTimer, EWD_WatchMouse, off
    WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
    return
}
CoordMode, Mouse
MouseGetPos, EWD_MouseX, EWD_MouseY
WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
SetWinDelay, -1  
WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
EWD_MouseStartX := EWD_MouseX 
EWD_MouseStartY := EWD_MouseY
return