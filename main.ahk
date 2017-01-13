


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





; ^+l::
; ClipboardCache := Clipboard
; Send ^c
; msgbox %clipboard%
; StringLower, Clipboard, Clipboard
; Send ^v
; Clipboard := ClipboardCache
; return

; ^+u::
; ClipboardCache := Clipboard
; Send ^c
; msgbox %clipboard%
; StringUpper, Clipboard, Clipboard
; Send ^v
; Clipboard := ClipboardCache
; return




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


MButton::
Send, {Ctrl Down}{Click}{Ctrl up}
return

; to see a key/mouse trace
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return





; nudge:
; WinMove, X, Y
; WinMove, WinTitle, WinText, X, Y [, Width, Height, ExcludeTitle, ExcludeText]


; return

; ^+n::
; Goto, nudge
; ; https://autohotkey.com/docs/commands/WinMove.htm
; return






; #o::  ; Win+O hotkey that turns off the monitor.
; Sleep 1000  ; Give user a chance to release keys (in case their release would wake up the monitor again).
; ; Turn Monitor Off:
; SendMessage, 0x112, 0xF170, 2,, Program Manager  ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER.
; ; Note for the above: Use -1 in place of 2 to turn the monitor on.
; ; Use 1 in place of 2 to activate the monitor's low-power mode.
; return



