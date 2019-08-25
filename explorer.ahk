#IfWinActive ahk_exe explorer.exe

^WheelDown::
Send {Ctrl Up}
Send {WheelDown}
Send {Ctrl Down}
return

^WheelUp::
Send {Ctrl Up}
Send {WheelUp}
Send {Ctrl Down}
return

^+a::
send !e{up}{enter}
return

^w::
return

; new folder
^n::send ^+n
^+n::send ^n

^up::
Send ^x
Sleep, 200
send !{up}
Sleep, 200
Send {F5}
Sleep, 200
Send ^v
Sleep, 200
Send {shift Up}
return

#IfWinActive