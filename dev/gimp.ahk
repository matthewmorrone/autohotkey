

; Loop
; {
; 	WinWaitNotActive, ahk_exe gimp-2.8.exe
; 	{
; 		MsgBox
; 		Send s
; 		WinWaitActive, ahk_exe gimp-2.8.exe
; 	}
; }






; #IfWinActive ahk_exe gimp-2.8.exe
#IfWinActive Set Image Canvas Size
~Space::
Send {tab 5}
Send {space}
Send {tab}
Send {down}
; Send {enter}

; Send {click 311, 244}
; Send {click 365, 8}
; Send {click 244, 550}
; Send {click 236, 533}
return

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