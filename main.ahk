SendMode Input

LAlt::LCtrl
LCtrl::LAlt
RAlt::RCtrl
RCtrl::RAlt
; AppsKey::RWin



$`::Send {Backspace}
$+`::Send {Delete}

; $Insert::Send {`}
; $+Insert::Send {~}
; $ScrollLock::\
; \::Tab




CapsLock::Enter
CapsLock & `:: Send {`}
; CapsLock & `:: Send {~}
CapsLock & 1:: Send {Home}
CapsLock & 2:: Send {End}
CapsLock & 3:: Send {PgUp}
CapsLock & 4:: Send {PgDn}
CapsLock & w:: Send {Up}
CapsLock & s:: Send {Down}
CapsLock & a:: Send {Left}
CapsLock & d:: Send {Right}



clicker := false
Insert::
	; if (clicker = false) {
	; 	Hotkey, LButton, Off
	; 	Hotkey, LButton Up, Off
	; }
	; else {
	; 	Hotkey, LButton, On
	; 	Hotkey, LButton Up, On
	; }
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


Send {Insert}

; !a::Send ^a
; !c::Send ^c
; !s::Send ^s
; !v::Send ^v
; !x::Send ^x
; !y::Send ^y
; !z::Send ^z

Media_Play_Pause::
Run dev\\clean-keyboard.ahk, , Hide UseErrorLevel, OutputVarPID
return

; Browser_Home
; Browser_Search
; Launch_Mail
; Volume_Down
; Volume_Mute
; Volume_Up
; Launch_App2

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

; search
#f:: ; Win+g
Send ^c
Run http://www.google.com/search?q=%clipboard%
Return


~LButton & RButton::
~RButton & LButton::
Click 2
return

~Numpad0::
	if (A_PriorHotkey <> "~Numpad0" or A_TimeSincePriorHotkey > 200)
	{
		KeyWait, Numpad0
		return
	}
	Send {backspace 2}
	Run C:/Windows/System32/calc.exe
return

!9::
Sleep, 100
clipurl := clipboard
Send ^c
Sleep, 50
clipurl := "<a href=""" . clipurl . """>" . clipboard . "</a>"
Send {Raw}%clipurl%
clipboard := clipurl
clipurl = ;
Return


SendMode Event
