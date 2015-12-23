

LAlt::LCtrl
LCtrl::LAlt
RAlt::RCtrl
RCtrl::RAlt
; AppsKey::RWin
`::Backspace
ScrollLock::\
Insert::`
!a::Send ^a
!z::Send ^z
!x::Send ^x
!c::Send ^c
!v::Send ^v
!y::Send ^y
CapsLock::Enter
CapsLock & `:: Send {Delete}
CapsLock & 1:: Send {Home}
CapsLock & 2:: Send {End}
CapsLock & 3:: Send {PgUp}
CapsLock & 4:: Send {PgDn}
CapsLock & w:: Send {Up}
CapsLock & s:: Send {Down}
CapsLock & a:: Send {Left}
CapsLock & d:: Send {Right}



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
SendInput {Raw}%clipurl%
clipboard := clipurl
clipurl = ; 
Return







#Hotstring * ?


::afaik::as far as I know
::brb::be right back
::btw::by the way
::---::{Asc 0151} ; em dash
::m@1::matthewmorrone1
::m@2::matthewmorrone1@gmail.com
::...::{U+2026}

::-_-::{U+0CA0}_{U+0CA0}

; for js
::,+::{+}" "{+}
::clog::console.log()\ ; {left 2}
::vlog::var log = console.log.bind(console)\ ; {enter}

; for php
:b0:echo:: ."{\\}{n}" ; {left 6}
::pr(::print_r() ; {left 2}

; for C#
::csbreak::System.Diagnostics.Debugger.Break() ; 

#Hotstring *0 ?0

