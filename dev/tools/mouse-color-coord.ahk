#SingleInstance force
menu, tray, add 
menu, tray, add, Made By Sanctus, MadeBy
Menu, Tray, Tip, PositionInfo v1.03`nMade by Sanctus
return

!x::
MouseGetPos, PosX, PosY
PixelGetColor, cRGB , %PosX%, %PosY%,RGB
PixelGetColor, cBGR , %PosX%, %PosY%
WinGetPos,,, w, h, A
gui, new
gui, Default
gui, +LastFound +LabelMyGui
gui, add, groupbox, w205 h330, Info found at Mouse Position
gui, font, s12, Arial
gui, add, text, xm12 ym20 section, MousePos X: 
gui, add, text, xp+110 yp, %PosX%
gui, add, text, xp-110 yp+15, MousePos Y: 
gui, add, text, xp+110 yp, %PosY%
gui, add, text, xp-110 yp+15, BGR Colour: 
gui, add, text, xp+110 yp, %cBGR%
gui, add, text, xp-110 yp+15, RGB Colour: 
gui, add, text, xp+110 yp, %cRGB%
gui, font, s8, Arial
gui, add, button, xp-70 yp+17.5 w100 h20 gClip, Copy X and Y
gui, add, button, xp yp+20.5 w100 h20 gClipColor, Copy Colour
gui, font, s12, Arial
gui, add, button, xp+30 yp+25 gDone, OK
gui, add, Progress, xp-7.5 yp+35 w50 h50 c%cRGB%,100
gui, font, s10, Verdana
gui, add, text, yp+40 xp-65, Version: 1.03 (31.03.2014)
gui, add, text, xp+10 yp+20.5, Window Size: %w% x %h%
gui, add, button, xp-10 yp+20.5 w180 h20 gWS, Copy Window Size
gui, add, button, xp yp+20.5 w180 h20 gARF, Copy ARFormula
gui, add, button, xp yp+20.5 w180 h40 gARFB, Copy ARFormula with Border Calculations
gui, show,, Position/Colour of X&Y
return
Done:
{
gui,submit,nohide
gui, destroy
return
}
Clip:
{
clipboard = %PosX% %PosY%
return
}
ClipColor:
{
clipboard = %cBGR%
return
}
WS:
{
clipboard = %w% %h%
return
}
ARF:
{
clipboard = % "% Round(" . PosX . " / (" . w . " / w)) % Round(" . PosY . " / (" . h . " / h))"
return	
}
ARFB:
{
clipboard = % "% Round(" . PosX . " / (" . w . " / (w - i))) + l % Round(" . PosY . " / (" . h . " / (h - j))) + k"
return	
}
return

MadeBy:
Run http://tus.web1337.net/
return

F7::Reload
F8::ExitApp