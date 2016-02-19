; ahk_class CabinetWClass
; ahk_exe explorer.exe
; #IfWinActive ahk_class ExploreWClass
; #IfWinActive ahk_class CabinetWClass



#IfWinActive ahk_exe explorer.exe

; this is different on windows 10
^+a::
send !e{up}{enter}
return

; mozilla-like search input focus
^l::
Send {F4}
return

; new folder
^n::send ^+n
^+n::send ^n


; ; shortcut for zipping folder, careful not to move mouse
#z::
Send, {SC15D}{DOWN 4}{enter}
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

^`::
send !{up}
return

^\::
#EscapeChar `
InputBox, replace, "Incremental Replace", "Replace?", , , , , , , ;, "-"
with :=
len := 0
ind := 0
sel := GetSelections()
for item in sel {
    len++
}
if (len = 0) {
	send ^a
	sel := GetSelections()
}
Sort, sel
for item in sel {
	ind++
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	with := StrPad(A_Index, 0, 3)
	after := RegExReplace(befor, replace, with, out, -1, 1)
	; MsgBox %after%`n%befor%`n%replace%`n%with%`n%out%`n%ind%

	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
}
#EscapeChar \
return

^[::
#EscapeChar `
InputBox, replace, "Remove", "Remove?", , , , , , , ;, "-"
with :=
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
	after := RegExReplace(befor, replace, with, out, -1, 1)
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
}
#EscapeChar \
return

![::
#EscapeChar `
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
	; after := RegExReplace(befor, replace, with, out, -1, 1)
	StringLower, after, befor
	; MsgBox %after% %befor%
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
}
#EscapeChar \
return

^]::
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
	after := RegExReplace(befor, replace, with, out, -1, 1)
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
}
#EscapeChar \
return


^+[::
#EscapeChar `
len := 0
sel := GetSelections()
for item in sel {
    len++
}
if (len = 0) {
	send ^a
	sel := GetSelections()
}
InputBox, prefix, "Prefix", "Prefix?", , , , , , , ;, "-"
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutDir%\%OutFileName%
	after = %OutDir%\%Prefix%%OutFileName%
	FileMove, %befor%, %after%, 1
}
#EscapeChar \
return

^+]::
#EscapeChar `
len := 0
sel := GetSelections()
for item in sel {
    len++
}
if (len = 0) {
	send ^a
	sel := GetSelections()
}
InputBox, suffix, "Suffix", "Suffix?", , , , , , , ;, "-"
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutDir%\%OutFileName%
	after = %OutDir%\%OutFileName%%Suffix%
	FileMove, %befor%, %after%, 1
}
#EscapeChar \
return

; ; remove -master and/or -gh-pages affix from folders and zip files
^+\::
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
	StringRight, post3, from, 9
	if (post1 = "-master") {
		StringLeft, to, from, strlen(from)-7
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		FileMoveDir, %from%, %to%, R
	}
	else if (post2 = "-master.zip") {
		StringLeft, to, from, strlen(from)-11
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		to := to . ".zip"
		FileMove, %from%, %to%, 1
	}
	else if (post3 = "-gh-pages") {
		StringLeft, to, from, strlen(from)-9
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		FileMoveDir, %from%, %to%, R
	}
}
if (len = 0) {
	send ^a
}
return



#IfWinActive



; ; Activate window under mouse
; MouseGetPos,,,OutWin,OutCtrl
; WinActivate, ahk_id %OutWin%

; ; Store current active window, then reactivate it later
; WinGet, active_id, ID, A
; WinActivate, ahk_id %active_id%

