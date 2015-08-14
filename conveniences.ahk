#Include prelude.ahk

; because esc doesn't always seem to work like it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return

~Esc::
If WinActive("Microsoft Visual Studio") {
	send ^q
}
return
; #IfWinActive Sublime Text;
; Esc::MsgBox You Pressed Escapade
; #IfWinActive

; #IfWinActive ahk_class ExploreWClass
; ^l::
; #IfWinActive ahk_class CabinetWClass
; ^l::Send {F4}
; return
; #IfWinActive

#IfWinActive ahk_class ExploreWClass
$^n::
#IfWinActive ahk_class CabinetWClass
$^n::
send {AppsKey}wf
return
#IfWinActive





#IfWinActive Chrome
F4::
	MouseGetPos, xpos, ypos
	Send {click 1907, 1148}
	MouseMove, %xpos%, %ypos%
return
#IfWinActive


; conveniences
Enter & Backspace:: Send {Delete}
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


; to make renaming files a little less annoying
~F2::
Send {Right}
Send {Left}
return

#Include postlude.ahk

