^e::
SetFormat Integer, D
Send, ^c
n := clipboard
n := n + 0
clipboard := n
Send, ^v
SetFormat Integer, D

; SetFormat Integer, D
; X:= 0x11 17 17
; SetFormat Integer, H
return


; ^e::
; Send ^c
; Clipboard := Format("{1:d}", "0x"+Clipboard) ;"0x"+
; Send ^v
; return
