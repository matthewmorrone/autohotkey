;
; AutoHotkey Version: 1.x
; Author:         Lowell Heddings (geek@howtogeek.com)
;
; Script Function: Automatic Insert Hyperlink Feature
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!9::
{
  Sleep, 100
  clipurl := clipboard
  Send ^c
  Sleep, 50
  clipurl := "<a href=""" . clipurl . """>" . clipboard . "</a>"
  SendInput {Raw}%clipurl%
  clipboard := clipurl
  clipurl =;
  Return
}



