



#IfWinActive Vector Magic

~Tab::
WinActivate, Vector Magic
Send {click 1398, 434}
Send {click 1419, 473}
return

Space::
RShift::
ww := (WindowW()/20*19)
Send {click %ww%, 974}
Send {click %ww%, 974}
ww := (WindowW() - 300)
Send {click %ww%, 542}
Send ^a
Send ^c
width := Clipboard
Send {click %ww%, 562}
Send ^a
Send ^c
height := Clipboard
ww := (WindowW() - 300)
if (width < height) {
	Send {click %ww%, 542}
}
if (width > height) {
	Send {click %ww%, 562}
}
Send ^a
Send {backspace}
Send 512
Send !{Esc}
WinActivate, Vector Magic
ww := (WindowW() - 100)
Send {click %ww%, 620}
return



Capslock::
Send {click 1546, 492}
Send ^a
Send ^c
WordArray := StrSplit(Clipboard, "_")
var := WordArray[WordArray.length()]
if var is integer
	next := WordArray[WordArray.length()]+1
if var is integer
	WordArray.Pop()
if var is integer
	WordArray.Push(next)
if var is not integer
	WordArray.Push(2)
Clipboard := Array_Join(WordArray, "_")
Send ^v
BlockInput, on
Send {click 1513, 974}
WinActivate, Vector Magic
Send {click 1513, 974}
Send {click 1419, 433}
Send {click 1419, 473}
BlockInput, off
return
#IfWinActive

