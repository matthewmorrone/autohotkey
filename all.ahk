Menu, tray, icon, psi_white.ico, , 1





; F3::
; Run, autoskip.ahk
; return
#Include passwords.ahk
#Include prelude.ahk
; #Include autoskip.ahk


#Include icon.ahk
Menu, tray, icon, psi.ico, , 1
; #Include dots.ahk

; #Include clickAndReturn.ahk
#Include conveniences.ahk
; #Include longpress.ahk
#Include linuxWindowDrag.ahk
; #Include automated-testing.ahk

#Include hotkeys.ahk
#Include hotstrings.ahk

#Include *i passwords.ahk

#Include cooltips.ahk
#Include updir.ahk
#Include be.ahk
; #Include sketchup.ahk
#Include trace.ahk
#Include hscroll.ahk
; #Include nozoomscroll.ahk
#Include xray.ahk
; #Include printscreen.ahk
#Include search.ahk
#Include screensaver.ahk
#Include hotcorners.ahk
; #Include tag.ahk
#Include zip.ahk
#Include console.ahk
; #Include doubleclick.ahk
; #Include unicode.ahk

; #Include syncscroll.ahk

Numpad1::
	WinActivate, index.php
return
Numpad2::
	WinActivate, Sublime Text
return
running := false
Numpad0::
	WinGetActiveTitle, Title
	WinActivate, PowerShell
	if (running = true) {
		Send ^c
	}
	SendInput clear
	Send {enter}
	Send {up}
	Send {up}

	Send {enter}
	running := true
	WinMinimize, ahk
	; WinMinimize, PowerShell
	WinActivate, icms.sql
	; WinActivate, PowerShell
Return
NumpadDot::
	WinActivate, PowerShell
	Send ^c
	running := false
return
NumpadEnter::
	WinActivate, PowerShell
	SendInput clear
	Send {enter}
return


#Include window.ahk
#Include postlude.ahk



; #IncludeAgain passwords.ahk

