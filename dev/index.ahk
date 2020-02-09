#InstallKeybdHook
#Persistent
SetWorkingDir 			%A_ScriptDir%
#SingleInstance 		force
; #HotkeyInterval 		500
; #MaxHotkeysPerInterval 	200
#WinActivateForce
SetTitleMatchMode 		2
; SetCapsLockState 		AlwaysOff



If Not A_IsAdmin {
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
; #Include drag.ahk
; #Include font.ahk



; *$LShift::LCtrl
; *$LAlt::LShift
; *$LCtrl::LAlt


*$LAlt::LCtrl
*$LCtrl::LAlt
*$RAlt::RCtrl
*$RCtrl::RAlt
^CapsLock::CapsLock
CapsLock::Enter
+Backspace::Delete
CapsLock up::
Send {Enter up}
return
 
; LAlt::Enter
; LCtrl::LAlt
; +CapsLock::Enter
; CapsLock::Ctrl
; CapsLock up::
; Send {LCtrl up}
; return

decimal_octal(n) {
  i = 1
  octal = 0
  while (n > 0)
  {
    rem := mod(n, 8)
    n /= 8
    octal += rem * i
    i *= 10
  }
  return, octal
}

; ^e::
; Send ^c
; Clipboard := Format("{1:d}", "0x"+Clipboard) ;"0x"+
; Send ^v
; return




+del::
Send ^x
Clipboard := RegExReplace(Clipboard, "(\r\n)(\r\n)+$", "`r`n")
return
+ins::
Send ^c
Clipboard := RegExReplace(Clipboard, "(\r\n)(\r\n)+$", "`r`n")
return
; ins::Send ^v


#IfWinActive, ahk_exe sublime.exe
+ins::
Send ^c
Clipboard := StrReplace(Clipboard, "`n")
return
#IfWinActive

$`::Send {Backspace}
$+`::Send {Delete}
$#`::SendRaw, ``
$+#`:: SendRaw, `~

#w::Send {up}
#a::Send {left}
#s::Send {down}
#d::Send {right}
^+c::
send ^c
StringUpper, Clipboard, Clipboard
Send ^v
return

; !d::
; Send +{right}
; Send ^x
; Send {left}
; Send ^v
; return

#Include hot.ahk

#1:: Send {Home}
#2:: Send {End}
#3:: Send {PgUp}
#4:: Send {PgDn}

; MButton & Up::Send {Home}
; MButton & Down::Send {End}
; MButton & Left::Send {PgUp}
; MButton & Right::Send {PgDn}

; MButton::LCtrl

; ^e::
; SetFormat Integer, D
; Send, ^c
; n := clipboard
; n := n + 0
; clipboard := n
; Send, ^v
; SetFormat Integer, D

; ; SetFormat Integer, D
; ; X:= 0x11 17 17
; ; SetFormat Integer, H
; return

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



; because esc doesn't always seem to work like i think it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return
!+Esc::
Send {^+Esc}
return

; F6::Edit
F7::
; Run "C:\Program Files\AutoHotkey\WindowSpy.ahk"
Run, "C:\Program Files (x86)\AutoHotkey\AU3_Spy.exe", %A_WorkingDir%, max
return
F8::
#Persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return

PrintScreen::
Run, C:\\Windows\\System32\\SnippingTool.exe, %A_WorkingDir%, max
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


#IfWinActive, ahk_exe chrome.exe
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
#s::
#+s::
~PrintScreen::
Run, C:\\Windows\\System32\\SnippingTool.exe, %A_WorkingDir%, max
; WinSet, Topmost, On, Snipping Tool
WinSet, Top
WinActivate, Snipping Tool
Sleep, 500
Send, !f 
Send, {enter}
return

#Space::WinSet, Transparent, 50, A
#Space UP::WinSet, Transparent, OFF, A
return

^Space::WinSet, AlwaysOnTop, Toggle, A

; WheelDown::PgDn
; WheelUp::PgUp


#Include interskill.ahk

; 1::send {XButton1}
; 2::send {XButton2}

; #Include explorer.ahk

^+1::Send {U+00AC} ;&not;

#IfWinActive, .ahk
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
