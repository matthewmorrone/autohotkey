


LAlt::LCtrl
LCtrl::LAlt
RAlt::RCtrl
RCtrl::RAlt


+Backspace::Delete
$`::Send {Backspace}
$+`::Send {Delete}
$#`::SendRaw, ``
$+#`:: SendRaw, `~

CapsLock::Enter

#1:: Send {Home}
#2:: Send {End}
#3:: Send {PgUp}
#4:: Send {PgDn}
#w:: Send {Up}
#s:: Send {Down}
#a:: Send {Left}
#d:: Send {Right}




; because esc doesn't always seem to work like it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return
!+Esc::
Send {^+Esc}
return


#f::
Send ^c
Run http://www.google.com/search?q=%clipboard%
Return

~LButton & RButton::
~RButton & LButton::
Click 2
return





; to see a key/mouse trace
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return








