showHidden=0

#H::
	WinGetActiveTitle, WinTitle
	WinGetClass, WinClass, %WinTitle%
	If WinClass <> CabinetWClass
		If WinClass <> ExploreWClass
			Return
	Send, !T
	Sleep, 100
	Send, o
	WinWaitActive, Folder Options,,5
	if ErrorLevel = 1
		Return
	Send, ^{Tab}
	Sleep, 50
	Send, {Tab}{Tab}
	Sleep, 50
	If showHidden  = 0
	{
		showHidden = 1
		Send, {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}
	}
	Else
	{
		showHidden = 0
		Send, {Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}{Down}
	}
	sleep, 50
	Send, {Space}
	Send, {Tab}{Tab}{Enter}
Return