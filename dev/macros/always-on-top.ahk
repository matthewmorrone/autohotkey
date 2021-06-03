^MButton::
MouseGetPos, x, y, win
WinGet, ExStyle, ExStyle, ahk_id %win%
If (ExStyle & 0x8) {
    ExStyle = AlwaysOnTop
}
Else {
    ExStyle = Not AlwaysOnTop
}
msgbox % ExStyle
return