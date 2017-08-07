; #EscapeChar \    					; Change it to be backslash instead of the default of accent (`).
#InstallKeybdHook				; this MUST be called at the start of your script
#Persistent
; #NoEnv  						; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  	; Ensures a consistent starting directory.
#SingleInstance, force
#HotkeyInterval 500 		  	; This is  the default value (milliseconds).
#MaxHotkeysPerInterval 200
#WinActivateForce
SetTitleMatchMode 2 			; A window's title can contain WinTitle anywhere inside it to be a match.

RunAsAdmin() {
	Loop, %0% {
		param := %A_Index%
		params .= A_Space . param
	}
	ShellExecute := A_IsUnicode ? "shell32\ShellExecute":"shell32\ShellExecuteA"
	if not A_IsAdmin {
		If A_IsCompiled {
			DllCall(ShellExecute, uint, 0, str, "RunAs", str, A_ScriptFullPath, str, params , str, A_WorkingDir, int, 1)
		}
		Else {
			DllCall(ShellExecute, uint, 0, str, "RunAs", str, A_AhkPath, str, """" . A_ScriptFullPath . """" . A_Space . params, str, A_WorkingDir, int, 1)
		}
		ExitApp
	}
}

Menu, tray, icon, ico/psi-fff.ico, , 1
F1::
Suspend

Send {LControl Up}
Send {RControl Up}
Send {Shift Up}
Send {Tab Up}
Send {CapsLock Up}
Send {Enter Up}

if A_ISSUSPENDED = 1
Menu, tray, icon, ico/psi-f00.ico, , 1
else if A_ISSUSPENDED = 0
Menu, tray, icon, ico/psi-fff.ico, , 1
return
Menu, tray, icon, ico/psi-fff.ico, , 1