;
; AutoHotkey Version: 1.x
; Language:       English
; Author:         Lowell Heddings <geek@howtogeek.com>
; Website:	  http://www.howtogeek.com
; Script Function:
;	Enable scrolling in the command prompt!
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_class ConsoleWindowClass
+PgUp::
Send {WheelUp} 
Return 

+PgDn::
Send {WheelDown}
Return 

^Up:: 
Send {WheelUp}
Return 

^Down:: 
Send {WheelDown} 
Return 

#IfWinActive
