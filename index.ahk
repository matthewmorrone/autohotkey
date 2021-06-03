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

Insert::Send {PrintScreen}

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

^Esc::
WinGetActiveTitle, title
WinClose %title%
Return
!+Esc::
Send {^+Esc}
Return

^Space::WinSet, Transparent, 75, A
^Space UP::WinSet, Transparent, OFF, A
return
F3::
WinSet, AlwaysOnTop, ON, A
WinSet, Transparent, 200, A
return
F4::
WinSet, AlwaysOnTop, OFF, A
WinSet, Transparent, OFF, A
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

F7::Run, "C:\Program Files\AutoHotkey\AU3_Spy.exe"
F8::KeyHistory
F9::Run, "C:\Users\morronm\AppData\Local\Programs\Microsoft VS Code\Code.exe", "C:\Users\morronm\Documents\autohotkey\index.ahk"

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

#IfWinActive

; One-handed Sudoku
^1::Send {9}
^2::Send {8}
^3::Send {7}
^4::Send {6}

#Include, idle.ahk

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
