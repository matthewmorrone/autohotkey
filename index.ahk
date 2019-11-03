#InstallKeybdHook
#Persistent
SetWorkingDir 			%A_ScriptDir%
#SingleInstance 		force
#HotkeyInterval 		500
#MaxHotkeysPerInterval 	200
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

^+c::
send ^c
StringUpper, Clipboard, Clipboard
Send ^v
return

!d::
Send +{right}
Send ^x
Send {left}
Send ^v
return

#Include hot.ahk

#1:: Send {Home}
#2:: Send {End}
#3:: Send {PgUp}
#4:: Send {PgDn}

; MButton & Up::Send {Home}
; MButton & Down::Send {End}
; MButton & Left::Send {PgUp}
; MButton & Right::Send {PgDn}

MButton::LCtrl

^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return
!+Esc::
Send {^+Esc}
return

; F6::Edit
F7::Run "C:\Program Files\AutoHotkey\WindowSpy.ahk"
F8::
#Persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return

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

#IfWinActive, ahk_exe chrome.exe
^w::return
^q::send ^w
#IfWinActive


#Include interskill.ahk

; 1::send {XButton1}
; 2::send {XButton2}

#Include explorer.ahk

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
