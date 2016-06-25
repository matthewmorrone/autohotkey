; ^WheelUp::  ; Scroll left.
; 	ControlGetFocus, FocusedControl, A
; 	Loop 4
; 		SendMessage, 0x114, 0, 0, %FocusedControl%, A  ; 0x114 is WM_HSCROLL ; 1 vs. 0 causes SB_LINEDOWN vs. UP
; return
; ^WheelDown::  ; Scroll right.
; 	ControlGetFocus, FocusedControl, A
; 	Loop 4
; 		SendMessage, 0x114, 1, 0, %FocusedControl%, A  ; 0x114 is WM_HSCROLL ; 1 vs. 0 causes SB_LINEDOWN vs. UP
; return

; ; turn off zoom scroll
; ^WheelDown::Return
; ^WheelUp::Return



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

#IfWinActive

