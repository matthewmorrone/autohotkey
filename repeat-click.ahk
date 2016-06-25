clicker := false
^Insert::
	clicker := !clicker
Return
~LButton::
if (clicker = true) {
	Loop
	{
		If (Stop)
			Break
		Send {LButton}
		Sleep 200
	}
	Stop := 0
}
Return
~LButton Up::
if (clicker = true) {
	Stop := 1
	Send {LButton}
}
return
