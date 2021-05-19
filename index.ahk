#NoEnv
#InstallKeybdHook
#InstallMouseHook
#Persistent
SetWorkingDir %A_ScriptDir%
#SingleInstance force
#WinActivateForce
SetTitleMatchMode 2
; #Warn
AutoTrim, Off
#KeyHistory 16

Menu, Tray, Icon, ico/psi-fff.ico, , 1
^Insert::
Suspend, Toggle
if A_IsSuspended {
    Menu, Tray, Icon, ico/psi-f00.ico
    Send, {LCtrl up}
}
else {
    Menu, Tray, Icon, ico/psi-fff.ico
    Send, {LCtrl up}
}
return

Insert::send {PrintScreen}

#Include util.ahk

RestoreCursor()

#IfWinNotActive, Amazon WorkSpaces
Ctrl::Alt
Alt::Ctrl
#IfWinNotActive

^CapsLock::CapsLock
CapsLock::Enter
`::Send {Backspace}
+`::Send {Delete}

#Include jump.ahk

#Include unicode.ahk

#include hot.ahk


#1::Send {Home}
#+1::Send ^{Home}
#2::Send {End}
#+2::Send ^{End}
#3::Send {PgUp}
#+3::Send ^{PgUp}
#4::Send {PgDn}
#+4::Send ^{PgDn}

#w::Send {up}
#s::Send {down}
#a::Send {left}
#d::Send {right}

#Up::WinMaximize, A
#Down::WinMinimize, A



F3::
WinSet, AlwaysOnTop, ON, A
WinSet, Transparent, 200, A
return
F4::
WinSet, AlwaysOnTop, OFF, A
WinSet, Transparent, OFF, A
return


^F6::WinSet, AlwaysOnTop, Toggle, A
^F7::Run, "C:\Program Files\AutoHotkey\AU3_Spy.exe"
^F8::KeyHistory
^F9::Run, "C:\Users\morronm\AppData\Local\Programs\Microsoft VS Code\Code.exe", "C:\Users\morronm\Documents\autohotkey\index.ahk"

^Space::WinSet, Transparent, 50, A
^Space UP::WinSet, Transparent, OFF, A
return

^Esc::
WinGetActiveTitle, title
WinClose %title%
Return
!+Esc::
Send {^+Esc}
Return



!t::
Send ^c
StringUpper, Clipboard, Clipboard, T
Send ^v
return
!u::
Send ^x
StringUpper, Clipboard, Clipboard
Send ^v
return
!l::
Send ^c
StringLower, Clipboard, Clipboard
Send ^v
return

^F5::
WinGet, pid, PID, A
WinGet, pname, ProcessName, A
WinGet, ppath, ProcessPath, A
WinClose, ahk_exe %ppath%
txt:=% "Restarting " . ProcessName
splashOn(txt)
Run, %ppath%
return

#IfWinActive, ahk_exe explorer.exe

^w::return
^n::Send ^+n
^+n::Send ^n
^+a::Send !hsi

^WheelDown::
Send {Ctrl Up}
Send {WheelDown}
Send {Ctrl Down}
return

^WheelUp::
Send {Ctrl Up}
Send {WheelUp}
Send {Ctrl Down}
return

^up::
Send ^x
Sleep, 200
send !{up}
Sleep, 200
Send {F5}
Sleep, 200
Send ^v
Sleep, 200
Send {shift Up}
return

#IfWinActive

#IfWinActive, ahk_exe lync.exe
Esc::return
#IfWinActive

; One-handed Sudoku
^1::Send {9}
^2::Send {8}
^3::Send {7}
^4::Send {6}

MButton::
; SetTimer, StayAwake, 1000
SetTimer, StayAwake, % (AwakeToggle:=!AwakeToggle) ? 1000 : "Off"
if (AwakeToggle) {
    MsgBox, 4, , Stay Awake Activated, 1
}
else {
    MsgBox, 4, , Stay Awake Deactivated, 1
}
return

StayAwake:
If (A_TimeIdle > 60000) {
    goto Ellipse
}
return
Ellipse:
R := 2
S := 2
MouseGetPos, X, Y
MouseMove_Ellipse(X,     Y,     X+R,   Y+R,   S, 0, -1)
MouseMove_Ellipse(X+R,   Y+R,   X,     Y+R*2, S, 0, -1)
MouseMove_Ellipse(X,     Y+R*2, X-R,   Y+R,   S, 0, -1)
MouseMove_Ellipse(X-R,   Y+R,   X,     Y,     S, 0, -1)
MouseMove_Ellipse(X,     Y,     X+R,   Y-R,   S, 0,  1)
MouseMove_Ellipse(X+R,   Y-R,   X,     Y-R*2, S, 0,  1)
MouseMove_Ellipse(X,     Y-R*2, X-R,   Y-R,   S, 0,  1)
MouseMove_Ellipse(X-R,   Y-R,   X,     Y,     S, 0,  1)
MouseMove_Ellipse(X,     Y,     X+R,   Y+R,   S, 0,  1)
MouseMove_Ellipse(X+R,   Y+R,   X+R*2, Y,     S, 0,  1)
MouseMove_Ellipse(X+R*2, Y,     X+R,   Y-R,   S, 0,  1)
MouseMove_Ellipse(X+R,   Y-R,   X,     Y,     S, 0,  1)
MouseMove_Ellipse(X,     Y,     X-R,   Y+R,   S, 0, -1)
MouseMove_Ellipse(X-R,   Y+R,   X-R*2, Y,     S, 0, -1)
MouseMove_Ellipse(X-R*2, Y,     X-R,   Y-R,   S, 0, -1)
MouseMove_Ellipse(X-R,   Y-R,   X,     Y,     S, 0, -1)
goto Jump2
goto ActivateWinUM
return





#IfWinActive, .ahk
SetTitleMatchMode 2
$~^s::
txt:=% "Reloading " . A_ScriptName
splashOn(txt)
Reload
Return
#IfWinActive

:*:woopsies::
ExitApp
Return
