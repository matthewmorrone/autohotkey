
isdown:=false
Down::
  if(isdown=true) {
    Click up
  }
  else {
      Click down
  }
  isdown:=!isdown
return

Down::
    if(not GetKeyState("LButton" , "P"))
        Click down
return
Down Up::Click up



!space::
Count++
If 		(Count = 1) {
	coolTip("Sticky On")
	Send {LCtrl Down}
}
Else If (Count = 2) {
	coolTip("Sticky Off")
	Send {LCtrl Up}
	Count := 0
}
Return
