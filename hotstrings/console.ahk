



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

#Hotstring C ? *

::init]::git init{enter}
::stat]::git status -s{enter}
::diff]::git diff{enter}
::add]::git add --all{enter}
::comm]::git commit -m ""{left 1}
::commit]::git commit -m ""{left 1}
::pull]::git pull{enter}
; ::merge]::git merge{enter}
::merge]::git commit -a -m "automated merge message"{enter}


name := username("n")
email := username("e")
github := username("g")
password := password(4)

::init]::
	InputBox, repo, "New Github Repo", "Repo name?", , , , , , , ;, "-"
	Send git init %repo%{enter}
	Send cd %repo%{enter}
	Send git remote add origin %github%%repo%{enter}
	Send git push --set-upstream origin master{enter}
	Send %email%{enter}
	Send %password%{enter}
return
::clone]::
	Send, git clone --depth=1 http://www.github.com/matthewmorrone1/
return
::name]::
	name := username("n")
	Send, git config --global user.name %name%{enter}
return
::email]::
	email := username("e")
	Send, git config --global user.email %email%{enter}
return
::simple]::
	Send, git config --global push.default simple{enter}
return
::config]::
	name := username("n")
	email := username("e")
	Send, git config --global user.name %name%{enter}git config --global user.email %email%{enter}git config --global push.default simple{enter}
return
::push]::
	email := username("e")
	password := password(0)
	Send git push{enter}
	KeyWait, ], D
	Send {bs}
	Send %email%{enter}
	KeyWait, ], D
	Send {bs}
	Send %password%{enter}
Return

#Hotstring C0 ?0 *0



#IfWinActive








