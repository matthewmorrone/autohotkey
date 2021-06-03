


#IfWinActive ahk_exe explorer.exe

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

^+a::
send !hsi
return

^w::
return

; new folder
^n::send ^+n
^+n::send ^n

#IfWinActive



; duplicate a file
^d::
Send ^c
Sleep, 20
Send ^v
return



#IfWinActive ahk_exe explorer.exe

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

#c::
Clipboard = ; Must be blank for detection to work.
Send ^c
ClipWait 2
if ErrorLevel
    return
Sort Clipboard
coolTip(Clipboard, 2000)
return


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
; ~F2::
; sel := GetSelection()
; Send {Right}
; ext := isFile(sel)
; if (ext = false) {

; }
; else {
; 	Send {Left}
; }
; return

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

^d::
gosub selections
#EscapeChar `
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after = %OutFileName%
	after := RegExReplace(after, "(_\d+)?\.(\w+)", "."+OutExtension, out, -1, 1)
	after := RegExReplace(after, " \((\d+)\)", "", out, -1, 1)
	FileCopy, %OutDir%\%befor%, %OutDir%\%after%, 0
	start := 2
	while ErrorLevel {
		after := RegExReplace(after, "(_\d+)?\."+OutExtension, "", out, -1, 1)
		FileCopy, %OutDir%\%befor%, %OutDir%\%after%_%start%.%OutExtension%, 0
		start++
	}
}
#EscapeChar \
return

^s::
gosub selections
ind := 0
items := Array()
#EscapeChar `
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
#EscapeChar \
return


#IfWinActive
