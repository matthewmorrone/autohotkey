Hotkey, q , MyQ, On
Hotkey, z , MyZ, On
Hotkey, $w , MyW, On
Hotkey, $s , MyS, On
Return

^NumpadSub::
KeyToggle:=!KeyToggle
Hotkey, q , % (KeyToggle ? "Off": "On")
Hotkey, z , % (KeyToggle ? "Off": "On")
Hotkey, $w , % (KeyToggle ? "Off": "On")
Hotkey, $s , % (KeyToggle ? "Off": "On")
Return

MyQ:
SendInput, w
Return

MyZ:
SendInput, s
Return

MyW:
SendInput, {Up}
Return

MyS:
SendInput, {Down}
Return



Toggle := True
F1::Toggle := !Toggle
#if Toggle
	LAlt::LCtrl
	LCtrl::LAlt
	RAlt::RCtrl
	RCtrl::RAlt

	AppsKey::LWin
	CapsLock::Send {enter}

	Insert::Send {\}
	`::Send {Backspace}
	ScrollLock::send {SC029}
	\::Send {Tab}
#if


