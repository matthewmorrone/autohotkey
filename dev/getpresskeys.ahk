GetPressedKeys(gpk_mode = "")	{
; ____________________________________________________________________
; Usage:	GetPressedKeys([gpk_mode])
;				gpk_mode	- if omitted logical state is given,
;							  if set to "P" physical state is given
; ____________________________________________________________________
; TODO: add ALL missing keys as SCnnn (or maybe better as VKnn?)
; ____________________________________________________________________

	gpk_AllKeyNames := "` 1 2 3 4 5 6 7 8 9 0 - = q w e r t y u i o p [ ] \ a s d f g h j k l `; ' "" z x c v b n m , . / "
		. "LButton RButton MButton XButton1 XButton2 "				; WheelDown WheelUp
		. "F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 F13 F14 F15 F16 F17 F18 F19 F20 F21 F22 F23 F24 "
		. "Space Tab Enter Esc Backspace Delete Insert Home End PgUp PgDn Up Down Left Right "
		. "NumpadDiv NumpadMult NumpadAdd NumpadSub NumpadEnter "
		. "NumpadDel NumpadIns NumpadClear NumpadUp NumpadDown NumpadLeft NumpadRight NumpadHome NumpadEnd NumpadPgUp NumpadPgDn "
		. "Numpad0 Numpad1 Numpad2 Numpad3 Numpad4 Numpad5 Numpad6 Numpad7 Numpad8 Numpad9 NumpadDot "
		. "ScrollLock CapsLock NumLock AppsKey "
		. "LWin RWin LControl RControl LShift RShift LAlt RAlt "
		. "PrintScreen CtrlBreak Pause Break "
		. "Help Sleep Browser_Back Browser_Forward Browser_Refresh Browser_Stop Browser_Search Browser_Favorites Browser_Home "
		. "Volume_Mute Volume_Down Volume_Up Media_Next Media_Prev Media_Stop Media_Play_Pause Launch_Mail Launch_Media Launch_App1 Launch_App2"
	 	
	loop parse, gpk_AllKeyNames, %A_Space%
		if (GetKeyState(A_LoopField, gpk_mode))
			gpk_pressed_keys:=gpk_pressed_keys . " " . A_LoopField

	if (A_AutoTrim = "Off") {
		AutoTrim, On
		gpk_pressed_keys = %gpk_pressed_keys%
		AutoTrim, Off
	}
	else
		gpk_pressed_keys = %gpk_pressed_keys%

	return gpk_pressed_keys
}