

; Loop
; {
; 	WinWaitNotActive, ahk_exe gimp-2.8.exe
; 	{
; 		MsgBox
; 		Send s
; 		WinWaitActive, ahk_exe gimp-2.8.exe
; 	}
; }






#IfWinActive ahk_exe gimp-2.8.exe


; ~i::
; send 4
; send i

; return

; 
; Space::

; Send n
; Sleep, 250
; Send s
; Sleep, 250
; Send t
; Sleep, 50

; return

#IfWinActive