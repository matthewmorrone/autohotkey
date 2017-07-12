; activates the window under the mouse on scroll
WheelDown::
GetKeyState, state, Ctrl
if state = U
    MouseGetPos,,,OutWin,OutCtrl
    WinActivate, ahk_id %OutWin%
    Send, {WheelDown}
return
WheelUp::
GetKeyState, state, Ctrl
if state = U
    MouseGetPos,,,OutWin,OutCtrl
    WinActivate, ahk_id %OutWin%
    Send, {WheelUp}
return
; make this work for typing too
