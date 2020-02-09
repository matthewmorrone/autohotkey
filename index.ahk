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
ScrollLock::
Suspend, Toggle
if A_IsSuspended {
    Menu, Tray, Icon , ico/psi-f00.ico
    Send, {LCtrl up}
}
else {
    Menu, Tray, Icon , ico/psi-fff.ico
    Send, {LCtrl up}
}
return




#Include util.ahk
RestoreCursor()


Ctrl::Alt
Alt::Ctrl
^CapsLock::CapsLock
CapsLock::Enter
`::Send {Backspace}
+`::Send {Delete}

MButton::Ins

XButton1::^v
XButton2::^c

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



^F6::WinSet, AlwaysOnTop, Toggle, A
^F7::Run, "C:\Program Files\AutoHotkey\AU3_Spy.exe"
^F8::KeyHistory

!d::
Send +{right}
Send ^x
Send {left}
Send ^v
return

#Space::WinSet, Transparent, 50, A
#Space UP::WinSet, Transparent, OFF, A
return

^Esc::
WinGetActiveTitle, title
WinClose %title%
Return
!+Esc::
Send {^+Esc}
Return


OnClipboardChange:
Sleep 100
res = `n###%A_YYYY%-%A_MM%-%A_DD%,%A_Hour%`:%A_Min%`:%A_Sec%###`n
ult = %clipboard%
result = %res%%ult%
FileAppend, %result%, log/%A_YYYY%-%A_MM%-%A_DD%.txt
return

~^x::
~^c::
gosub OnClipboardChange
return

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



^+v::
WinGetClass, class, A
if (class = "LyncConversationWindowClass") {
    send {RButton}
    send {Down 5}
    send {Space}
}
return



NumpadClear::Enter
NumpadIns::Space
NumpadEnter & NumpadEnd::Send 1
NumpadEnter & NumpadDown::Send 2
NumpadEnter & NumpadPgDn::Send 3
NumpadEnter & NumpadLeft::Send 4
NumpadEnter & NumpadClear::Send 5
NumpadEnter & NumpadRight::Send 6
NumpadEnter & NumpadHome::Send 7
NumpadEnter & NumpadUp::Send 8
NumpadEnter & NumpadPgUp::Send 9
NumpadEnter & NumpadDel::Send {Backspace}



#include mirror.ahk

#include hot.ahk



#IfWinActive, ahk_exe explorer.exe
^w::return
^n::Send ^+n
^+n::Send ^n
^+a::Send !hsi
; ^+a::send !e{up}{enter}

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
#IfWinActive, ahk_exe chrome.exe
^w::Return
^q::Send ^w
#IfWinActive
#IfWinActive, ahk_exe lync.exe
esc::return
#IfWinActive




^RButton::
MsgBox Stay Awake Activated
SetTimer, StayAwake, 1000
return
StayAwake:
If (A_TimeIdle > 60000) {
    goto Ellipse
}
return
Ellipse:
MouseGetPos, X, Y
MouseMove_Ellipse(X,    Y,    X+10, Y+10, 1, 0, 0)
MouseMove_Ellipse(X+10, Y+10, X,    Y+20, 1, 0, 0)
MouseMove_Ellipse(X,    Y+20, X-10, Y+10, 1, 0, 0)
MouseMove_Ellipse(X-10, Y+10, X,    Y,    1, 0, 0)
return

^+e::Run, C:\Program Files\Microsoft VS Code\Code.exe, "C:\Users\lidddc6\Documents\autohotkey\main.ahk"

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
