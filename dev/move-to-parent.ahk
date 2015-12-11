IfWinActive, ahk_class TTOTAL_CMD
{
	!^F6::
	ControlGetText, ParentPath, TMyPanel3
	Clipboard := RegExReplace(ParentPath, "(^.+\\).+", "$1")
	Send {F6}
	Send ^v{Enter 2}
	Return
}
Return