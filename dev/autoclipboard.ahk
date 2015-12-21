;Auto copy clipboard
~Lshift::
TimeButtonDown = %A_TickCount%
; Wait for it to be released
Loop
{
   Sleep 10
   GetKeyState, LshiftState, Lshift, P
   if LshiftState = U  ; Button has been released.
      break
   elapsed = %A_TickCount%
   elapsed -= %TimeButtonDown%
   if elapsed > 200  ; Button was held down long enough
   {
      x0 = A_CaretX
      y0 = A_CaretY
      Loop
   {
     Sleep 20                    ; yield time to others
     GetKeyState keystate, Lshift
     IfEqual keystate, U, {
       x = A_CaretX
       y = A_CaretY
       break
     }
   }
   if (x-x0 > 5 or x-x0 < -5 or y-y0 > 5 or y-y0 < -5)
   {                             ; Caret has moved
      clip0 := ClipBoardAll      ; save old clipboard
      ;ClipBoard =
      Send ^c                    ; selection -> clipboard
      ClipWait 1, 1              ; restore clipboard if no data
      IfEqual ClipBoard,, SetEnv ClipBoard, %clip0%
   }
      return
   }
}

~LButton::
MouseGetPos, xx
TimeButtonDown = %A_TickCount%
; Wait for it to be released
Loop
{
   Sleep 10
   GetKeyState, LButtonState, LButton, P
   if LButtonState = U  ; Button has been released.
   {
      If WinActive("Crimson Editor") and (xx < 25) ; Single Click in the Selection Area of CE
      {
         Send, ^c
         return
      }
      break
   }
   elapsed = %A_TickCount%
   elapsed -= %TimeButtonDown%
   if elapsed > 200  ; Button was held down too long, so assume it's not a double-click.
   {
      MouseGetPos x0, y0            ; save start mouse position
      Loop
   {
     Sleep 20                    ; yield time to others
     GetKeyState keystate, LButton
     IfEqual keystate, U, {
       MouseGetPos x, y          ; position when button released
       break
     }
   }
   if (x-x0 > 5 or x-x0 < -5 or y-y0 > 5 or y-y0 < -5)
   {                             ; mouse has moved
      clip0 := ClipBoardAll      ; save old clipboard
      ;ClipBoard =
      Send ^c                    ; selection -> clipboard
      ClipWait 1, 1              ; restore clipboard if no data
      IfEqual ClipBoard,, SetEnv ClipBoard, %clip0%
   }
      return
   }
}
; Otherwise, button was released quickly enough.  Wait to see if it's a double-click:
TimeButtonUp = %A_TickCount%
Loop
{
   Sleep 10
   GetKeyState, LButtonState, LButton, P
   if LButtonState = D  ; Button has been pressed down again.
      break
   elapsed = %A_TickCount%
   elapsed -= %TimeButtonUp%
   if elapsed > 350  ; No click has occurred within the allowed time, so assume it's not a double-click.
      return
}

;Button pressed down again, it's at least a double-click
TimeButtonUp2 = %A_TickCount%
Loop
{
   Sleep 10
   GetKeyState, LButtonState2, LButton, P
   if LButtonState2 = U  ; Button has been released a 2nd time, let's see if it's a tripple-click.
      break
}
;Button released a 2nd time
TimeButtonUp3 = %A_TickCount%
Loop
{
   Sleep 10
   GetKeyState, LButtonState3, LButton, P
   if LButtonState3 = D  ; Button has been pressed down a 3rd time.
      break
   elapsed = %A_TickCount%
   elapsed -= %TimeButtonUp%
   if elapsed > 350  ; No click has occurred within the allowed time, so assume it's not a tripple-click.
   {  ;Double-click
      Send, ^c
      return
   }
}
;Tripple-click:
   Sleep, 100
   Send, ^c
return

~^a::Send, ^c ;Ctl+A = Select All, then Copy