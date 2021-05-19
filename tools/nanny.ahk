#NoTrayIcon
#persistent
SetTimer GTFO, 60000 ; Each min
Return

GTFO:
If (A_Hour = 21 And A_Min = 55) {
  MsgBox Five minute warning! 
}
If (A_Hour >= 22 Or A_Hour <= 7) {
  Shutdown, 4
}
Return