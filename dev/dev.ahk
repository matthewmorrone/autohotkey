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






; Here are two hotkeys that simulate the turning of the mouse wheel:
; #up::Click, WheelUp, , , 2  ; Turn it by two notches.
; #down::Click, WheelDown, , , 2

; Use ALT + Wheel to adjust the sound. Middle button toggles the mute function.
; !WheelUp::Send, {Volume_Up}{Volume_Up}
; !WheelDown::Send, {Volume_Down}{Volume_Down}
; !Mbutton::Send, {Volume_Mute}








; tooltip wrapper
coolTip(a, b:=1000)
{
ToolTip %a%
Sleep b
ToolTip
}

; in case of
:*:woopsies::
ExitApp
return

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
