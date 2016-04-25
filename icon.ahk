Menu, tray, icon, ico/psi_white.ico, , 1
$Browser_Home::
Suspend
IF A_ISSUSPENDED = 1
Menu, tray, icon, ico/psi_red.ico, , 1
else if A_ISSUSPENDED = 0
Menu, tray, icon, ico/psi_white.ico, , 1
return
Menu, tray, icon, ico/psi_white.ico, , 1