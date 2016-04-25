#SingleInstance Force

#Persistent
SetTimer, WatchCursor, 100
return

WatchCursor:
MouseGetPos, wx, wy, wid, wcontrol
WinGetTitle, wtitle, ahk_id %wid%
WinGetClass, wclass, ahk_id %wid%
ToolTip, x:%wx% y:%wy%
return
