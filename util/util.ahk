#Include util/array.ahk
#Include util/range.ahk


WindowW() {
	WinGetPos,,, WindowWidth
	return %WindowWidth%
}
WindowH() {
	WinGetPos,,,, WindowHeight
	return %WindowHeight%
}


min(num*){
	min := 1
	Loop % num.MaxIndex()
		min := (num[A_Index] < num[min]) ? A_Index : min
	return min
}


RemoveDuplicates(String, Delimiter="`n") {
	oUniques := []
	Loop, parse, String, % Delimiter
	{
		For k,v in oUniques
		{
			if (v = A_LoopField)		; duplicate
				continue 2
		}
		; unique
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

ClipCursor(Confine = True, x1 = 0, y1 = 0, x2 = 1, y2 = 1, d = false) {
	VarSetCapacity(R, 16, 0), NumPut(x1, &R+0), NumPut(y1, &R+4), NumPut(x2, &R+8), NumPut(y2, &R+12)
	Return Confine ? DllCall("ClipCursor", UInt, &R) : DllCall("ClipCursor")
}

ClickAnd(x, y) {
	MouseGetPos, xpos, ypos
	Send {click %x%, %y%}
	; return [xpos, ypos]
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

; MoveClickWait(x, y, z:=500) {
; 	Send {click %x%, %y%}
; 	Sleep, %z%
; }

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
FilePrepend(fileIN, string) {
	IfNotExist, %fileIN%
		return false
	input := FileOpen(fileIN, 0)
	text := input.Read()
	input.Close()
	output := FileOpen(fileIN, 5)
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

