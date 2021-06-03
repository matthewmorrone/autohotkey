WheelDown::
SetTitleMatchMode, 2
IfWinActive, Adobe Acrobat Pro ; Replace 'SafariTitle' by the title of the safari windows
{
	CoordMode, Mouse, Screen
	WinGet, active_id, ID, A
	IfWinExist, Adobe
	{
		Send {WheelDown}
		WinActivate ; Automatically uses the window found above.
		Send {WheelDown}
		Send {WheelDown}
		WinActivate, ahk_id %active_id%
	}
}
Else
{
	Send {WheelDown}
}
return

WheelUp::
SetTitleMatchMode, 2
IfWinActive, Adobe Acrobat Pro ; Replace 'SafariTitle' by the title of the safari windows
{
	CoordMode, Mouse, Screen
	WinGet, active_id, ID, A
	IfWinExist, Adobe
	{
		Send {WheelUp}
		WinActivate ; Automatically uses the window found above.
		Send {WheelUp}
		Send {WheelUp}
		WinActivate, ahk_id %active_id%
	}
}
Else
{
	Send {WheelUp}
}
return

; WheelUp::
; Send {WheelDown}
; Return

; WheelDown::
; Send {WheelUp}
; Return