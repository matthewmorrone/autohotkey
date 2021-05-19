
+del::
Send ^x
Clipboard := RegExReplace(Clipboard, "(\r\n)(\r\n)+$", "`r`n")
return
+ins::
Send ^c
Clipboard := RegExReplace(Clipboard, "(\r\n)(\r\n)+$", "`r`n")
return
; ins::Send ^v

