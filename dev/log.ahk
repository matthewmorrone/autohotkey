OnClipboardChange:
Sleep 100
res = `n###%A_YYYY%-%A_MM%-%A_DD%,%A_Hour%`:%A_Min%`:%A_Sec%###`n
ult = %clipboard%
result = %res%%ult%
FileAppend, %result%, log/%A_YYYY%-%A_MM%-%A_DD%.txt
return

~^x::
~^c::
gosub OnClipboardChange
return