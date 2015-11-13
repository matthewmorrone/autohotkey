

; to see a key/mouse trace
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return

; tooltip wrapper
coolTip(a:="is this thing on?", b:=1000) {
	ToolTip %a%
	Sleep b
	ToolTip
}

; splashtext wrapper
splashOn(a:="is this thing on?", b:=1000) {
	SplashTextOn,,,%a%,
	Sleep b
	SplashTextOff
}

; a little bit of visual help
~*^z::coolTip("undo!")
~*^y::coolTip("redo!")
~*+^z::coolTip("redo!")
~*^x::coolTip("cut!")
~*^c::coolTip("copied!")
~*^v::coolTip("pasted!")

ActivatorEnd(message, active:=true, timeout:=3) {
	if %active% {
		WinWaitActive, %message%, , %timeout%
	}
	else {
		WinWait, %message%, , %timeout%
		WinActivate
	}
	if ErrorLevel {
		return
	}
}

clickAndReturn(x, y) {
	MouseGetPos, xpos, ypos
	Send {click %x%, %y%}
	MouseMove, %xpos%, %ypos%
}

MoveClickWait(x, y, z:=500) {
	Send {click %x%, %y%}
	Sleep, %z%
}

!9::
{
	Sleep, 100
	clipurl := clipboard
	Send ^c
	Sleep, 50
	clipurl := "<a href=""" . clipurl . """>" . clipboard . "</a>"
	SendInput {Raw}%clipurl%
	clipboard := clipurl
	clipurl =;
	Return
}




