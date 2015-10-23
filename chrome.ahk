#IfWinActive Chrome
F4::clickAndReturn(1907, 1148)

RButton::click right
RButton & WheelDown::Send {Browser_Back}
RButton & WheelUp::Send {Browser_Forward}
; shortcut for zipping folder, careful not to move mouse
#a::
	Click, Right
	Send, {Down 8}{Enter}
	KeyWait, LWin, D
	; MouseGetPos, xpos, ypos
	Send {click 640, 220}
	Send {LWin UP}
	; MouseMove, %xpos%, %ypos%
	KeyWait, a, D
	WinGetActiveTitle, Title
	WinClose %Title%
return
#IfWinActive