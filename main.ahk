LAlt::LCtrl
LCtrl::LAlt
RAlt::RCtrl
RCtrl::RAlt
AppsKey::LWin
CapsLock::Enter
`::Backspace
ScrollLock::\
Insert::`

CapsLock & `:: Send {Delete}
CapsLock & 1:: Send {Home}
CapsLock & 2:: Send {End}
CapsLock & 3:: Send {PgUp}
CapsLock & 4:: Send {PgDn}
CapsLock & w:: Send {Up}
CapsLock & s:: Send {Down}
CapsLock & a:: Send {Left}
CapsLock & d:: Send {Right}


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




:*:afaik::as far as I know
:*:brb::be right backbe right
:*:btw::by the way
:*:-----::{Asc 0151}  ; em dash
:*:m@1::matthewmorrone1
:*:m@2::matthewmorrone1@gmail.com

:*:-_-::{U+0CA0}_{U+0CA0}

; for js
:*:,+::{+}" "{+}

:*:clog::console.log()\;{left 2}
:*:vlog::var log = console.log.bind(console)\;{enter}

; for php
:*b0:echo:: ."{\\}{n}";{left 6}
:*:pr(::print_r();{left 2}

;for C#
:*:csbreak::System.Diagnostics.Debugger.Break();

