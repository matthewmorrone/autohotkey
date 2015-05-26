Enter & Backspace:: Send {Delete}

; because esc doesn't always seem to work like it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return

:*:afaik::as far as I know
:*:brb::be right backbe right
:*:btw::by the way
:*:---::{Asc 0151}  ; em dash
:*:m@1::matthewmorrone1
:*:m@2::matthewmorrone1@gmail.com

:*:,+::{+}" "{+}
:*:-_-::{U+0CA0}_{U+0CA0}
:*:clog::console.log(){left 1}


~Esc::
If WinActive("Microsoft Visual Studio") {
	send ^q
}
return
; #IfWinActive Sublime Text;
; Esc::MsgBox You Pressed Escapade
; #IfWinActive

#IfWinActive ahk_class ExploreWClass
^l::
#IfWinActive ahk_class CabinetWClass
^l::Send {F4}
return
^n::Send ^+n
#IfWinActive

#Include dev/search.ahk

; shortcut for zipping folder, careful not to move mouse
#z::
Click, Right
Send, {DOWN 16}{right}{down 1}{enter}
Sleep, 500
Send, {enter}
return



; conveniences

Enter & 1:: Send {Home}
Enter & 2:: Send {End}
Enter & 3:: Send {PgUp}
Enter & 4:: Send {PgDn}
Enter & w:: Send {Up}
Enter & s:: Send {Down}
Enter & a:: Send {Left}
Enter & d:: Send {Right}
$Enter UP::Send {enter}
#q::Send !q

; é
 #2:: sendinput {asc 0233}
 #u:: sendinput {asc 163}

; to make renaming files a little less annoying
~F2::
Send {Right}
Send {Left}
return
