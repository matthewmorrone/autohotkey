#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory

; While CapsLock is toggled On
; Script will display Mouse Position (coordinates) as a tooltip at Top-Left corner of screen.
; Also allows to copy them (to clipboard) with a PrintScreen button.

#SingleInstance force ; only one instance of script can run

#Persistent ; to make it run indefinitely
settimer start1, 0 ; "0" to make it update position instantly
return

start1:
	CoordMode, ToolTip, Screen ; makes tooltip to appear at position, relative to screen.
	CoordMode, Mouse, Screen ; makes mouse coordinates to be relative to screen.
	MouseGetPos xx, yy ; get mouse x and y position, store as %xx% and %yy%
	GetKeyState, lb, LButton
	if (lb = "D") {
		a := Abs(dx-xx)
		b := Abs(dy-yy)
		tooltip %a% %b%, %dx%, %dy%
	}
	else {
		; MouseGetPos dx, dy
		; tooltip %xx% %yy%, %xx%, %yy% ; display tooltip of %xx% %yy% at coordinates x0 y0.
	}
	; PrintScreen:: ; assign new function to PrintScreen. If pressed...
	; 	clipboard == %xx% %yy% ; ...store %xx% %yy% to clipboard.
	; return
return



~*$LButton::
	MouseGetPos dx, dy
return
~*$LButton UP::
	dx = 0
	dy = 0	
	tooltip
return


; auto reload on save ($?)
~^s::
IfWinActive, %A_ScriptName%
{
SplashTextOn,,,Reloading %A_ScriptName%,
Sleep,500
SplashTextOff
Reload
}
Else
{
Send {^s}
}
return
