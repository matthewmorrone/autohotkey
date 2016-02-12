

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

ClickAndReturn(x, y) {
	MouseGetPos, xpos, ypos
	Send {click %x%, %y%}
	MouseMove, %xpos%, %ypos%
}

MoveClickWait(x, y, z:=500) {
	Send {click %x%, %y%}
	Sleep, %z%
}

GetSelections(hwnd="") {
	hwnd := hwnd ? hwnd : WinExist("A")
	WinGetClass class, ahk_id %hwnd%
	if (class = "CabinetWClass" or class = "ExploreWClass" or class="Progman")
		for window in ComObjCreate("Shell.Application").Windows
			if (window.hwnd==hwnd)
	return window.Document.SelectedItems
}
GetSelection(hwnd="") {
	hwnd := hwnd ? hwnd : WinExist("A")
	WinGetClass class, ahk_id %hwnd%
	if (class = "CabinetWClass" or class = "ExploreWClass" or class="Progman")
		for window in ComObjCreate("Shell.Application").Windows
			if (window.hwnd==hwnd)
	sel := window.Document.SelectedItems
	for item in sel {
		; path := item.path
		ToReturn .= item.path "\n"
	}
	return Trim(ToReturn,"\n")
}
ToString(array, depth:=6, indent:="") {
	result := ""
	if (IsObject(array)) {
		for key, value in array {
			result .= "\t" . indent . key
			if (IsObject(value) && depth > 1) {
				result .= "\n" . toString(value, depth - 1, indent . "\t")
			}
			else {
				result .= "\t= [" . value . "]\n"
			}
		}
	}
	else {
		result := array
	}
	return result
}
IsFolder(path) {
	SplitPath, path, , , out
	return out = ""
}
IsFile(path) {
	SplitPath, path, , , out
	if (out = "") {
		return false
	}
	else {
		return out
	}
}
StrPad(p_str, p_padstr=" ", p_padnum=1) {
	If (A_IsUnicode)
	{
		char := Asc(p_padstr)
		VarSetCapacity(p_padstr, p_padnum << 1, 0)
		p_padstr .= Chr(char) Chr(char)
		While 1 << A_Index < p_padnum 
		{
			p_padstr .= p_padstr
		}
	}
	; Else VarSetCapacity(p_padstr, p_padnum, Asc(p_padstr))
	return SubStr(p_padstr p_str, 1 - p_padnum)
}

