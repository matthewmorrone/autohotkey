

!q::
Count++
If Count = 1
{
coolTip("Sticky On")
Send {LCtrl Down}
}
Else If Count = 2
{
coolTip("Sticky Off")
Send {LCtrl Up}
Count := 0
}
Return




;Now, to make Space bar send a real "Space" keystroke 
;whenever it isn't used to launch a hotkey 
;such as the above, add the following hotkey.
;
; $Space::
; Send, {Space down} 	; Press down the Space key.
; Sleep 50  			; Keep it down for 'x' milliseconds.
; Send {Space up}  	; Release the Space key.
; return
;
;The $ prefix is needed to prevent a warning dialog 
;about an infinite loop (since the hotkey "sends itself"). 
;In addition, the above action occurs at the time the key 
;is released.
; StickyLCtrl := 0
; StickyLAlt := 0
; StickyLShift := 0


; #If !mode
; LAlt::LCtrl
; LCtrl::LAlt
; RAlt::RCtrl
; RCtrl::RAlt
; #If

; emulation of sticky keys
; #If mode


; *$LCtrl::

; if (StickyLCtrl) {
; 	tooltip Sticky Alt
; 	key = 0
; 	Input, key, L1 M
; 	SendInput {LAlt Down}{%key%}{LAlt Up}
; }
; else {
; 	tooltip
; }
; StickyLCtrl := !StickyLCtrl
; return

; *$LAlt::
; if (StickyLAlt) {
; 	tooltip Sticky Ctrl
; 	key = 0
; 	Input, key, L1 M
; 	SendInput {LCtrl Down}{%key%}{LCtrl Up}
; }
; else {
; 	tooltip
; }
; StickyLAlt := !StickyLAlt




; return

; *$Shift::
; if (StickyLShift) {
; 	tooltip Sticky Shift
; 	key = 0
; 	Input, key, L1 M
; 	SendInput {Shift Down}{%key%}{Shift Up}
; }
; else {
; 	tooltip
; }
; StickyLShift := !StickyLShift
; return
; #If




