#EscapeChar \  ; Change it to be backslash instead of the default of accent (`).
#InstallKeybdHook  ; this MUST be called at the start of your script
#Persistent
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
#HotkeyInterval 4000 ;2000  ; This is  the default value (milliseconds).
#MaxHotkeysPerInterval 200

SetTitleMatchMode 2 ; A window's title can contain WinTitle anywhere inside it to be a match.


; activates the window under the mouse on scroll
; WheelDown::
; GetKeyState, state, Ctrl
; if state = U
;     MouseGetPos,,,OutWin,OutCtrl
;     WinActivate, ahk_id %OutWin%
;     Send, {WheelDown}
; return
; WheelUp::
; GetKeyState, state, Ctrl
; if state = U
;     MouseGetPos,,,OutWin,OutCtrl
;     WinActivate, ahk_id %OutWin%
;     Send, {WheelUp}
; return
; ; make this work for typing too


; tooltip wrapper
coolTip(a, b:=1000)
{
ToolTip %a%
Sleep b
ToolTip
}

; #z::
; 	Click, Right
; 	Send, {DOWN 13}{Enter}
; return
#z::
Click, Right
Send, {DOWN 16}{right}{down 1}{enter}
Sleep, 500
Send, {enter}
return



; close all windows
; ^o::
; WinGet, id, list, , , Program Manager
; Loop, %id%
; {
;     StringTrimRight, this_id, id%a_index%, 0
;     WinGetTitle, this_title, ahk_id %this_id%
;     winclose,%this_title%
; }
; Return

#g:: ; Win+g
Run http://www.google.com/search?q=%clipboard%
Return


; search google for highlighted text
!f::
IfWinActive, Chrome
{
Click, right
Sleep, 100
Send, {DOWN 2}{ENTER}
}
return

; conveniences

; CL = false
; ~CapsLock::
; 	Send {enter}
; 	CL = !CL
; return



; my left mouse button was broken once, now I can't un-get used to it
; LButton::Click right
; RButton::Click

; script assumes mouse buttons are swapped in control panel


SetTitleMatchMode 2

~Esc::
If WinActive("Microsoft Visual Studio") {
send ^q
}
return
; #IfWinActive Sublime Text;
; Esc::MsgBox You Pressed Escapade
; #IfWinActive




; move cursor with keys
   *#Up::MouseMove,   0, -20, 0, R  ; Win+UpArrow    => Move cursor upward
 *#Down::MouseMove,   0,  20, 0, R  ; Win+DownArrow  => Move cursor downward
 *#Left::MouseMove, -20,   0, 0, R  ; Win+LeftArrow  => Move cursor to the left
*#Right::MouseMove,  20,   0, 0, R  ; Win+RightArrow => Move cursor to the right


; my left mouse button was broken once, now I can't un-get used to it
; LButton::Click right
; RButton::Click

; script assumes mouse buttons are swapped in control panel

; clean up ascii in clipboard
^F11::
StringReplace, clipboard, clipboard, \%0d\%0a, \r\n, All
StringReplace, clipboard, clipboard, \%2c, \,, All
StringReplace, clipboard, clipboard, \%2f, \/, All
StringReplace, clipboard, clipboard, \%3a, \:, All
StringReplace, clipboard, clipboard, \%3b, \;, All
StringReplace, clipboard, clipboard, \%3d, \=, All
StringReplace, clipboard, clipboard, \%5c, \/, All
StringReplace, clipboard, clipboard, &, \r\n&, All
; StringReplace, clipboard, clipboard, \;\+, \r\n, All
StringReplace, clipboard, clipboard, \{, \r\n\{\r\n, All
StringReplace, clipboard, clipboard, \}, \r\n\}\r\n, All
Sleep, 200
Send {^v}
return


; Start screen saver:
#Esc::
SendMessage, 0x112, 0xF140, 0,, Program Manager
return

; in case of
:*:woopsies::
ExitApp
return


; RButton::Click Left
; RButton::return
; XButton1::Click Right
; MButton::Click Right

; MButton & XButton1::
; 	send {^a}
; return

; use extra mouse buttons for cut and copy
; XButton1::
; Sleep, 20
; Send ^x
; return
; ^XButton1::
; Click 3
; Sleep, 20
; Send ^x
; return

; XButton2::
; Sleep, 20
; Send ^c
; return
; ^XButton2::
; Click 3
; Sleep, 20
; Send ^c
; return

; ; paste
; XButton1 & XButton2::
; XButton2 & XButton1::
; GetKeyState, state, Ctrl
; if state = D
;     click 1
; Sleep, 20
; Send ^v
; return

; duplicate a file
; ^d::
; Send ^c
; Sleep, 20
; Send ^v
; return

; enter by clicking both mouse buttons
; ~LButton & RButton::
; ~RButton & LButton::
; send {enter}


; auto reload on save ($?)
~^s::
IfWinActive, %A_ScriptName%
{
SplashTextOn,,,Reloading %A_ScriptName%,
Sleep,500
SplashTextOff
Reload
}
Else
{
Send {^s}
}
return
