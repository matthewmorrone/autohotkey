#InstallKeybdHook
#Persistent
SetWorkingDir 			%A_ScriptDir%
#SingleInstance 		force
#HotkeyInterval 		500
#MaxHotkeysPerInterval 	200
#WinActivateForce
SetTitleMatchMode 		2
SetCapsLockState 		AlwaysOff


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




*$LAlt::LCtrl
*$LCtrl::LAlt
*$RAlt::RCtrl
*$RCtrl::RAlt
CapsLock::Enter
+Space::Send {-}
; +^Space::Send {_}
+Backspace::Delete

#IfWinNotActive ahk_exe stellaris.exe

$`::Send {Backspace}
$+`::Send {Delete}
$#`::SendRaw, ``
$+#`:: SendRaw, `~

#IfWinNotActive



#IfWinActive ahk_exe stellaris.exe

MButton::
MouseClick, L
MouseClick, R
return

#x::
CoordMode, Mouse, Screen
SysGet, monitor, Monitor, %activemonitor%
Loop
{
	Sleep, 100
	MouseGetPos, x, y
	If (x > A_ScreenWidth-100 and x < A_ScreenWidth) {
		MouseMove, A_ScreenWidth+50, %y%, 0
	}
}
return



#IfWinActive



#+x::
Send {click}
Send ^x
return

#+c::
Send {click}
Send {click}
Send ^c
return

#+v::
Send {click}
Send ^+v
return



#1:: Send {Home}
#2:: Send {End}
#3:: Send {PgUp}
#4:: Send {PgDn}



; because esc doesn't always seem to work like i think it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return
!+Esc::
Send {^+Esc}
return



#Hotstring C ? *

::-::_
::_::{Asc 0151} ; em dash
::....::{U+2026}
::-|-::{U+0CA0}_{U+0CA0}
::,+::{+}" "{+}
::clog::console.log(){left 1}
::vlog::var log = console.log.bind(console); {enter}
::pr(::print_r(); {left 3}
::pre(::echo "<pre>"; echo "</pre>"; {left 15}{enter 2}{up}print_r(); {left 3}

; :b0:echo:: ."{`\}{n}"; {left 7}
::echo::
send echo ."\n";{left 6}
; Input, Key, L1 B
keywait, backspace, D T3
if (ErrorLevel = 0) {
	send {space}{delete 6}
}
return

#Hotstring C0 ?0 *0

#Include hot.ahk









F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return

~PrintScreen::
Run, C:\\Windows\\System32\\SnippingTool.exe, %A_WorkingDir%, max
WinSet, AlwaysOnTop, On, Snipping Tool
WinSet, Top
WinActivate, Snipping Tool
Send, !n
Send, {down 2}
Send, {enter}
return

!space::
Count++
If 		(Count = 1) {
	coolTip("Sticky On")
	Send {LCtrl Down}
}
Else If (Count = 2) {
	coolTip("Sticky Off")
	Send {LCtrl Up}
	Count := 0
}
Return

insert::WinSet, Alwaysontop, , A

#Space::WinSet, Transparent, 50, A
#Space UP::WinSet, Transparent, OFF, A
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

^d::
gosub selections
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after = %OutFileName%
	after := RegExReplace(after, "(_\d+)?\.(\w+)", "."+OutExtension, out, -1, 1)
	after := RegExReplace(after, " \((\d+)\)", "", out, -1, 1)
	FileCopy, %OutDir%\%befor%, %OutDir%\%after%, 0
	start := 2
	while ErrorLevel {
		after := RegExReplace(after, "(_\d+)?\."+OutExtension, "", out, -1, 1)
		FileCopy, %OutDir%\%befor%, %OutDir%\%after%_%start%.%OutExtension%, 0
		start++
	}
}
return

^s::
gosub selections
ind := 0
items := Array()
if (len = 2) {
	for item in sel {
		from := item.path
		SplitPath, from, OutFileName, OutPath, OutExtension, OutNameNoExt, OutDrive
		items[ind] := OutNameNoExt
		ind++
	}
	item1 := items[0]
	item2 := items[1]
	sleep 500
	FileMove, %OutPath%\%item1%.png, %OutPath%\%item2%__temp__.png
	sleep 500
	FileMove, %OutPath%\%item2%.png, %OutPath%\%item1%.png
	sleep 500
	FileMove, %OutPath%\%item2%__temp__.png, %OutPath%\%item2%.png
}
return


#IfWinActive






#IfWinActive ahk_exe vmde.exe
; #IfWinActive Vector Magic

~Tab::
WinActivate, Vector Magic
Send {click 1398, 434}
Send {click 1419, 473}
return

Space::
RShift::
ww := (WindowW()/20*19)
Send {click %ww%, 974}
Send {click %ww%, 974}
ww := (WindowW() - 300)
Send {click %ww%, 542}
Send ^a
Send ^c
width := Clipboard
Send {click %ww%, 562}
Send ^a
Send ^c
height := Clipboard
ww := (WindowW() - 300)
if (width < height) {
	Send {click %ww%, 542}
}
if (width > height) {
	Send {click %ww%, 562}
}
Send ^a
Send {backspace}
Send 512
Send !{Esc}
WinActivate, Vector Magic
ww := (WindowW() - 100)
Send {click %ww%, 620}
return

Capslock::
Send {click 1546, 492}
Send ^a
Send ^c
WordArray := StrSplit(Clipboard, "_")
var := WordArray[WordArray.length()]z
if var is integer
	next := WordArray[WordArray.length()]+1
if var is integer
	WordArray.Pop()
if var is integer
	WordArray.Push(next)
if var is not integer
	WordArray.Push(2)
Clipboard := Array_Join(WordArray, "_")
Send ^v
BlockInput, on
; SetMouseDelay, 20
Send {click 1513, 974}
WinActivate, Vector Magic
Send {click 1513, 974}
Send {click 1419, 433}
Send {click 1419, 473}
; SetMouseDelay, 10
BlockInput, off
return

#IfWinActive



#IfWinActive Set Image Canvas Size
~Space::
Send {^+c}
Send 384
Send {tab 2}
Send 384
Send {tab 5}
Send {space}
Send {tab}
Send {down}
Send {tab 3}
Send {enter}


return
#IfWinActive






































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
