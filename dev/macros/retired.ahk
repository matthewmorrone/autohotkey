#Up::WinMaximize, A
#Down::WinMinimize, A

F6::
WinSet, AlwaysOnTop, Toggle, A
WinSet, Transparent, Toggle, A
return

#IfWinActive, ahk_exe explorer.exe


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


#IfWinActive, ahk_exe lync.exe
Esc::return
#IfWinActive


!t::
Send ^c
StringUpper, Clipboard, Clipboard, T
Send ^v
return
!u::
Send ^x
StringUpper, Clipboard, Clipboard
Send ^v
return
!l::
Send ^c
StringLower, Clipboard, Clipboard
Send ^v
return



Ellipse:
R := 100
S := 2
MouseGetPos, X, Y
goto MouseMoveEllipse
goto Jump2
goto ActivateWinUM
return

MouseMoveEllipse:
MouseMove_Ellipse(X,     Y,     X+R,   Y+R,   S, 0, -1)
MouseMove_Ellipse(X+R,   Y+R,   X,     Y+R*2, S, 0, -1)
MouseMove_Ellipse(X,     Y+R*2, X-R,   Y+R,   S, 0, -1)
MouseMove_Ellipse(X-R,   Y+R,   X,     Y,     S, 0, -1)
MouseMove_Ellipse(X,     Y,     X+R,   Y-R,   S, 0,  1)
MouseMove_Ellipse(X+R,   Y-R,   X,     Y-R*2, S, 0,  1)
MouseMove_Ellipse(X,     Y-R*2, X-R,   Y-R,   S, 0,  1)
MouseMove_Ellipse(X-R,   Y-R,   X,     Y,     S, 0,  1)
/* 
MouseMove_Ellipse(X,     Y,     X+R,   Y+R,   S, 0,  1)
MouseMove_Ellipse(X+R,   Y+R,   X+R*2, Y,     S, 0,  1)
MouseMove_Ellipse(X+R*2, Y,     X+R,   Y-R,   S, 0,  1)
MouseMove_Ellipse(X+R,   Y-R,   X,     Y,     S, 0,  1)
MouseMove_Ellipse(X,     Y,     X-R,   Y+R,   S, 0, -1)
MouseMove_Ellipse(X-R,   Y+R,   X-R*2, Y,     S, 0, -1)
MouseMove_Ellipse(X-R*2, Y,     X-R,   Y-R,   S, 0, -1)
MouseMove_Ellipse(X-R,   Y-R,   X,     Y,     S, 0, -1)
*/
return


