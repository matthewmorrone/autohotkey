;
; AutoHotkey Version: 1.x
; Language:       English
; Author:         Lowell Heddings | geek@howtogeek.com
;
; Script Function:
;	enable paste in the Windows command prompt
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#IfWinActive ahk_class ConsoleWindowClass
^V::
SendInput {Raw}%clipboard%
return
#IfWinActive

