
WindowW() {
	WinGetPos,,, WindowWidth
	return %WindowWidth%
}
WindowH() {
	WinGetPos,,,, WindowHeight
	return %WindowHeight%
}
RemoveDuplicates(String, Delimiter="`n") {
	oUniques := []
	Loop, parse, String, % Delimiter
	{
		For k,v in oUniques
		{
			if (v = A_LoopField)
				continue 2
		}
		NewString .= Delimiter A_LoopField
		oUniques.Insert(A_LoopField)
	}
	return LTrim(NewString, Delimiter)
}
debug(a:="") {
	MsgBox, 4,, %a% Would you like to continue?, 5
	IfMsgBox, No
		Return
	IfMsgBox, Timeout
		Return
}
coolTip(a:="is this thing on?", b:=1000) {
	ToolTip %a%
	Sleep b
	ToolTip
}
splashOn(a:="is this thing on?", b:=1000) {
	SplashTextOn,,,%a%,
	Sleep b
	SplashTextOff
}
snake_case(str) {
	str := RegExReplace(str, "([A-Z])([a-z])", "_$l1$2", out, -1, 1)
	str := RegExReplace(str, "([a-z])([A-Z])", "$1_$l2", out, -1, 1)
	str := RegExReplace(str, "^_", "", out, -1, 1)
	str := RegExReplace(str, "_+", "_", out, -1, 1)
	StringLower, str, str
	return str
}
TitleCase(str) {
	StringUpper, str, str, T
	return str
}

; a little bit of visual help
; ~*^z::coolTip("undo!")
; ~*^y::coolTip("redo!")
; ~*+^z::coolTip("redo!")
; ~*^x::coolTip("cut!")
; ~*^c::coolTip("copied!")
; ~*^v::coolTip("pasted!")

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

GetMonitor(hwnd := 0) {
	; If no hwnd is provided, use the Active Window
	if (hwnd) {
		WinGetPos, winX, winY, winW, winH, ahk_id %hwnd%
	}
	else {
		WinGetActiveStats, winTitle, winW, winH, winX, winY
	}

	SysGet, numDisplays, MonitorCount
	SysGet, idxPrimary, MonitorPrimary

	Loop %numDisplays% {
		SysGet, mon, MonitorWorkArea, %a_index%
		; Left may be skewed on Monitors past 1
		if (a_index > 1) {
			monLeft -= 10
		}
		; Right overlaps Left on Monitors past 1
		else if (numDisplays > 1) {
			monRight -= 10
		}
		; Tracked based on X. Cannot properly sense on Windows "between" monitors
		if (winX >= monLeft && winX < monRight) {
			return %a_index%
		}
	}
	; Return Primary Monitor if can't sense
	return idxPrimary
}
GetMonitorMouseIsIn(Monitor = 0)
{
	if(Monitor)
	{
		SysGet, Cord, 79
		MouseGetPos, x, k
	}
	else
	{
		SysGet, Cord, 78
		MouseGetPos, k, x
	}

	return (k > Cord//2) ? 2 : 1
}

ClipCursor(Confine=True, x1=0, y1=0, x2=1, y2=1) {
	VarSetCapacity(R, 16, 0)
	NumPut(x1, &R+0), NumPut(y1, &R+4)
	NumPut(x2, &R+8), NumPut(y2, &R+12)
	Return Confine ? DllCall("ClipCursor", UInt, &R) : DllCall("ClipCursor")
}
ClickAnd(x, y) {
	MouseGetPos, xpos, ypos
	Send {click %x%, %y%}
}
ClickAndRepeat(x, y, n) {
	MouseGetPos, xpos, ypos
	for i in range(n) {
		Send {click %x%, %y%}
	}
	MouseMove, %xpos%, %ypos%
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
		ToReturn .= item.path "`n"
	}
	return Trim(ToReturn,"`n")
}
ToString(array, depth:=6, indent:="") {
	result := ""
	if (IsObject(array)) {
		for key, value in array {
			result .= A_Tab . indent . key
			if (IsObject(value) && depth > 1) {
				result .= "`n" . toString(value, depth - 1, indent . A_Tab)
			}
			else {
				result .= A_Tab . "= [" . value . "]`n"
			}
		}
	}
	else {
		result := array
	}
	return result
}

selections:
	sel := GetSelections()
	len := 0
	for item in sel {
		len++
	}
	Sort, sel, N
return

GetPath() {
	gosub selections
	if (len = 1) {
		for key, item in sel {
			path := item.path
		}
	}
	return path
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
FilePrepend(filein, string) {
	IfNotExist, %filein%
		return false
	input := FileOpen(filein, 0)
	text := input.Read()
	input.Close()
	output := FileOpen(filein, 5)
	output.WriteLine(string)
	output.Write(text)
	output.Close()
	return true
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

