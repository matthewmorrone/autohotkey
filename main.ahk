


LAlt::LCtrl
LCtrl::LAlt
RAlt::RCtrl
RCtrl::RAlt
; AppsKey::RWin

$`::Send {Backspace}
$+`::Send {Delete}
CapsLock::Enter
CapsLock & `:: Send {`}
!`:: Send {~}
; $ScrollLock::\
CapsLock & 1:: Send {Home}
CapsLock & 2:: Send {End}
CapsLock & 3:: Send {PgUp}
CapsLock & 4:: Send {PgDn}
CapsLock & w:: Send {Up}
CapsLock & s:: Send {Down}
CapsLock & a:: Send {Left}
CapsLock & d:: Send {Right}



clicker := false
^Insert::
	clicker := !clicker
Return
~LButton::
if (clicker = true) {
	Loop
	{
		If (Stop)
			Break
		Send {LButton}
		Sleep 250
	}
	Stop := 0
}
Return
~LButton Up::
if (clicker = true) {
	Stop := 1
	Send {LButton}
}
return



Media_Play_Pause::
Run dev\\clean-keyboard.ahk, , Hide UseErrorLevel, OutputVarPID
return

; because esc doesn't always seem to work like it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return
!+Esc::
Send {^+Esc}
return
~Esc::
If WinActive("Microsoft Visual Studio") {
	send ^q
}
return

#f::
Send ^c
Run http://www.google.com/search?q=%clipboard%
Return

~LButton & RButton::
~RButton & LButton::
Click 2
return

~NumpadIns::
	if (A_PriorHotkey <> "~NumpadIns" or A_TimeSincePriorHotkey > 200)
	{
		KeyWait, NumpadIns
		return
	}
	Run C:/Windows/System32/calc.exe
return

^+l::
Send {home}
Send, +{end}
Send ^c
StringLower, Clipboard, Clipboard
Send ^v
return

^+u::
Send {home}
Send, +{end}
Send ^c
StringUpper, Clipboard, Clipboard
Send ^v
return


; to see a key/mouse trace
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return

