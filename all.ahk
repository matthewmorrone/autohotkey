#EscapeChar \  ; Change it to be backslash instead of the default of accent (`).
#InstallKeybdHook  ; this MUST be called at the start of your script
#Persistent
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

SetTitleMatchMode 2 ; A window's title can contain WinTitle anywhere inside it to be a match. 

; switch the ctrl and alt buttons for ergonomic ease
LAlt::LCtrl
LCtrl::LAlt

RAlt::RCtrl
RCtrl::RAlt


; use the rightclick button as the window button
AppsKey::LWin
^AppsKey::
send {AppsKey}
return

; disable insert button
Insert::return

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
MouseClick, right
Sleep, 100
Send, {DOWN 2}{ENTER}
}
return

; womp womp
F3::
MouseClick, right
Send, {DOWN 4}{ENTER}

Sleep, 500
Send, {ENTER}
Sleep, 1000

Send, {^w}
return


; move cursor with keys
   *#Up::MouseMove,   0, -20, 0, R  ; Win+UpArrow    => Move cursor upward
 *#Down::MouseMove,   0,  20, 0, R  ; Win+DownArrow  => Move cursor downward
 *#Left::MouseMove, -20,   0, 0, R  ; Win+LeftArrow  => Move cursor to the left
*#Right::MouseMove,  20,   0, 0, R  ; Win+RightArrow => Move cursor to the right

; activates the window under the mouse on scroll
~$WheelDown::
GetKeyState, state, Ctrl
if state = U
    MouseGetPos,,,OutWin,OutCtrl
    WinActivate, ahk_id %OutWin%

    ; controlsend,,WheelDown
    ; Send, {WheelDown}
return
~$WheelUp::
GetKeyState, state, Ctrl
if state = U
    MouseGetPos,,,OutWin,OutCtrl
    WinActivate, ahk_id %OutWin%
    ; controlsend,,WheelUp
    ; Send, {WheelUp}
return
; make this work for typing too


; tooltip wrapper
coolTip(a, b:=1000)
{
ToolTip %a%
Sleep b
Tooltip
}

; conveniences
CapsLock::       Send {enter}
CapsLock & `::   Send {backspace}
CapsLock & Tab:: Send {delete}

CapsLock & 1:: Send {Home}
CapsLock & 2:: Send {End}
CapsLock & 3:: Send {PgUp}
CapsLock & 4:: Send {PgDn}

CapsLock & w:: Send {Up}
CapsLock & s:: Send {Down}
CapsLock & a:: Send {Left}
CapsLock & d:: Send {Right}

; é
 #2:: sendinput {asc 0233}
 #u:: sendinput {asc 163}

; to make renaming files a little less annoying
~F2::
Send {Right}
Send {Left}
return

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
; return

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
:*:p@1::$hibboL33t
:*:p@2::$HibboL33t
:*:p@3::1PITTPANTHER
:*:,+::{+}" "{+}
:*:-_-::{U+0CA0}_{U+0CA0}
:*:clog::console.log(){left 1}


; Here are two hotkeys that simulate the turning of the mouse wheel:
; #up::MouseClick, WheelUp, , , 2  ; Turn it by two notches.
; #down::MouseClick, WheelDown, , , 2

; Use ALT + Wheel to adjust the sound. Middle button toggles the mute function.
; !WheelUp::Send, {Volume_Up}{Volume_Up}
; !WheelDown::Send, {Volume_Down}{Volume_Down}
; !Mbutton::Send, {Volume_Mute}


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

