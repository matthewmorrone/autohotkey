


*$LAlt::LCtrl
*$LCtrl::LAlt
*$RAlt::RCtrl
*$RCtrl::RAlt

; sc056::shift
; E2  056
; DC  02B

sc056::
Send {Ctrl Down}
Send {Alt Down}
Send {a Down}
Send {Ctrl Up}
Send {Alt Up}
Send {a Up}
Sleep, 500
Send {F5}
return

+sc056::
Send {Ctrl Down}
Send {Alt Down}
Send {c Down}
Send {Ctrl Up}
Send {Alt Up}
Send {c Up}
return

; MButton::AltTabMenu
; WheelDown::AltTab
; WheelUp::ShiftAltTab

; !c::SendInput {¢}
; !e::SendInput {€}
; !r::SendInput {®}
; !p::SendInput {©}
; !n::SendInput {ñ}

+Space::_
+Backspace::Delete
$`::Send {Backspace}
$+`::Send {Delete}
$#`::SendRaw, ``
$+#`:: SendRaw, `~

!x:: Send ^x
!c:: Send ^c
!v:: Send ^v
!a:: Send ^a

CapsLock::Enter

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
; ; camelCase to snake_case

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

; to see a key/mouse trace
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return


return



