; #NoEnv
; #SingleInstance, Force
SetBatchLines, -1
SetWinDelay, 0
CoordMode, Mouse, Screen
; applicationname = DragLock




hotkeyV = LShift
hotkeyH = LWin
hotkeydownV = ~*%hotkeyV%
hotkeydownH = ~*%hotkeyH%
Hotkey, %hotkeydownV%, HOTKEYV, On
Hotkey, %hotkeydownH%, HOTKEYH, On
return

HOTKEYV:
MouseGetPos, mx1, my1, mwin, mctrl
Loop
{
	MouseGetPos, mx2, my2, mwin, mctrl
	If (mx2 <> mx1 or my2 <> my1)
	{
		Break
	}
	Sleep, 100
}
lock = vertical
MouseGetPos, mx2, my2, mwin, mctrl
MouseMove, %mx1%, %my2%, 0
Gosub, LOCK
Loop
{
	GetKeyState, key, %hotkeyV%, P
	If key = U
	{
		DllCall("ClipCursor") 
		Break
	}
	Sleep, 10
}
Return

HOTKEYH:
MouseGetPos, mx1, my1, mwin, mctrl
Loop
{
	MouseGetPos, mx2, my2, mwin, mctrl
	If (mx2 <> mx1 or my2 <> my1)
	{
		Break
	}
	Sleep, 100
}
lock = horizontal
MouseGetPos, mx2, my2, mwin, mctrl
MouseMove, %mx2%, %my1%, 0
MouseMove, %mx2%, %my1%, 0
Gosub, LOCK
Loop
{
	GetKeyState, key, %hotkeyH%, P
	If key = U
	{
		DllCall("ClipCursor") 
		Break
	}
	Sleep, 10
}
Return

LOCK:
minx = 9999
miny = 9999
maxw = 0
maxh = 0
SysGet, monitors, MonitorCount
Loop, % monitors
{
	current := A_Index
	SysGet, monitor, Monitor, % current
	If (monitorLeft < minx)
	{
		minx := monitorLeft
	}
	If (monitorTop < miny)
	{
		miny := monitorTop
	}
	If (monitorRight > maxw)
	{
		maxw := monitorRight
	}
	If (monitorBottom > maxh)
	{
		maxh := monitorBottom
	}
}
If lock = horizontal
{
	rl := minx
	rt := my2
	rr := maxw
	rb := my2
}
Else
{
	rl := mx2
	rt := miny
	rr := mx2
	rb := maxh
} 
VarSetCapacity(rect, 16) 
Loop, 4 
{ 
	DllCall("RtlFillMemory",  UInt,  &rect +  0 + A_Index - 1,  UInt,  1,  UChar,  rl >> 8 * A_Index - 8) 
	DllCall("RtlFillMemory",  UInt,  &rect +  4 + A_Index - 1,  UInt,  1,  UChar,  rt >> 8 * A_Index - 8) 
	DllCall("RtlFillMemory",  UInt,  &rect +  8 + A_Index - 1,  UInt,  1,  UChar,  rr >> 8 * A_Index - 8) 
	DllCall("RtlFillMemory",  UInt,  &rect + 12 + A_Index - 1,  UInt,  1,  UChar,  rb >> 8 * A_Index - 8) 
}																												
DllCall("ClipCursor",  "UInt",  &rect) 
Return
