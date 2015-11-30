
SetTitleMatchMode, 2
#IfWinActive, .ahk
$~^s::
txt := % "Reloading " . A_ScriptName
splashOn(txt, 1000)
Reload
return
#IfWinActive
