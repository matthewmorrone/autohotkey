#EscapeChar \  ; Change it to be backslash instead of the default of accent (`).
#InstallKeybdHook  ; this MUST be called at the start of your script
#Persistent
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
#HotkeyInterval 4000 ;2000  ; This is  the default value (milliseconds).
#MaxHotkeysPerInterval 200
#WinActivateForce
SetTitleMatchMode 2 ; A window's title can contain WinTitle anywhere inside it to be a match. 


Enter & Backspace:: Send {Delete}


; because esc doesn't always seem to work like it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return



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


; shortcut for zipping folder, careful not to move mouse
#z::
Click, Right
Send, {DOWN 16}{right}{down 1}{enter}
Sleep, 500
Send, {enter}
return

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

; a little bit of visual help
~*^z::coolTip("undo!")
~*^y::coolTip("redo!")
~*+^z::coolTip("redo!")
~*^x::coolTip("cut!")
~*^c::coolTip("copied!")
~*^v::coolTip("pasted!")



; move selection up a directory
^up::
Send ^x
Sleep, 20
Send {BS}
Sleep, 20
Send {F5}
Sleep, 20
Send ^v
Sleep, 20
Send {shift Up}
return

; to see a key/mouse trace
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
return


; turn off zoom scroll
^WheelDown::return
^WheelUp::return

; to see what's behind the current window
#Space::   WinSet, Transparent,  50, A
#Space UP::WinSet, Transparent, OFF, A
return

; The PrintScreen button auto opens Paint and pastes it into the canvas. (it also saves your current clipboard)
PrintScreen::
clipsave = %clipboard%
Send, #{PRINTSCREEN}
Run, mspaint.exe
WinWaitActive ahk_class MSPaintApp
{
Send, ^v
}
clipboard = %clipsave%
coolTip("screen printed!")
return

; Start screen saver:
#Esc::
SendMessage, 0x112, 0xF140, 0,, Program Manager  
return

; in case of 
:*:woopsies::
ExitApp
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

SetTitleMatchMode 2

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

~LButton & RButton::
~RButton & LButton::
Click 2
return




; tooltip wrapper
coolTip(a, b:=1000)
{
ToolTip %a%
Sleep b
ToolTip
}




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


