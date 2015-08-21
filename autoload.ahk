

; auto reload on save ($?)
; ~^s::
; ; IfWinActive, %A_ScriptName%
; IfWinActive, .ahk
; {
; SplashTextOn,,,Reloading %A_ScriptName%,
; Sleep,500
; SplashTextOff
; Reload
; }
; Else
; {
; Send {^s}
; }
; return


SetTitleMatchMode, 2
$~^s::
SplashTextOn,,,Reloading %A_ScriptName%,
Sleep,500
SplashTextOff
Reload
return

; #IfWinActive Sublime Text
; ; ^r::
; ~^s::
;     WinGetActiveTitle, title
;     SplitPath, title, handle, dir, ext, name, drive
;     FoundPos := RegExMatch(title, "\.ahk")
;     If (FoundPos > 0) {
;     	SplashTextOn,,,Loading all.ahk,
; 		Sleep,500
; 		SplashTextOff
;     	Run, all.ahk
;     }

; 	; WinActivate ahk_id %winid% ; <-- correct
; return
; ; ^!r::Reload
; #IfWinActive


