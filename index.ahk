#InstallKeybdHook
#Persistent
SetWorkingDir 			%A_ScriptDir%
#SingleInstance 		force
; #HotkeyInterval 		500
; #MaxHotkeysPerInterval 	200
#WinActivateForce
SetTitleMatchMode 		2
SetCapsLockState 		AlwaysOff

IF NOT A_IsAdmin ; Runs script as Admin.
{
	Run *RunAs "%A_ScriptFullPath%"
	ExitApp
}

iconn := "ico/psi-fff.ico"
icoff := "ico/psi-f00.ico"

Menu, tray, icon, %iconn%, , 1
F1::
Suspend
if 		(A_ISSUSPENDED = 1) {
	Menu, tray, icon, %icoff%, , 1
}
else if (A_ISSUSPENDED = 0) {
	Menu, tray, icon, %iconn%, , 1
}
return
Menu, tray, icon, %iconn%, , 1

#Include util/util.ahk
#Include util/array.ahk
#Include util/range.ahk

XButton1::Shift
XButton2::Space

*$LAlt::LCtrl
*$LCtrl::LAlt
*$RAlt::RCtrl
*$RCtrl::RAlt
CapsLock::Enter
+Backspace::Delete
$`::Send {Backspace}
$+`::Send {Delete}
$#`::SendRaw, ``
$+#`:: SendRaw, `~

#w::Send {up}
#a::Send {left}
#s::Send {down}
#d::Send {right}

#1:: Send {Home}
#2:: Send {End}
#3:: Send {PgUp}
#4:: Send {PgDn}



^e::
SetFormat Integer, D
Send, ^c
n := clipboard
n := n + 0
clipboard := n
Send, ^v
SetFormat Integer, D

; SetFormat Integer, D
; X:= 0x11 17 17
; SetFormat Integer, H
return

#x::
Send, ^c
StringLower, clipboard, clipboard
Send, ^v
return
#c::
Send, ^c
StringUpper, clipboard, clipboard
Send, ^v
return
#v::
Send, ^c
StringUpper, clipboard, clipboard, T
Send, ^v
return


F7::
Run, "C:\Program Files (x86)\AutoHotkey\AU3_Spy.exe", %A_WorkingDir%, max
return

F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return

PrintScreen::
Run, C:\\Windows\\System32\\SnippingTool.exe, %A_WorkingDir%, max
return

; because esc doesn't always seem to work like i think it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return
!+Esc::
Send {^+Esc}
return

#IfWinActive ahk_exe explorer.exe

^WheelDown::
Send {Ctrl Up}
Send {WheelDown}
Send {Ctrl Down}
return

^WheelUp::
Send {Ctrl Up}
Send {WheelUp}
Send {Ctrl Down}
return

^+a::
send !hsi
return

^w::
return

; new folder
^n::send ^+n
^+n::send ^n

#IfWinActive

#IfWinActive ahk_exe chrome.exe
^w::return
^q::send ^w

#IfWinActive

#Include hot.ahk
#Include unicode.ahk

; #Include util/save.ahk
; ScriptName := A_ScriptName
; If WinActive(A_ScriptName) 
; {
; 	SetTitleMatchMode, 2
; 	$~^s::
; 	txt := % "Reloading " . A_ScriptName
; 	splashOn(txt, 1000)
; 	Reload
; 	Return
; }


#IfWinActive, ahk
SetTitleMatchMode, 2
$~^s::
txt := % "Reloading " . A_ScriptName
splashOn(txt, 1000)
Reload
Return
#IfWinActive

; in case of
:*:woopsies::
ExitApp
return
