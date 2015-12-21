
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
:*:comm]::git commit -m ""{left 1}
:*:commit]::git commit -m ""{left 1}
:*:merge]::git merge{enter}
; :*:push]::git push{enter}


:*:push]::
	Send git push{enter}
	KeyWait, ], D
	Send {bs}
	email := email()
	Send %email%{enter}
	KeyWait, ], D
	Send {bs}
	password := password()
	Send %password%{enter}
return

#IfWinActive

