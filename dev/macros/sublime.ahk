

#IfWinActive, ahk_exe sublime.exe
+ins::
Send ^c
Clipboard := StrReplace(Clipboard, "`n")
return
#IfWinActive