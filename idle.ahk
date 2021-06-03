
MButton::
SetTimer, StayAwake, % (AwakeToggle:=!AwakeToggle) ? 1000 : "Off"
if (AwakeToggle) {
    MsgBox, 4, , Stay Awake Activated, 1
}
else {
    MsgBox, 4, , Stay Awake Deactivated, 1
}
return

StayAwake:
If (A_TimeIdle > 60000) {
    goto Jiggle
}
return

Jiggle:
MouseMove,   50, 0, 2, R
MouseMove, -100, 0, 2, R
MouseMove,  100, 0, 2, R
MouseMove, -100, 0, 2, R
MouseMove,  100, 0, 2, R
MouseMove,  -50, 0, 2, R
goto Jump2
goto ActivateWinUM
return
