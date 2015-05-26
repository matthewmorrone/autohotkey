; close all windows
^o::
WinGet, id, list, , , Program Manager
Loop, %id%
{
    StringTrimRight, this_id, id%a_index%, 0
    WinGetTitle, this_title, ahk_id %this_id%
    winclose, %this_title%
}
Return
