
; conveniences

; CL = false
; ~CapsLock::
; 	Send {enter}
; 	CL = !CL
; return



; my left mouse button was broken once, now I can't un-get used to it
; LButton::Click right
; RButton::Click

; script assumes mouse buttons are swapped in control panel


; my left mouse button was broken once, now I can't un-get used to it
; LButton::Click right
; RButton::Click

; script assumes mouse buttons are swapped in control panel


; RButton::Click Left
; RButton::return
; XButton1::Click Right
; MButton::Click Right

; MButton & XButton1::
; 	send {^a}
; return

; use extra mouse buttons for cut and copy
; XButton1::
; Sleep, 20
; Send ^x
; return
; ^XButton1::
; Click 3
; Sleep, 20
; Send ^x
; return

; XButton2::
; Sleep, 20
; Send ^c
; return
; ^XButton2::
; Click 3
; Sleep, 20
; Send ^c
; return

; ; paste
; XButton1 & XButton2::
; XButton2 & XButton1::
; GetKeyState, state, Ctrl
; if state = D
;     click 1
; Sleep, 20
; Send ^v
; return

; duplicate a file
; ^d::
; Send ^c
; Sleep, 20
; Send ^v
; return

; enter by clicking both mouse buttons
; ~LButton & RButton::
; ~RButton & LButton::
; send {enter}
