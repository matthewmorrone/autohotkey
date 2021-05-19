#NoEnv
Process Priority,,High
SetBatchLines -1

#InstallKeybdHook
CoordMode ToolTip, Screen
DetectHiddenWindows On
SetKeyDelay -1,0
#KeyHistory 25       ; max #key events

ScrollLock::
	shown := !shown
	If (!shown) {
		SetTimer RThistory, OFF
		WinHide ahk_id %HidWin%
		DllCall("SetParent", UInt,HidWin, UInt,OldPar)
		ToolTip
		Return
	}
	HidWin := WinExist(A_ScriptFullPath " - AutoHotkey v")
	OldPar := DllCall("GetParent", UInt,HidWin)
	DllCall("SetParent", UInt,HidWin, UInt,WinExist("ahk_class Shell_TrayWnd"))
	WinMenuSelectItem ahk_id %HidWin%,,View, Key
	SetTimer RThistory, 100
Return

RThistory:
	Critical
	WinGet ID, ID, A
	ControlSend,,{F5}, ahk_id %HidWin%
	WinActivate ahk_id %ID%
	ControlGetText Keys, Edit1, ahk_id %HidWin%
	StringGetPos pos, Keys, ----------`r`n
	StringTrimLeft Keys, Keys, pos+12
	StringTrimRight Keys, Keys, 23
	StringSplit Keys, Keys, `n
	keys =
	Loop %Keys0% {
		StringLeft Keys%A_Index%, Keys%A_Index%, 30
		Keys := Keys Keys%A_Index% "`n"
	}
	StringTrimRight Keys, Keys, 1
	ToolTip %Keys%, A_ScreenWidth,0
Return