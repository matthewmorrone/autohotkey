#Include _prelude.ahk
#Include util.ahk
#Include range.ahk




::tryit::
SendMode Input
for i in range(33, 255)
{
	i := StrPad(i, 0, 4)
	Send {Alt Down}
	Loop, parse, i
	{
		; Send,%i%\t{Numpad%A_LoopField%}
	}
	Send {Alt Up}
	Send,\n
}
SendMode Event
return


