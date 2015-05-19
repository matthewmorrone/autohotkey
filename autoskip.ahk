
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



SetTitleMatchMode 2

; autoskip annoying dialogs
While, 1
{
If WinExist("WinMerge ahk_class #32770")
{
WinActivate, 
; Sleep,250
ControlClick, Ok
ControlClick, Yes
}
If WinExist("Undo Pending Changes")
{
WinActivate, 
; Sleep,250
ControlClick, Undo Changes
}
If WinExist("Confirm Undo Checkout")
{
WinActivate, 
Sleep,250
ControlClick, Yes to All
}
If WinExist("Delete Multiple Items")
{
WinActivate, 
; Sleep,250
ControlClick, Yes
}
IfWinExist, Microsoft SQL Server Management Studio ahk_class #32770
{
WinActivate, 
; Sleep,250
ControlClick, No
}
If WinExist("Rename")
{
WinActivate, 
; Sleep,250
ControlClick, Yes
}
}





; auto reload on save
~^s::
SetTitleMatchMode 2
IfWinActive, %A_ScriptName%
{
SplashTextOn,,,Reloading %A_ScriptName%,
Sleep,500
SplashTextOff
Reload
}
return

