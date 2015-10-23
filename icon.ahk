Menu, tray, icon, icons/psi_white.ico, , 1
F1::
Suspend
IF A_ISSUSPENDED = 1
Menu, tray, icon, icons/psi_red.ico, , 1
else if A_ISSUSPENDED = 0
Menu, tray, icon, icons/psi_white.ico, , 1
return
Menu, tray, icon, icons/psi_white.ico, , 1
