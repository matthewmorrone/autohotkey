
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

#Hotstring *

::init]::
	InputBox, repo, "New Github Repo", "Repo name?", , , , , , , ;, "-"

	Send git init %repo%{enter}
	Send cd %repo%{enter}
	Send git remote add origin http://www.github.com/matthewmorrone1/%repo%{enter}
	Send git push --set-upstream origin master{enter}	
	email := email()
	Send %email%{enter}
	password := password()
	Send %password%{enter}
return

::clone]::git clone --depth=1 http://www.github.com/matthewmorrone1/
::init]::git init{enter}
::stat]::git status -s{enter}
::diff]::git diff{enter}
::add]::git add --all{enter}
::comm]::git commit -m ""{left 1}
::commit]::git commit -m ""{left 1}
::pull]::git pull{enter}
::merge]::git merge{enter}


::name]::git config --global user.name "Matthew Morrone"{enter}
::email]::git config --global user.email "matthewmorrone1@gmail.com"{enter}
::simple]::git config --global push.default simple{enter}


::config]::git config --global user.name "Matthew Morrone"{enter}git config --global user.email "matthewmorrone1@gmail.com"{enter}git config --global push.default simple{enter}


::push]::
	Send git push{enter}
	KeyWait, ], D
	Send {bs}
	email := email()
	Send %email%{enter}
	KeyWait, ], D
	Send {bs}
	password := password()
	Send %password%{enter}
Return


#Hotstring *0

#IfWinActive








