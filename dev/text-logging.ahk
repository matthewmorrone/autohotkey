Gui, Font, s8, Courier New
Gui, Add, Edit, w400 r14 HwndhLog -Wrap ReadOnly Disabled

Gui, Add, Button, gOnClick, Clck to log something
Gui, Show

return

OnClick:
	Log("`nStart of loging"), Log("_"), Log("")
	Sleep 2000
	Log("Something really cool happened now")
	SLeep 2000
	Log("Kewl calculation is going on now ...", false)
	Sleep 2000
	Log(" OK")
	Log("`n`nAnd finally, its over !"), Log("-")

	Control, Enable,,, ahk_id %hLog%
return


Log(s, newline = true){	
	local c

	StringReplace s, s, `n, % chr(13)chr(10), A
	if StrLen(s) = 1
	{
		c := chr(*(&s))
		loop, 119
			s .= c
	}

	if (newline)
		s .= chr(13)chr(10)

	SendMessage, 0xC2, false, &s,, ahk_id %hLog%
}