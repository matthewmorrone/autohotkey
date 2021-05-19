#Persistent
SetCapsLockState, AlwaysOff
CapsLock::Enter
; +CapsLock::		; Shift+CapsLock
; !CapsLock::		; Alt+CapsLock
; ^CapsLock::		; Ctrl+CapsLock
; #CapsLock::		; Win+CapsLock
; ^!CapsLock::		; Ctrl+Alt+CapsLock
; ^!#CapsLock::		; Ctrl+Alt+Win+CapsLock
; ;............		; You can add whatever you want to block
; return			; Do nothing, return


CL = false
~CapsLock::
	Send {enter}
	CL = !CL
return

