
SetTitleMatchMode, 2
#IfWinActive, .ahk
$~^s::
txt := % "Reloading " . A_ScriptName
splashOn(txt, 750)
Reload
return
#IfWinActive
