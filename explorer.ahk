

#IfWinActive Awesome Duplicate

Numpad0::clickAndReturn(844,269)
r::clickAndReturn(844,269)
d::clickAndReturn(452,639)
f::clickAndReturn(1323,639)
space::down
b::up

#IfWinActive


#Include batch.ahk



#IfWinActive ahk_exe explorer.exe


; *$Shift::
; key = 0
; Input, key, L1 M
; SendInput {Shift Down}{%key%}{Shift Up}
; return

; for windows 7
; send !e{up}{enter}
; for windows 10
^+a::
send !hsi
return


; mozilla-like search input focus
^l::
Send {F4}
return

; new folder
^n::send ^+n
^+n::send ^n

; to make renaming files a little less annoying
~Tab::
~F2::
sel := GetSelection()
Send {Right}
ext := isFile(sel)
if (ext = false) {

}
else {
	Send {Left}
}
return

; duplicate (-ish)
^d::
Send ^c
Send ^v
Send up
return

; move selection up a directory
; !up (alt+up) moves up a directory
; backspace::send !{up}
^up::
Send ^x
Sleep, 20
; Send {BS}
send !{up}
Sleep, 20
Send {F5}
Sleep, 20
Send ^v
Sleep, 20
Send {shift Up}
return


; ^`::
; send !{up}
; return


; Batch File renaming

^[::
currentTab = 3
gosub BatchGUI
return

^]::
currentTab = 2
gosub BatchGUI
return

BatchGUI:
Gui, Batch: New
Gui, Add, Tab2, Choose%currentTab% Left, Affix|Replace|Quick
Gui, Add, Radio, vPlace, &Prefix
Gui, Add, Radio,, &Suffix
Gui, Add, Text,, Affix:
Gui, Add, Edit, vAffix
Gui, Tab, 2

hreplace :=
hwith :=
Loop, read, C:\\Users\\Matthew\\Documents\\history.dsv
{
	if (A_LoopReadLine = "") 
		continue
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
    	if (A_Index = 1) 
    		hreplace := A_LoopField "|" hreplace
    	if (A_Index = 2)
    		hwith := A_LoopField "|" hwith  
    }
}
StringTrimRight, hreplace, hreplace, 1
StringTrimRight, hwith, hwith, 1

hreplace := RemoveDuplicates(hreplace, Delimiter="|")
hwith := RemoveDuplicates(hwith, Delimiter="|")


Gui, Add, Text,, Replace:
Gui, Add, ComboBox, vReplace Simple, %hreplace%
Gui, Add, Text,, With:
Gui, Add, ComboBox, vWith Simple, %hwith%
Gui, Add, Checkbox, vOverwrite, Overwrite?
Gui, Tab, 3
Gui, Add, Button, gFlatten, Flatten
Gui, Add, Button, gUnderscore, Fix Underscores
Gui, Add, Button, gLowercase, Lower Case
Gui, Add, Button, gUppercase, Upper Case
Gui, Add, Button, gGithub, Github
Gui, Add, Button, gDroid, Droid
Gui, Tab
Gui, Add, Button, default xm gGo, OK
; Gui, -SysMenu +Owner
Gui, Show,, Batch


return






ButtonGo:
Go:
Gui, Submit
gosub selections
If (place and affix) {
	if (place = 1) {
		prefix := affix
		gosub prefix
	}
	if (place = 2) {
		suffix := affix
		gosub suffix
	}
}
If (replace) {
	FileAppend, %replace%\t%with%\n, C:\\Users\\Matthew\\Documents\\history.dsv
	if ErrorLevel
		MsgBox %ErrorLevel%
	gosub replacewith
}
return

Flatten:
Gui, Submit
gosub selections
gosub toflatten
return

Underscore:
Gui, Submit
gosub selections
gosub tounderscore
return

Lowercase:
Gui, Submit
gosub selections
gosub tolowercase
return

Uppercase:
Gui, Submit
gosub selections
gosub touppercase
return

Github:
Gui, Submit
gosub selections
gosub togithub
return

Droid:
Gui, Submit
gosub selections
gosub todroid
return

GuiClose:
GuiEscape: 
Gui, Cancel 
return





; ButtonLower:
; Gui, Submit
; MsgBox
; gosub tolowercase
; Gui, Destroy
; return
; ButtonUpper:
; Gui, Submit
; gosub touppercase
; Gui, Destroy
; return

; ; Activate window under mouse
; MouseGetPos,,,OutWin,OutCtrl
; WinActivate, ahk_id %OutWin%

; ; Store current active window, then reactivate it later
; WinGet, active_id, ID, A
; WinActivate, ahk_id %active_id%


#IfWinActive
