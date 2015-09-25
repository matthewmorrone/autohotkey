MoveClickWait(x, y, z:=500) {
	Send {click %x%, %y%}
	Sleep, %z%
}

ActivatorEnd(message, active:=true, timeout:=3) {
	if %active% {
		WinWaitActive, %message%, , %timeout%
	}
	else {
		WinWait, %message%, , %timeout%
		WinActivate
	}
	if ErrorLevel
	{
		return
	}
}

NumPad1::
	WinActivate, PAOAG
	MoveClickWait(66, 1098)
	MoveClickWait(68, 296)
	MoveClickWait(362, 386)
	MoveClickWait(1777, 283)
	ActivatorEnd("Choose File to Upload", false)
	Send customizations.xml
	Send {enter}
	MoveClickWait(1869, 280)
return
Numpad2::
	MoveClickWait(303, 321)
	ActivatorEnd("Message from webpage")
	MoveClickWait(334, 162)
	ActivatorEnd("Import Customizations -- Webpage Dialog")
	Sleep 2000
	MoveClickWait(335, 411)
return
Numpad3::
	MoveClickWait(60, 1065)			; Services
	MoveClickWait(75, 349)			; Mail Merges
	MoveClickWait(1300, 265)		; Dropdown
	MoveClickWait(1300, 255, 1500)	; All Mail Merges
	; MoveClickWait(372, 426)			; CLick record
	MoveClickWait(869, 382)			; CLick record
	; MoveClickWait(372, 449)			; CLick record
	MoveClickWait(450, 300)			; Click letters
return

; NumPad1::
; return
; NumPad2::
; return

; NumPad0::
; 	Send {NumPad2}
; 	Send {NumPad1}
; return

; MouseGetPos, xpos, ypos
; Send {click %x%, %y%}
; MouseMove, %xpos%, %ypos%
