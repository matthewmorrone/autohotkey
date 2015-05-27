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


#Include prelude.ahk
#Include conveniences.ahk
#Include *i passwords.ahk
#Include cooltips.ahk
#Include updir.ahk
#Include trace.ahk
#Include nozoomscroll.ahk
#Include xray.ahk
#Include printscreen.ahk
#Include dev/screensaver.ahk
#Include dev/hotcorners.ahk
#Include tag.ahk
#Include autoskip.ahk
#Include doubleclick.ahk
#Include woopsies.ahk
#Include cooltip.ahk
#Include autoload.ahk

; try {

; } catch e {

; } finally {

; }
