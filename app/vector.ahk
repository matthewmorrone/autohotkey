


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
; ww := (w/20*19)

w := WindowW()
h := WindowH()
; coolTip(w " " h)
; return

; 1920x1200
if (w = 1936 and h = 1176) {
  ww := 1868
  hh := 1134
}
; 1600x 900
else if (w = 1616 and h =  916) {
  ww := 1550
  hh :=  860
}
; 1080x1920
else if (w = 1080 and h =  960) {
  ; WinGetPos wX, wY
	
  ww := 1000
  hh :=  900
}
else {
  msgbox dimensions off %ww%x%hh%
  return
}

Send {click %ww%,  %hh%}
sleep 200
Send {click %ww%,  %hh%}


if (w = 1936 and h = 1176) {
  ww := 1660
  hh := 460
}
; else if (w = 1616 and h =  916) {
;   ww := 
;   hh := 
; }
if (w = 1080 and h =  960) {
  ww := 800
  hh := 450
}
; MsgBox % ww " " hh
Send {click %ww%, %hh%}
Send ^a
Send ^c
width := clipboard
hh := hh + 30
; MsgBox % ww " " hh
Send {click %ww%, %hh%}
Send ^a
Send ^c
height := clipboard
hh := hh - 30

if (width < height) {
	Send {click %ww%, %hh%}
}
if (width > height) {
  hh := hh + 30
	Send {click %ww%, %hh%}
}
Send ^a
Send {backspace}
Send 500
Send {click %ww%, %hh%}
Send {click %ww%, %hh%}

; ; Send !{Esc}
; ; WinActivate, Vector Magic



if (w = 1936 and h = 1176) {
  Send {click 1860, 540}
  Send {click 1825, 404}
}
; else if (w = 1616 and h =  916) {
;   Send {click , }
; }
; else
if (w = 1080 and h = 960) {
  Send {click 1000, 540}
  Send {click 969, 407}
}



; ww := (w - 100)
; Send {click %ww%, 616}
; WinActivate, Overwrite Existing Files
; sleep 200

; WinGet, active_id, ID, A
; WinGetActiveTitle, Title
; MsgBox %xpos% %ypos% %Title%
; MouseGetPos, xpos, ypos
; Send {click 215, 142}
; WinActivate, %Title%
; Sleep, 200
; MouseMove, %xpos%, %ypos%
; WinGetActiveTitle, Title
; MouseGetPos, xpos, ypos
; MsgBox %xpos% %ypos% %Title%
; ClickAndReturn(215, 142)
; Send {click 1868, 393}


return
#IfWinActive








; DetectHiddenWindows On
; if not DllCall("IsWindowVisible", "Ptr", WinExist("Untitled - Notepad"))  ; WinExist() returns an HWND.
;     MsgBox The window is not visible.
