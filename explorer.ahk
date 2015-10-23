; ahk_class CabinetWClass
; ahk_exe explorer.exe
; #IfWinActive ahk_class ExploreWClass
#IfWinActive ahk_class CabinetWClass
;#IfWinActive ahk_exe explorer.exe

; mozilla-like search input focus
^l::
Send {F4}
return

; new folder (can't have something selected, different context menu)
$^n::
send {AppsKey}wf
return

; shortcut for zipping folder, careful not to move mouse
#z::
Click, Right
Send, {DOWN 16}{right}{down 1}{enter}
Sleep, 500
Send, {enter}
return

; to make renaming files a little less annoying
~F2::
Send {Right}
Send {Left}
return

; duplicate (-ish)
^d::
Send ^c
Send ^v
Send up
return

; move selection up a directory
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

#IfWinActive
