

tx := A_ScreenWidth  - 1
ty := A_ScreenHeight - 1

#Persistent ; to make it run indefinitely
	SetTimer start1, 0 ; "0" to make it update position instantly
Return

start1:
	CoordMode, ToolTip, Screen
	CoordMode, Mouse, Screen
	MouseGetPos sx, sy
	; tooltip %tx% %ty% %sx% %sy%

	If (sx <=  1 and sy <=  1) {
		; WinGet, id, list, , , Program Manager
		; Loop, %id%
		; {
		; 	StringTrimRight, this_id, id%a_index%, 0
		; 	WinGetTitle, this_title, ahk_id %this_id%
		; 	WinShow, %this_title%
		; }
		; Return
		WinMaximize, A
		; cooltip("top left")
	}
	Else If (sx >= tx and sy <=  1) {
		; WinGetActiveTitle, title
		WinMaximize, A
		; cooltip("top right")
	}
	Else If	 (sx <=  1 and sy >= ty) {
		; WinGet, id, list, , , Program Manager
		; Loop, %id%
		; {
		; 	StringTrimRight, this_id, id%a_index%, 0
		; 	WinGetTitle, this_title, ahk_id %this_id%
		; 	WinHide, %this_title%
		; }
		; Return
		WinMinimize, A
		; cooltip("bottom left")
	}
	Else If (sx >= tx and sy >= ty) {
		; WinGetActiveTitle, title
		WinMinimize, A
		; cooltip("bottom right")
	}
Return


; WinSet, AlwaysOnTop, toggle





; WinActivate	Activates the specified window (makes it foremost).
; WinActivateBottom	Same as WinActivate except that it activates the bottommost (least recently active) matching window rather than the topmost.
; WinMaximize	Enlarges the specified window to its maximum size.
; WinMinimize	Collapses the specified window into a button on the task bar.
; WinMinimizeAll	Minimizes all windows.
; WinMinimizeAllUndo	Reverses the effect of a previous WinMinimizeAll.
; WinShow	Unhides the specified window.
; WinHide	Hides the specified window.
; WinRestore	Unminimizes or unmaximizes the specified window if it is minimized or maximized.





; WinClose	Closes the specified window.
; WinGetActiveStats	Combines the functions of WinGetActiveTitle and WinGetPos into one command.
; WinGetActiveTitle	Retrieves the title of the active window.
; WinGetClass	Retrieves the specified window's class name.
; WinGet	Retrieves the specified window's unique ID, process ID, process name, or a list of its controls. It can also retrieve a list of all windows matching the specified criteria.
; WinGetPos	Retrieves the position and size of the specified window.
; WinGetText	Retrieves the text from the specified window.
; WinKill	Forces the specified window to close.
; WinMove	Changes the position and/or size of the specified window.
; WinSet	Makes a variety of changes to the specified window, such as "always on top" and transparency.
; WinGetTitle	Retrieves the title of the specified window.
; WinSetTitle	Changes the title of the specified window.
; WinWait	Waits until the specified window exists.
; WinWaitActive	Waits until the specified window is active.
; WinWaitClose	Waits until the specified window does not exist.
; WinWaitNotActive	Waits until the specified window is not active.



