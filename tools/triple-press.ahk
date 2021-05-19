; Example #3: Detection of single, double, and triple-presses of a hotkey. This
; allows a hotkey to perform a different operation depending on how many times
; you press it:
#c::
if winc_presses > 0 ; SetTimer already started, so we log the keypress instead.
{
    winc_presses += 1
    return
}
; Otherwise, this is the first press of a new series. Set count to 1 and start
; the timer:
winc_presses = 1
SetTimer, KeyWinC, 400 ; Wait for more presses within a 400 millisecond window.
return

KeyWinC:
SetTimer, KeyWinC, off
if winc_presses = 1 ; The key was pressed once.
{
    Run, m:\  ; Open a folder.
}
else if winc_presses = 2 ; The key was pressed twice.
{
    Run, m:\multimedia  ; Open a different folder.
}
else if winc_presses > 2
{
    MsgBox, Three or more clicks detected.
}
; Regardless of which action above was triggered, reset the count to
; prepare for the next series of presses:
winc_presses = 0
