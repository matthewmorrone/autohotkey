; #escapechar \    					; Change it to be backslash instead of the default of accent (`).
#InstallKeybdHook				; this MUST be called at the start of your script
#Persistent
; #NoEnv  						; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  	; Ensures a consistent starting directory.
#SingleInstance, force
#HotkeyInterval 500 		  	; This is  the default value (milliseconds).
#MaxHotkeysPerInterval 200
#WinActivateForce
SetTitleMatchMode 2 			; A window's title can contain WinTitle anywhere inside it to be a match.

; #Include admin.ahk

Menu, tray, icon, ico/psi_white.ico, , 1
+F1::
F1::
Suspend


; PostMessage, 0x50, 0, 0x4090409 ; switch to English
; PostMessage, 0x50, 0, 0x4070407 ; switch to German

Send {ctrl up}#{Space}

; Left Alt + Left Shift + PrintScreen: Toggle High Contrast on and off. High Contrast must be enabled.
; Send {alt}{shift}{printscreen}
; SendInput !+{PrintScreen}

Send {LControl Up}
Send {RControl Up}
Send {Shift Up}
Send {Tab Up}
Send {CapsLock Up}
Send {Enter Up}


IF A_ISSUSPENDED = 1
Menu, tray, icon, ico/psi_red.ico, , 1
else if A_ISSUSPENDED = 0
Menu, tray, icon, ico/psi_white.ico, , 1
return
Menu, tray, icon, ico/psi_white.ico, , 1