KeyHistoryExtended() {
	IfWinNotExist, %A_Space%- AutoHotkey v
		KeyHistory
	else {
		SetTitleMatchMode, 2
		SetTimer, KeyHistoryExtendedTimer, 20
	}
}

KeyHistoryExtendedTimer:
	PostMessage, 0x111, 65410, 0,, %A_Space%- AutoHotkey v
	IfWinNotExist, %A_Space%- AutoHotkey v
		SetTimer, KeyHistoryExtendedTimer, Off
return
F8::KeyHistoryExtended()