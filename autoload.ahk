; auto reload on save ($?)
~^s::
; IfWinActive, %A_ScriptName%
IfWinActive, autohotkey
{
; SplashTextOn,,,Reloading %A_ScriptName%,
SplashTextOn,,,Reloading
Sleep,500
SplashTextOff
Reload
}
Else
{
Send {^s}
}
return
