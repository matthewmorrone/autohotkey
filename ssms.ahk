#IfWinActive ahk_exe Ssms.exe

^j::
Send {end}{space}{delete}
return
^d::
Send {end}^c^v{enter}
return

:*:@@r::@@ROWCOUNT

:*:recent::order by created_datetime desc

#IfWinActive