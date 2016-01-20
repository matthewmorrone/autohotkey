Menu, tray, icon, icons/psi_white.ico, , 1
F1::
Suspend
IF A_ISSUSPENDED = 1
Menu, tray, icon, icons/psi_red.ico, , 1
else if A_ISSUSPENDED = 0
Menu, tray, icon, icons/psi_white.ico, , 1
return
Menu, tray, icon, icons/psi_white.ico, , 1






; #Persistent
; SetTimer, test, 500
; return


; test:
;   IfWinNotActive, serwinp0001
;     Suspend


; sendinput test
; winwaitclose, serwinp0001
; return

; WinWaitActive, serwinp0001;[, WinTitle, WinText, Seconds, ExcludeTitle, ExcludeText]
; MsgBox
; return


; WinWaitNotActive, serwinp0001
; MsgBox
; return

; #If WinActive("serwinp") or WinActive(MyWindowTitle)


; serwinp0001 - Remote Desktop Connection
; ahk_class TscShellContainerClass
; ahk_exe mstsc.exe


; #If
; Esc::ExitApp

; #If MouseIsOver("ahk_class Shell_TrayWnd")
; WheelUp::Send {Volume_Up}
; WheelDown::Send {Volume_Down}

; MouseIsOver(WinTitle) {
;     MouseGetPos,,, Win
;     return WinExist(WinTitle . " ahk_id " . Win)
; }

; ; Example 4: Dynamic hotkeys. Requires Example 1.
; NumpadAdd::
; Hotkey, If, MouseIsOver("ahk_class Shell_TrayWnd")
; if (doubleup := !doubleup)
;     Hotkey, WheelUp, DoubleUp
; else
;     Hotkey, WheelUp, WheelUp
; return

; DoubleUp:
; Send {Volume_Up 2}
; return