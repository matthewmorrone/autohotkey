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


; insert::WinSet, Alwaysontop, , A



+del::
Send ^x
Clipboard := RegExReplace(Clipboard, "(\r\n)(\r\n)+$", "`r`n")
return
+ins::
Send ^c
Clipboard := RegExReplace(Clipboard, "(\r\n)(\r\n)+$", "`r`n")
return
ins::Send ^v


#IfWinActive, ahk_exe sublime.exe
+ins::
Send ^c
Clipboard := StrReplace(Clipboard, "`n")
; Clipboard :=  StrReplace(Clipboard, "\n")
;                          ; Replace(Clipboard, "\n*+$", "")
; Clipboard := RegExReplace(Clipboard, "\n*+$", "")
; Clipboard := RegExReplace(Clipboard, "(\r\n)*$", "")
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


#Hotstring C ? *
::....::{U+2026}
::-|-::{U+0CA0}_{U+0CA0}
::,+::{+}" "{+}
::clog::console.log(){left 1}
::pr(::print_r(); {left 3}
::pre(::echo "<pre>"; echo "</pre>"; {left 15}{enter 2}{up}print_r(); {left 3}
::echo(::
send echo ."\n";{left 6}
keywait, backspace, D T3
if (ErrorLevel = 0) {
	send {space}{delete 6}
}
return
#Hotstring C0 ?0 *0
#Include hot.ahk

#1:: Send {Home}
#2:: Send {End}
#3:: Send {PgUp}
#4:: Send {PgDn}


MButton & Up::Send {Home}
MButton & Down::Send {End}
MButton & Left::Send {PgUp}
MButton & Right::Send {PgDn}







^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return
!+Esc::
Send {^+Esc}
return


; F6::Edit
F7::run "C:\Program Files\AutoHotkey\WindowSpy.ahk"
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return

#+s::
~PrintScreen::
Run, C:\\Windows\\System32\\SnippingTool.exe, %A_WorkingDir%, max
; WinSet, AlwaysOnTop, On, Snipping Tool
; WinSet, Top
WinActivate, Snipping Tool
Send, !f
; Send, {down 2}
Send, {enter}
return

#Space::WinSet, Transparent, 50, A
#Space UP::WinSet, Transparent, OFF, A
return

; WheelDown::PgDn
; WheelUp::PgUp



#IfWinActive, ahk_exe chrome.exe
^w::return
^q::send ^w
#IfWinActive


#IfWinActive, interskill ahk_exe chrome.exe

; a::A
; b::B
; c::C
; d::D
; e::E
; f::F
; g::G
; h::H
; i::I
; j::J
; k::K
; l::L
; m::M
; n::N
; o::O
; p::P
; q::Q
; r::R
; s::S
; t::T
; u::U
; v::V
; w::W
; x::X
; y::Y
; z::Z

; Space::
; if (isWindowFullScreen(WinExist("A"))) {
;   Send {click 1750, 1050}
; }
; else {
;   Send {click 1800, 1000}
; }
; return

Left::
if (isWindowFullScreen(WinExist("A"))) {
  ; Send {click 1825, 1050}
  ClickAndReturn(1825, 1050)
}
else {
  ; Send {click 1850, 1000}
  ClickAndReturn(1850, 1000)
}
return

Right::
if (isWindowFullScreen(WinExist("A"))) {
  ; Send {click 1900, 1050}
  ClickAndReturn(1900, 1050)
}
else {
  ; Send {click 1900, 1000}
  ClickAndReturn(1900, 1000)
}
return

#IfWinActive


; 1::send {XButton1}
; 2::send {XButton2}




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

^up::
Send ^x
Sleep, 200
send !{up}
Sleep, 200
Send {F5}
Sleep, 200
Send ^v
Sleep, 200
Send {shift Up}
return

#IfWinActive

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
