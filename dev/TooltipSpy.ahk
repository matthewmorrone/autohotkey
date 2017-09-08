;---------------------------------------------------------------------------------------------------
;TOOLTIP SPY
;---------------------------------------------------------------------------------------------------
;© 2014 Scoox
;Inspect anything under mouse pointer
;---------------------------------------------------------------------------------------------------

#NoEnv
;#NoTrayIcon
#SingleInstance Force

CoordMode, Mouse, Screen

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ShowFull := False
TooltipSpyActive := True
SetTimer, TooltipSpy, 30
Return

#If TooltipSpyActive
	a::Clipboard := MousePosScreenX ", " MousePosScreenY
	b::Clipboard := MousePosWinX ", " MousePosWinY
	c::Clipboard := ColorHex
	d::Clipboard := "R=" ColorRed ", G=" ColorGreen ", B=" ColorBlue
	e::Clipboard := WinX ", " WinY
	f::Clipboard := WinH " x " WinW
	g::Clipboard := WinTitle
	r::Clipboard := WinClass
	s::Clipboard := WinID
	t::Clipboard := WinCount
	v::Clipboard := ControlClassNN
	w::Clipboard := ControlHwnd
	x::Clipboard := ControlHybrid
	z::Clipboard := ControlHwndDll
	LAlt::Clipboard := MouseInfo WinInfo ControlInfo ;copy everything
	Tab::ShowFull := ShowFull ? False : True ;Toggle between full and truncated
	Esc::TooltipSpyActive := False
#If
			
TooltipSpy:
	;Cooperatively stop TooltipSpy (otherwise you get the residual unclosed tooltip problem)
	If Not TooltipSpyActive
	{
		SetTimer, TooltipSpy, Off
		ToolTip ;remove tooltip
		Return
	}

	TextLen := ShowFull ? 100: 15 ;Truncate strings so that tooltip to prevent oversized tooltips.

	;Mouse pointer info
	CoordMode, Mouse, Screen
	MouseGetPos, MousePosScreenX, MousePosScreenY, WinID
	If (PriorX = MousePosScreenX And PriorY = MousePosScreenY And PriorShowFull = ShowFull)
		Return
	
	;More mouse pointer info
	CoordMode, Mouse, Window
	MouseGetPos, MousePosWinX, MousePosWinY
	MouseInfo := "MOUSE`n"
	MouseInfo .= "  (a) Screen (x, y):`t" MousePosScreenX ", " MousePosScreenY "`n"
	MouseInfo .= "  (b) Win. (x, y):`t" MousePosWinX ", " MousePosWinY "`n"
	
	;Colour under mouse
	CoordMode Pixel, Screen
	PixelGetColor, ColorHex, %MousePosScreenX%, %MousePosScreenY%, RGB
	ColorRed := (ColorHex & 0xFF0000) >> 16
	ColorGreen := (ColorHex & 0x00FF00) >> 8
	ColorBlue := ColorHex & 0x0000FF
	MouseInfo .= "  (c) RGB Hex:`t" ColorHex "`n"
	MouseInfo .= "  (d) RGB Dec:`t" ColorRed ", " ColorGreen ", " ColorBlue "`n"

	;Don't update window info if window is tooltip
	WinGetClass, WinClass, ahk_id %WinID%
	If (WinClass != "tooltips_class32")
	{
		;Window info
		WinGetPos, WinX, WinY, WinW, WinH, ahk_id %WinID%
		WinGetTitle, WinTitle, ahk_id %WinID%
		WinGet, WinCount, Count, ahk_class %WinClass%
		WinInfo := "WINDOW`n"
		WinInfo .= "  (e) X, Y:`t`t" WinX ", " WinY "`n"
		WinInfo .= "  (f) H x W:`t" WinH " x " WinW "`n"
		WinInfo .= "  (g) Title:`t" SubStr(WinTitle, 1, TextLen) "`n"
		WinInfo .= "  (r) Class:`t" SubStr(WinClass, 1, TextLen) "`n"
		WinInfo .= "  (s) ID:`t`t" SubStr(WinID, 1, TextLen) "`n"
		WinInfo .= "  (t) Count:`t" SubStr(WinCount, 1, TextLen) "`n" ;number of windows of this class

		;GUI control info
		SetFormat, IntegerFast, hex
		MouseGetPos, m_x, m_y
		MouseGetPos,,,, ControlClassNN, 1
		MouseGetPos,,,, ControlHwnd, 2
		MouseGetPos,,,, ControlHybrid, 3 ;This value is always equal to ControlClass4, but some times it is not retrieved, whereas ControlClass4 always gets correctly retrieved.
		ControlHwndDll := DllCall("WindowFromPoint", "int64", (m_y << 32) | (m_x & 0xFFFFFFFF), "Ptr")

		ControlInfo := "CONTROL`n"
		ControlInfo .= "  (v) ClassNN:`t" SubStr(ControlClassNN, 1, TextLen) "`n"
		ControlInfo .= "  (w) HWND:`t" SubStr(ControlHwnd, 1, TextLen) "`n"
		ControlInfo .= "  (x) Hybrid:`t" SubStr(ControlHybrid, 1, TextLen) "`n"
		ControlInfo .= "  (z) HWND_DLL:`t" SubStr(ControlHwndDll, 1, TextLen) "`n"
	}

	TooltipHeader = Esc = Exit`nAlt = Copy everything`nTab = Toggle full/short view`n
	Separator = --------------------------------------`n
				
	ToolTip %MouseInfo%%Separator%%WinInfo%%Separator%%ControlInfo%%Separator%%TooltipHeader%
	PriorX := MousePosScreenX, PriorY := MousePosScreenY, PriorShowFull := ShowFull
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;