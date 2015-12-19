



; activates the window under the mouse on scroll
; WheelDown::
; GetKeyState, state, Ctrl
; if state = U
;     MouseGetPos,,,OutWin,OutCtrl
;     WinActivate, ahk_id %OutWin%
;     Send, {WheelDown}
; return
; WheelUp::
; GetKeyState, state, Ctrl
; if state = U
;     MouseGetPos,,,OutWin,OutCtrl
;     WinActivate, ahk_id %OutWin%
;     Send, {WheelUp}
; return
; ; make this work for typing too



; Here are two hotkeys that simulate the turning of the mouse wheel:
; #up::Click, WheelUp, , , 2  ; Turn it by two notches.
; #down::Click, WheelDown, , , 2

; Use ALT + Wheel to adjust the sound. Middle button toggles the mute function.
; !WheelUp::Send, {Volume_Up}{Volume_Up}
; !WheelDown::Send, {Volume_Down}{Volume_Down}
; !Mbutton::Send, {Volume_Mute}








