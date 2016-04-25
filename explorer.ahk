

#IfWinActive ahk_exe explorer.exe

; for windows 10
^+a::
send !hsi
return
; for windows 7
; ^+a::
; send !e{up}{enter}
; return

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





; Batch File renaming

^\::
gosub increment
return

; ![::
; gosub remove
; return

^[::
gosub tolowercase
return

^]::
gosub replacewith
return

^+[::
gosub prefix
return

^+]::
gosub suffix
return

^+\::
gosub github
return



F4::
#EscapeChar `
gosub selections
gosub tolowercase

gosub selections
gosub droidresource
#EscapeChar \
return

#IfWinActive



; ; Activate window under mouse
; MouseGetPos,,,OutWin,OutCtrl
; WinActivate, ahk_id %OutWin%

; ; Store current active window, then reactivate it later
; WinGet, active_id, ID, A
; WinActivate, ahk_id %active_id%

