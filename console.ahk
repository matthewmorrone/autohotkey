


#IfWinActive ahk_class ConsoleWindowClass
+PgUp::
Send {WheelUp} 
Return

+PgDn::
Send {WheelDown}
Return

^Up:: 
Send {WheelUp}
Return

^Down:: 
Send {WheelDown} 
Return

#IfWinActive