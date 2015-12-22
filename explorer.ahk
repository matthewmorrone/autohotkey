; ahk_class CabinetWClass
; ahk_exe explorer.exe
; #IfWinActive ahk_class ExploreWClass
; #IfWinActive ahk_class CabinetWClass



#IfWinActive ahk_exe explorer.exe


^+a::
send !e{up}{enter}
return
; ^+a::
; send !e{up 2}{enter}
; return
; ^a::
; send !e{up}{enter}
; return

; mozilla-like search input focus
^l::
Send {F4}
return

; new folder (can't have something selected, different context menu)
^n::send {AppsKey}wf
~^+n::send {^n}


; ; shortcut for zipping folder, careful not to move mouse
#z::
Click, Right
Send, {DOWN 9}
Send, {right}
Send, {enter}
return

; to make renaming files a little less annoying
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
^up::
Send ^x
Sleep, 20
Send {BS}
Sleep, 20
Send {F5}
Sleep, 20
Send ^v
Sleep, 20
Send {shift Up}
return







^[::
#EscapeChar `
InputBox, prefix, "Prefix", "Prefix?", , , , , , , ;, "-"
len := 0
sel := GetSelections()
for item in sel {
    len++
}
if (len = 0) {
	send ^a
	sel := GetSelections()
}
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutDir%\%OutFileName%
	after = %OutDir%\%Prefix%%OutFileName%
	FileMove, %befor%, %after%, 1
}
#EscapeChar \
return

^]::
#EscapeChar `
InputBox, suffix, "Suffix", "Suffix?", , , , , , , ;, "-"
len := 0
sel := GetSelections()
for item in sel {
    len++
}
if (len = 0) {
	send ^a
	sel := GetSelections()
}
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutDir%\%OutFileName%
	after = %OutDir%\%OutFileName%%Suffix%
	FileMove, %befor%, %after%, 1
}
#EscapeChar \
return


; remove -master affix from folders and zip files
^+[::
len := 0
sel := GetSelections()
for item in sel {
    len++
}
if (len = 0) {
	send ^a
	sel := GetSelections()
}
arr := Array()
for item in sel {
	from := item.path
	StringRight, post1, from, 7
	StringRight, post2, from, 11
	if (post2 = "-master.zip") {
		StringLeft, to, from, strlen(from)-11
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		to := to . ".zip"
		FileMove, %from%, %to%, 1
	}
	else if (post1 = "-master") {
		StringLeft, to, from, strlen(from)-7
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		FileMoveDir, %from%, %to%, R
	}
}
if (len = 0) {
	send ^a
}
return




^+]::
#EscapeChar `
InputBox, replace, "Replace", "Replace?", , , , , , , ;, "-"
InputBox, with, "With", "With?", , , , , , , ;, "-"
len := 0
sel := GetSelections()
for item in sel {
    len++
}
if (len = 0) {
	send ^a
	sel := GetSelections()
}
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after := StrReplace(befor, replace, with, , -1) 
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
}
#EscapeChar \



return


#IfWinActive



; ; Activate window under mouse
; MouseGetPos,,,OutWin,OutCtrl
; WinActivate, ahk_id %OutWin%

; ; Store current active window, then reactivate it later
; WinGet, active_id, ID, A
; WinActivate, ahk_id %active_id%

