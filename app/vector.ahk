


; ~Tab::
; MouseGetPos, , , id, control
; WinActivate, ahk_id %id%
; Send {click}
; return
#IfWinActive Vector Magic
XButton1:
Tab::
; WinActivate, Vector Magic
ww := (WindowW()/10*9)
Send {click %ww%, 127}
return
XButton2:
Space::
RShift::
ww := (WindowW()/20*19)
Send {click 1868, 1134}
sleep 200
Send {click 1868, 1134}
ww := (WindowW() - 300)
Send {click %ww%, 537}
Send ^a
Send ^c
width := clipboard
Send {click %ww%, 562}
Send ^a
Send ^c
height := clipboard
ww := (WindowW() - 300)
if (width < height) {
	Send {click %ww%, 537}
}
if (width > height) {
	Send {click %ww%, 562}
}
; Send %A_Tab%
Send ^a
Send {backspace}
Send 500
Send {click %ww%, 537}
Send {click %ww%, 562}

; Send !{Esc}
; WinActivate, Vector Magic


; ww := (WindowW() - 100)
; Send {click %ww%, 616}
Send {click 1858, 625}
return
#IfWinActive








; DetectHiddenWindows On
; if not DllCall("IsWindowVisible", "Ptr", WinExist("Untitled - Notepad"))  ; WinExist() returns an HWND.
;     MsgBox The window is not visible.
