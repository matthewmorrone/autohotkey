; #IncludeAgain passwords.ahk
#IncludeAgain prelude.ahk

#SingleInstance, force


#Persistent
SetTimer, CloseMailWarnings, 250
return
CloseMailWarnings:
WinClose, Microsoft Outlook, A timeout occured while communicating
WinClose, Microsoft Outlook, A connection to the server could not be established
return

; autoskip annoying dialogs
While, 1
{
If WinExist("WinMerge ahk_class #32770")
{
WinActivate,
ControlClick, Ok
ControlClick, Yes
}
If WinExist("Undo Pending Changes")
{
WinActivate,
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
ControlClick, Yes
}
IfWinExist, Microsoft SQL Server Management Studio ahk_class #32770
{
WinActivate,
ControlClick, No
}
IfWinExist, Welcome to SketchUp
{
WinActivate,
ControlClick, Start using SketchUp
}
If WinExist("Rename")
{
WinActivate,
ControlClick, Yes
}
If WinExist("User Account Control")
{
WinActivate,
ControlClick, Yes
}
If WinExist("Open File - Security Warning")
{
WinActivate,
ControlClick, Button4
ControlClick, Run
}
If WinExist("Unregistered copy")
{
WinActivate,
ControlClick, Cancel
}
}




#Include postlude.ahk
