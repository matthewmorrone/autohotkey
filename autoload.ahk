; auto reload on save ($?)
~^s::
; IfWinActive, %A_ScriptName%
IfWinActive, .ahk
{
SplashTextOn,,,Reloading %A_ScriptName%,
Sleep,500
SplashTextOff
Reload
}
Else
{
Send {^s}
}
return
