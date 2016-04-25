
#IfWinActive ahk_exe civilizationbe_dx9.exe
#IfWinActive ahk_exe civilizationbe_dx11.exe
#IfWinActive ahk_exe CivilizationV.exe
#IfWinActive ahk_exe CivilizationV_DX11.exe

3::clickAndReturn(55, 852)
^r::Send !r
5::Send !r
!v::Send !r
^v::Send !r

MButton::
	Send +{Click}
return

z::l
x::i
c::s
v::p

NumpadMult::
Confine := !Confine
ClipCursor(Confine, 25, 10, A_screenwidth-25, A_screenheight-25, false)
Return

#IfWinActive



#IfWinActive ahk_exe CivilizationV.exe
#IfWinActive ahk_exe CivilizationV_DX11.exe

^Tab::
	Send {click 1500, 830}
	Send, Tab UP
return
Tab::
	clickAndReturn(1500, 830)
return

return


#IfWinActive ahk_exe civilizationbe_dx9.exe
#IfWinActive ahk_exe civilizationbe_dx11.exe

^Tab::
	Send {click 1625, 1000}
	Send, Tab UP
return
Tab::
	clickAndReturn(1625, 1000)
return

return
