
minState = 0
^m::
	if (minstate = 1) {
		WinActivate, %Title%
		WinRestore
	}
	else {
		WinGetActiveTitle, Title
		WinMinimize, A
	}
	minState := !minstate
return

minAllState = 0
^+m::
	if (minAllstate = 1) {
		WinMinimizeAllUndo
	}
	else {
		WinMinimizeAll
	}
	minAllState := !minAllstate
return


^Up::WinMaximize, A
^Down::WinMinimize, A

^+Up::WinMinimizeAllUndo
^+Down::WinMinimizeAll



