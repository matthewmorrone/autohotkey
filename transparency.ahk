#T::
DetectHiddenWindows, on
WinGet, curtrans, Transparent, A
if ! curtrans
    curtrans = 255
newtrans := curtrans - 64
if newtrans > 0
{
    WinSet, Transparent, %newtrans%, A

}
else
{
    WinSet, Transparent, 255, A
    WinSet, Transparent, OFF, A
}
return

#w::
DetectHiddenWindows, on
WinSet, TransColor, Black 128, A
return

#o::
WinSet, Transparent, 255, A
WinSet, Transparent, OFF, A
return

#g::  ; Press Win+G to show the current settings of the window under the mouse.
MouseGetPos,,, MouseWin
WinGet, Transparent, Transparent, ahk_id %MouseWin%
WinGet, TransColor, TransColor, ahk_id %MouseWin%
ToolTip Translucency:`t%Transparent%`nTransColor:`t%TransColor%
return