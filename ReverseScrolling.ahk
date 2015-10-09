; Reverse Scrolling Script by How-To Geek

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WheelUp::
 Send {WheelDown}
Return

WheelDown::
 Send {WheelUp}
Return