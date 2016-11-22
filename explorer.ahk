








; #IfWinActive ahk_class ExploreWClass|CabinetWClass
; #IfWinActive, ahk_class CabinetWClass
#IfWinActive ahk_exe explorer.exe

Backspace::
	ControlGet renamestatus,Visible,,Edit1,A
	ControlGetFocus focussed, A
	if(renamestatus!=1&&(focussed=”DirectUIHWND3″||focussed=SysTreeView321))
	{
		SendInput {Alt Down}{Up}{Alt Up}
	}
	else{
		Send {Backspace}
	}
return



^WheelDown::
Send {Ctrl Up}
Send {WheelDown}
Send {Ctrl Down}
return


^WheelUp::
Send {Ctrl Up}
Send {WheelUp}
Send {Ctrl Down}
return



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

; #c::
; Clipboard = ; Must be blank for detection to work.
; Send ^c
; ClipWait 2
; if ErrorLevel
; 	return
; Sort Clipboard
; coolTip(Clipboard, 2000)
; return


^w::
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
; ^d::
; Send ^c
; Send ^v
; ; Send up
; Send {F5}
; return

; move selection up a directory
; !up (alt+up) moves up a directory
; backspace::send !{up}
^up::
Send ^x
Sleep, 200
; Send {BS}
send !{up}
Sleep, 200
Send {F5}
Sleep, 200
Send ^v
Sleep, 200
Send {shift Up}
return


getPath() {
	gosub selections
	if (len = 1) {
		for key, item in sel {
			path := item.path
		}
	}
	return path
}


^d::
gosub selections
; ; #escapechar `
; ; #escapechar `

for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after = %OutFileName%
	after := RegExReplace(after, "(_\d+)?\."+OutExtension, "."+OutExtension, out, -1, 1)
	after := RegExReplace(after, " \((\d+)\)", "", out, -1, 1)
	FileCopy, %OutDir%\%befor%, %OutDir%\%after%, 0
	start := 2
	while ErrorLevel {
		after := RegExReplace(after, "(_\d+)?\."+OutExtension, "", out, -1, 1)
		FileCopy, %OutDir%\%befor%, %OutDir%\%after%_%start%.%OutExtension%, 0
		start++
	}
}

; ; #escapechar \
return

^s::
gosub selections
ind := 0
items := Array()
; ; #escapechar `
if (len = 2) {
	for item in sel {
		from := item.path
		SplitPath, from, OutFileName, OutPath, OutExtension, OutNameNoExt, OutDrive
		items[ind] := OutNameNoExt
		ind++
	}
	item1 := items[0]
	item2 := items[1]
	sleep 1000
	FileMove, %OutPath%\%item1%.png, %OutPath%\%item2%__temp__.png
	sleep 1000
	FileMove, %OutPath%\%item2%.png, %OutPath%\%item1%.png
	sleep 1000
	FileMove, %OutPath%\%item2%__temp__.png, %OutPath%\%item2%.png
}
; ; #escapechar \
return

; ^`::
; send !{up}
; return


; create new text file
#t::Send !fwt

; open 'cmd' in the current directory
#c::
Send !fr
WinActivate, Powershell
; OpenCmdInCurrent()
return




#IfWinActive





; ; Opens the command shell 'cmd' in the directory browsed in Explorer.
; ; Note: expecting to be run when the active window is Explorer.
; OpenCmdInCurrent()
; {
; 	; This is required to get the full path of the file from the address bar
; 	WinGetText, full_path, A

; 	; Split on newline (`n)
; 	StringSplit, word_array, full_path, `n

; 	; Find and take the element from the array that contains address
; 	Loop, %word_array0%
; 	{
; 		IfInString, word_array%A_Index%, Address
; 		{
; 			full_path := word_array%A_Index%
; 			break
; 		}
; 	}

; 	; strip to bare address
; 	full_path := RegExReplace(full_path, "^Address: ", "")

; 	; Just in case - remove all carriage returns (`r)
; 	StringReplace, full_path, full_path, `r, , all

; 	IfInString full_path, `\
; 	{
; 		Run,  cmd /K cd /D "%full_path%"
; 	}
; 	else
; 	{
; 		Run, cmd /K cd /D "C:\ "
; 	}
; }
