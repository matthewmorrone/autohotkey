Menu, tray, icon, psi_white.ico, , 1





; F3::
; Run, autoskip.ahk
; return
; #Include passwords.ahk
#Include prelude.ahk
; #Include autoskip.ahk



minState = 0
^m::
	if (minstate = 1) {
		WinActivate, %Title%
		WinRestore
	}
	else {
		WinGetActiveTitle, Title
		WinMinimize, A
	}
	minState := !minstate
return

minAllState = 0
^+m::
	if (minAllstate = 1) {
		WinMinimizeAllUndo
	}
	else {
		WinMinimizeAll
	}
	minAllState := !minAllstate
return


^Up::WinMaximize, A
^Down::WinMinimize, A



#Include icon.ahk
Menu, tray, icon, psi.ico, , 1
; #Include dots.ahk

; #Include clickAndReturn.ahk
#Include conveniences.ahk
#Include longpress.ahk
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
#Include printscreen.ahk
#Include search.ahk
#Include screensaver.ahk
#Include hotcorners.ahk
; #Include tag.ahk
#Include zip.ahk
#Include console.ahk
; #Include doubleclick.ahk
; #Include unicode.ahk

; #Include syncscroll.ahk


#Include postlude.ahk



; #IncludeAgain passwords.ahk

