
min(num*){
	min := 1
	Loop % num.MaxIndex()
		min := (num[A_Index] < num[min]) ? A_Index : min
	return min
}


; ~Tab::
; MouseGetPos, , , id, control
; WinActivate, ahk_id %id%
; Send {click}
; return
#IfWinActive Vector Magic
~Tab::
WinActivate, Vector Magic
ww := (WindowW()/10*9)
Send {click %ww%, 127}
return
Space::
RShift::
ww := (WindowW()/20*19)
Send {click %ww%, 974}
ww := (WindowW() - 300)
Send {click %ww%, 542}
Send ^a
Send ^c
width := clipboard
Send {click %ww%, 562}
Send ^a
Send ^c
height := clipboard
ww := (WindowW() - 300)
if (width > height) {
	Send {click %ww%, 542}
}
if (width < height) {
	Send {click %ww%, 562}	
}
; Send %A_Tab%
Send ^a
Send {backspace}
Send 500
Send !{Esc}
WinActivate, Vector Magic


ww := (WindowW() - 100)
Send {click %ww%, 616}
return
#IfWinActive








; DetectHiddenWindows On
; if not DllCall("IsWindowVisible", "Ptr", WinExist("Untitled - Notepad"))  ; WinExist() returns an HWND.
;     MsgBox The window is not visible.
