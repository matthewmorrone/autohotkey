; Minimize Current Window
!q:: 
	WinMinimize, A
Return

; Alt+Backspace deletes to the beginning of the line (Same as Cmd+Del on OS X)
!BS::Send {LShift down}{Home}{LShift Up}{Del}

; Win+Backspace deletes the previous word
#BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}

; Alt + Right/Left arrows do Home / End (useful for my MacBook on Windows)
!Left::Send {Home}
!Right::Send {End}

; Win + J / K do page up and page down (easier to reach, I think)
#j::Send {PgDn}
#k::Send {PgUp}

; Remap Touchpad to Scroll Opposite (the way OS X, iPhone, and Android do)
WheelUp::
	Send {WheelDown}
Return
WheelDown::
	Send {WheelUp}
Return