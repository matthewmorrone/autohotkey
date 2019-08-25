




If WinActive(A_ScriptName) 
{
	SetTitleMatchMode, 2
	$~^s::
	txt := % "Reloading " . A_ScriptName
	splashOn(txt, 1000)
	Reload
	Return
}
