

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

; C:\Users\c-mmorrone\Downloads\ahk\autoload.ahk (ahk) - Sublime Text (UNREGISTERED)
; ahk_class PX_WINDOW_CLASS
; ahk_exe sublime_text.exe


SetTitleMatchMode, 2


#IfWinActive, .ahk
$~^s::
txt := % "Reloading " . A_ScriptName
splashOn(txt, 750)
Reload
return
#IfWinActive
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


