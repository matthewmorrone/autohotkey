~NumpadIns::
	if (A_PriorHotkey <> "~NumpadIns" or A_TimeSincePriorHotkey > 200)
	{
		KeyWait, NumpadIns
		return
	}
	Run C:/Windows/System32/calc.exe
return


~Esc::
If WinActive("Microsoft Visual Studio") {
	send ^q
}
return

Media_Play_Pause::
Run dev\\clean-keyboard.ahk, , Hide UseErrorLevel, OutputVarPID
return

^+l::
Send {home}
Send, +{end}
Send ^c
StringLower, Clipboard, Clipboard
Clipboard := RegExReplace(Clipboard, "-", "_", out, -1, 1) 
Clipboard := RegExReplace(Clipboard, " ", "_", out, -1, 1) 
Clipboard := RegExReplace(Clipboard, "\.svg", "", out, -1, 1) 
Send ^v
return

^+u::
Send {home}
Send, +{end}
Send ^c
StringUpper, Clipboard, Clipboard
Send ^v
return