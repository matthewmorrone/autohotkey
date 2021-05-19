;Moves the active window from one monitor to the other. Similar to JumpWin.exe, but that stopped working for me for some reason.
;Based on Thalon's code at http://www.autohotkey.com/forum/topic19440.html  [Jon Aquino 2008-09-17]

leftMonitorWidth = 1400
leftMonitorHeight = 1050
rightMonitorWidth = 1920
rightMonitorHeight = 1200

^!q::    ;Default hotkey is Ctrl+Alt+Q
activeWindow := WinActive("A")
if activeWindow = 0
{
    return
}
WinGet, minMax, MinMax, ahk_id %activeWindow%
if minMax = 1
{
    WinRestore, ahk_id %activeWindow%
}
WinGetPos, x, y, width, height, ahk_id %activeWindow%
if x < 0
{
    xScale := rightMonitorWidth / leftMonitorWidth
    yScale := rightMonitorHeight / leftMonitorHeight
    x := leftMonitorWidth + x
    newX := x * xScale
    newY := y * yScale
    newWidth := width * xScale
    newHeight := height * yScale
}
else
{
    xScale := leftMonitorWidth / rightMonitorWidth
    yScale := leftMonitorHeight / rightMonitorHeight
    newX := x * xScale
    newY := y * yScale
    newWidth := width * xScale
    newHeight := height * yScale
    newX := newX - leftMonitorWidth
}
WinMove, ahk_id %activeWindow%, , %newX%, %newY%, %newWidth%, %newHeight%
if minMax = 1
{
    WinMaximize, ahk_id %activeWindow%
}
WinActivate ahk_id %activeWindow%   ;Needed - otherwise another window may overlap it
return

winshell_swapScreen(windowTitle := "A") {
    global screenLeftMonitorWidth
    global screenLeftMonitorHeight
    global screenRightMonitorWidth
    global screenRightMonitorHeight

    activeWindow := WinActive(windowTitle)
    borderThreshold := -10
    if activeWindow = 0
    {
        return
    }
    WinGet, minMax, MinMax, ahk_id %activeWindow%
    WinGetPos, x, y, width, height, ahk_id %activeWindow%

    if (minMax = 1) {
        ; WinRestore, ahk_id %activeWindow%
        ; a maximized window has x,y = -8,-8 on Windows 8
        newY := y
        if (x > borderThreshold) {
            newX := x - screenLeftMonitorWidth
            newWidth := screenLeftMonitorWidth   - screenRightMonitorWidth  + width
            newHeight := screenLeftMonitorHeight - screenRightMonitorHeight + height
        } else {
            newX := x + screenLeftMonitorWidth
            newWidth := screenRightMonitorWidth   - screenLeftMonitorWidth  + width
            newHeight := screenRightMonitorHeight - screenLeftMonitorHeight + height
        }
    } else {
        WinGetPos, x, y, width, height, ahk_id %activeWindow%
        if (x > borderThreshold) {
            xScale := screenLeftMonitorWidth / screenRightMonitorWidth
            yScale := screenLeftMonitorHeight / screenRightMonitorHeight
            newX := x * xScale
            newY := y * yScale
            newWidth := width * xScale
            newHeight := height * yScale
            newX := newX - screenLeftMonitorWidth
        } else {
            xScale := screenRightMonitorWidth / screenLeftMonitorWidth
            yScale := screenRightMonitorHeight / screenLeftMonitorHeight
            x := screenLeftMonitorWidth + x
            newX := x * xScale
            newY := y * yScale
            newWidth := width * xScale
            newHeight := height * yScale
        }
    }
    WinMove, ahk_id %activeWindow%, , %newX%, %newY%, %newWidth%, %newHeight%
    /*
    if (minMax = 1) {
        WinMaximize, ahk_id %activeWindow%
    }
    */
    WinActivate ahk_id %activeWindow%  ;Needed - otherwise another window may overlap it
    return
}
