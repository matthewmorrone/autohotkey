
; $-::
; 	KeyWait, -, T0.25
; 	If ErrorLevel {
; 		Send {Asc 0151}
; 	}
; 	Else {
; 		Send {-}
; 	}
; 	KeyWait, -
; Return

$`::
	KeyWait, SC029 T0.25
	If ErrorLevel {
		Send {SC029}
	}
	Else {
		
		Send {backspace}
	}
	KeyWait, SC029
Return



$Numpad1::
	KeyWait, Numpad1, T0.25
	If ErrorLevel {
		SendInput {Numpad1}
		KeyWait, Numpad1
	}
	Else {
		Send {End}
	}
	KeyWait, Numpad1
Return

$Numpad2::
	KeyWait, Numpad2, T0.25
	If ErrorLevel {
		SendInput, {Numpad2}
		KeyWait, Numpad2
	}
	Else {
		Send {Down}
	}
	KeyWait, Numpad2
Return

$Numpad3::
	KeyWait, Numpad3, T0.25
	If ErrorLevel {
		SendInput, {Numpad3}
		KeyWait, Numpad3
	}
	Else {
		Send {PgDn}
	}
	KeyWait, Numpad3
Return


$Numpad4::
	KeyWait, Numpad4, T0.25
	If ErrorLevel {
		SendInput, {Numpad4}
		KeyWait, Numpad4
	}
	Else {
		Send {Left}
	}
	KeyWait, Numpad4
Return



$Numpad5::
	KeyWait, Numpad5, T0.25
	If ErrorLevel {
		SendInput, {Numpad5}
		KeyWait, Numpad5
	}
	Else {
		Send {Ctrldown}a{Ctrlup}{Ctrldown}c{Ctrlup}
	}
	KeyWait, Numpad5
Return



$Numpad6::
	KeyWait, Numpad6, T0.25
	If ErrorLevel {
		SendInput, {Numpad6}
		KeyWait, Numpad6
	}
	Else {
		Send {Right}
	}
	KeyWait, Numpad6
Return


$Numpad7::
	KeyWait, Numpad7, T0.25
	If ErrorLevel {
		SendInput, {Numpad7}
		KeyWait, Numpad7
	}
	Else {
		Send {Home}
	}
	KeyWait, Numpad7
Return

$Numpad8::
	KeyWait, Numpad8, T0.25
	If ErrorLevel {
		SendInput, {Numpad8}
		KeyWait, Numpad8
	}
	Else {
		Send {Up}
	}
	KeyWait, Numpad8
Return

$Numpad9::
	KeyWait, Numpad9, T0.25
	If ErrorLevel {
		SendInput, {Numpad9}
		KeyWait, Numpad9
	}
	Else {
		Send {PgUp}
	}
	KeyWait, Numpad9
Return

; $Enter::
; 	KeyWait, Enter, T0.25
; 	If ErrorLevel {
; 		caps := toggleCaps(caps)
; 	}
; 	Else {
; 		Send {Enter}
; 	}
; 	KeyWait, Enter
; Return
; $2::
; 	KeyWait, 2, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 130} ;é
; 		KeyWait, 2
; 	}
; 	Else {
; 		Send {2}
; 	}
; 	KeyWait, 2
; Return
; $+2::
; 	KeyWait, 2, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 144} ;É
; 		KeyWait, 2
; 	}
; 	Else {
; 		Send +{2}
; 	}
; 	KeyWait, 2
; Return
; $^+2::
; 	KeyWait, 2, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 253} ;²
; 		KeyWait, 2
; 	}
; 	Else {
; 		Send {^+2}
; 	}
; 	KeyWait, 2
; Return
; $8::
; 	KeyWait, 8, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 236}
; 		KeyWait, 8
; 	}
; 	Else {
; 		Send {8}
; 	}
; 	KeyWait, 8
; Return


; $=::
; 	KeyWait, =, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 247}
; 		KeyWait, =
; 	}
; 	Else {
; 		Send {=}
; 	}
; 	KeyWait, =
; Return
; $+=::
; 	KeyWait, =, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 248}
; 		KeyWait, =
; 	}
; 	Else {
; 		SendInput, {ShiftDown}{=}{ShiftUp}
; 	}
; 	KeyWait, =
; Return

; $/::
; 	KeyWait, /, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 92}
; 		KeyWait, /
; 	}
; 	Else {
; 		Send {/}
; 	}
; 	KeyWait, /
; Return
; $+/::
; 	KeyWait, /, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 168}
; 		KeyWait, /
; 	}
; 	Else {
; 		SendInput, {ShiftDown}{/}{ShiftUp}
; 	}
; 	KeyWait, /
; Return



; $,::
; 	KeyWait,SC033, T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 174}
; 		KeyWait, SC033
; 	}
; 	Else {
; 		Send {SC033}
; 	}
; 	KeyWait,SC033
; Return

; $.::
; 	KeyWait, ., T0.25
; 	If ErrorLevel {
; 		SendInput, {ASC 175}
; 		KeyWait, .
; 	}
; 	Else {
; 		Send {.}
; 	}
; 	KeyWait, .
; Return









; $[::
; 	KeyWait, [, T0.25
; 	If ErrorLevel {
; 		Send +[
; 	}
; 	Else {
; 		Send [
; 	}
; 	KeyWait, [
; Return

; $\;::
; 	KeyWait, \;, T0.25
; 	If ErrorLevel {
; 		SendRaw \;
; 	}
; 	Else {
; 		Send +{\;}
; 	}
; 	KeyWait, \;
; Return

; $Tab::
; 	KeyWait, Tab, T0.25
; 	If ErrorLevel {
; 		Send +{Tab}
; 		Send {Tab}
; 	}
; 	Else {
; 		Send {Tab}
; 	}
; 	KeyWait, Tab
; Return

	
; $a::
; KeyWait, a
; return

; $a Up::
; If (A_PriorHotKey = "$a" AND A_TimeSincePriorHotkey < 500)
; 	Send a
; else
; 	SendInput, {Ctrldown}a{Ctrlup}{Ctrldown}c{Ctrlup}
; return

