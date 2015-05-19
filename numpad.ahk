#EscapeChar \  ; Change it to be backslash instead of the default of accent (`).
#InstallKeybdHook  ; this MUST be called at the start of your script
#Persistent
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

SetTitleMatchMode 2 ; A window's title can contain WinTitle anywhere inside it to be a match. 


; Space - the spacebar
; Tab
; Enter (or Return)
; Escape (or Esc)
; Backspace (or BS)

; Delete (or Del)
; Insert (or Ins)
; Home
; End
; PgUp
; PgDn
; Up
; Down
; Left
; Right

; ScrollLock
; CapsLock
; NumLock

; Numlock OFF

NumPad1::Send {End}
NumPad2::Send {Down}
NumPad3::Send {PgDn}
NumPad4::Send {Left}
; NumPad5::Send {}
NumPad6::Send {Right}
NumPad7::Send {Home}
NumPad8::Send {Up}
NumPad9::Send {PgUp}
; NumPad0::Send {}

; Numlock ON	Numlock OFF
; Numpad0	NumpadIns
; Numpad1	NumpadEnd
; Numpad2	NumpadDown
; Numpad3	NumpadPgDn
; Numpad4	NumpadLeft
; Numpad5	NumpadClear
; Numpad6	NumpadRight
; Numpad7	NumpadHome
; Numpad8	NumpadUp
; Numpad9	NumpadPgUp
; NumpadDot (.)	NumpadDel
; NumpadDiv (/)	NumpadDiv (/)
; NumpadMult (*)	NumpadMult (*)
; NumpadAdd (+)	NumpadAdd (+)
; NumpadSub (-)	NumpadSub (-)
; NumpadEnter	NumpadEnter



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

