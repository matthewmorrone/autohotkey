SetTitleMatchMode, 2
#Include util/util.ahk


While, 1
{
	; WinWaitActive, Rename ahk_class #32770
	WinWait, ahk_class OperationStatusWindow
	WinActivate
	send {space}
}



#IfWinActive, .ahk
$~^s::
txt := % "Reloading " . A_ScriptName
splashOn(txt, 1000)
Reload
Return
#IfWinActive
