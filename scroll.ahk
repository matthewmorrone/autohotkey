; 0x114 is WM_HSCROLL ; 1 vs. 0 causes SB_LINEDOWN vs. UP



; Scroll left.
XButton1 & WheelUp::  
	ControlGetFocus, FocusedControl, A
	Loop 4
		SendMessage, 0x114, 0, 0, %FocusedControl%, A  
return
+WheelUp::  ; Scroll left.
	ControlGetFocus, FocusedControl, A
	Loop 4
		SendMessage, 0x114, 0, 0, %FocusedControl%, A  
return



; Scroll right.

XButton1 & WheelDown::  
	ControlGetFocus, FocusedControl, A
	Loop 4
		SendMessage, 0x114, 1, 0, %FocusedControl%, A  
return
+WheelDown::  
	ControlGetFocus, FocusedControl, A
	Loop 4
		SendMessage, 0x114, 1, 0, %FocusedControl%, A  
return

; turn off zoom scroll
^WheelDown::Return
^WheelUp::Return


