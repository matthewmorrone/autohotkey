; move selection up a directory

#IfWinActive ahk_class ExploreWClass
^up::
#IfWinActive ahk_class CabinetWClass
^up::
Send ^x
Sleep, 20
Send {BS}
Sleep, 20
Send {F5}
Sleep, 20
Send ^v
Sleep, 20
Send {shift Up}
return
#IfWinActive
