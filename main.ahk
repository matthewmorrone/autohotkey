



*$LAlt::LCtrl
*$LCtrl::LAlt
*$RAlt::RCtrl
*$RCtrl::RAlt

#+x::
Send {click}
Send ^x
return

#+c::
Send {click}
Send ^c
return

#+v::
Send {click}
Send ^v
return

+Space::_
+Backspace::Delete
$`::Send {Backspace}
$+`::Send {Delete}
$#`::SendRaw, ``
$+#`:: SendRaw, `~






#1:: Send {Home}
#2:: Send {End}
#3:: Send {PgUp}
#4:: Send {PgDn}
#w:: Send {Up}
#s:: Send {Down}
#a:: Send {Left}
#d:: Send {Right}


; ^k::
; Clipboard := RegExReplace(Clipboard, "([A-Z])", "_$l1")
; Clipboard := RegExReplace(Clipboard, "^_", "")
; Send %Clipboard%
; return


; because esc doesn't always seem to work like i think it should
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

MButton::
Send, {Ctrl Down}{Click}{Ctrl up}
Return



; to see a key/mouse trace
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return



