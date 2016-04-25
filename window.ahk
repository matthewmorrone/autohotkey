
^+SPACE::WinSet, Alwaysontop, , A

; to see what's behind the current window
#Space::WinSet, Transparent, 50, A
#Space UP::WinSet, Transparent, OFF, A
return

; Start screen saver:
#Esc::
SendMessage, 0x112, 0xF140, 0,, Program Manager
return

