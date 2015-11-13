
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

^v::
SendInput {Raw}%clipboard%
return
#IfWinActive

#IfWinActive, PowerShell

:*:clone]::git clone http://www.github.com/matthewmorrone1/

:*:stat]::git status -s{enter}
:*:diff]::git diff{enter}

:*:add]::git add --all{enter}
:*:commit]::git commit -m ""{left 1}
:*:push]::
	SendRaw git push
	Send {enter}
; 	Sleep,1000
; 	Send %email%{enter}
; 	Sleep,1000
; 	Send %password%{enter}
return

#IfWinActive