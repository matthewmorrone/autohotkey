#InstallKeybdHook
#Persistent
SetWorkingDir 			%A_ScriptDir%
#SingleInstance 		force
#WinActivateForce
SetTitleMatchMode 		2




#Include util/util.ahk
#Include util/array.ahk
#Include util/range.ahk



While, 1 
{
	If WinExist("This is an unregistered copy")
	{
		WinActivate
		ControlClick, Cancel
	}
}

; #Include util/save.ahk


#IfWinActive, skip.ahk
SetTitleMatchMode, 2
$~^s::
txt := % "Reloading " . A_ScriptName
splashOn(txt, 1000)
Reload
Return
#IfWinActive
