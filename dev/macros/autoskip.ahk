




#Persistent
#WinActivateForce
#SingleInstance, force
SetTitleMatchMode 2
Menu, tray, icon, ico/psi_red.ico, , 1


; autoskip annoying dialogs
While, 1
{
; If WinExist("WinMerge ahk_class #32770")
; {
; WinActivate,
; ControlClick, Ok
; ControlClick, Yes
; }
; If WinExist("Undo Pending Changes")
; {
; WinActivate,
; ControlClick, Undo Changes
; }
; If WinExist("Confirm Undo Checkout")
; {
; WinActivate,
; Sleep,250
; ControlClick, Yes to All
; }
; If WinExist("Delete Multiple Items")
; {
; WinActivate,
; ControlClick, Yes
; }


IfWinExist, Close ahk_exe gimp-2.8.exe
{
	WinActivate,
	; ControlClick, Discard Changes
	ControlGet, List, List
	Loop, Parse, List, `n  ; Rows are delimited by linefeeds (`n).
	{
	    RowNumber := A_Index
	    Loop, Parse, A_LoopField, %A_Tab%  ; Fields (columns) in each row are delimited by tabs (A_Tab).
	        MsgBox Row #%RowNumber% Col #%A_Index% is %A_LoopField%.
	}
	; Loop, Parse, List, `n
		; MsgBox Item number %A_Index% is %A_LoopField%.
}


; [planets_astronomy_cosmos_view_science_512] (overwritten)
; ahk_class gdkWindowToplevel
; 


; IfWinExist, Microsoft SQL Server Management Studio ahk_class #32770
; {
; WinActivate,
; ControlClick, No
; }
; IfWinExist, Welcome to SketchUp
; {
; WinActivate,
; ControlClick, Start using SketchUp
; }
; If WinExist("Rename")
; {
; WinActivate,
; ControlClick, Yes
; }
; If WinExist("User Account Control")
; {
; WinActivate,
; ControlClick, Yes
; }
; If WinExist("Open File - Security Warning")
; {
; WinActivate,
; ControlClick, Button4
; ControlClick, Run
; }
; If WinExist("Unregistered copy")
; {
; WinActivate,
; ControlClick, Cancel
; }
}

#Include util.ahk
#Include autosave.ahk

