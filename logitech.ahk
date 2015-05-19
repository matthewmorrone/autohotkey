; move cursor with keys
   *#Up::MouseMove,   0, -20, 0, R  ; Win+UpArrow    => Move cursor upward
 *#Down::MouseMove,   0,  20, 0, R  ; Win+DownArrow  => Move cursor downward
 *#Left::MouseMove, -20,   0, 0, R  ; Win+LeftArrow  => Move cursor to the left
*#Right::MouseMove,  20,   0, 0, R  ; Win+RightArrow => Move cursor to the right



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


; auto reload on save ($?)
~^s::
IfWinActive, %A_ScriptName%
{
SplashTextOn,,,Reloading %A_ScriptName%,
Sleep,500
SplashTextOff
Reload
}
Else
{
Send {^s} 
}
return