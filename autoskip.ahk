#Include prelude.ahk


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


#Include postlude.ahk
