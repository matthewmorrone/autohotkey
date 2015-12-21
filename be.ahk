
ClipCursor(Confine = True, x1 = 0, y1 = 0, x2 = 1, y2 = 1, d = false) {
	VarSetCapacity(R, 16, 0), NumPut(x1, &R+0), NumPut(y1, &R+4), NumPut(x2, &R+8), NumPut(y2, &R+12)
	Return Confine ? DllCall("ClipCursor", UInt, &R) : DllCall("ClipCursor")
}

;	Sid Meier's Civilization: Beyond Earth (DX11)
;	ahk_class WinClass_FXS
;	ahk_exe civilizationbe_dx11.exe

#IfWinActive ahk_exe civilizationbe_dx11.exe

^r::Send !r

z::l
x::i
c::s
v::p

; NumpadAdd::
; NumpadClear::
; NumpadDel::
; NumpadDown::
; NumpadEnter::
; NumpadHome::
; NumpadLeft::
; NumpadRight::
; NumpadSub::
; NumpadUp::
NumpadEnd::,
NumpadHome::^i
NumpadIns::Tab
NumpadPgDn::.
NumpadPgUp::F3
NumpadDiv::Esc
NumpadMult::
Confine := !Confine
ClipCursor(Confine, 25, 10, A_screenwidth-25, A_screenheight-25, false)
Return

Numpad7::r
Numpad8::i
Numpad9::e
Numpad4::a
Numpad5::s
Numpad6::f
Numpad1::h
Numpad2::l
Numpad3::p

; w::up
; a::left
; s::down
; d::right

1::clickAndReturn(30, 922)
2::clickAndReturn(80, 922)
3::clickAndReturn(130, 922)
4::clickAndReturn(180, 922)
5::clickAndReturn(230, 922)

Tab::
	Send {click 1625, 1000}
return
+Tab::
	clickAndReturn(1625, 1000)
return
MButton::
	Send +{Click}
return

#IfWinActive




; Send {ctrl}
; Sleep 152
; Send {r}
; Sleep 16
; Send {r UP}
; Sleep 176
; Send {ctrl UP}

;	Next Unit – Period
;	Previous Unit – Comma
;	Zoom Out – –
;	Zoom In – +
;	Zoom In – Page Up
;	Zoom Out – Page Down
;	Next City – ]
;	Previous City – [

;	F1;	- Civilopedia
;	F2;	- Economic Info
;	F3;	- Military Info
;	F4;	- Diplomacy Info
;	F5;	- Virtues Screen
;	F6;	- Tech Web

;	F7;	- Notification Log
;	F8;	- Victory Progress
;	F9;	- Quest Log
;	F10;	- Trade Route Overview

;	Covert Ops Overview – Ctrl-E

;	End Turn – Enter

;	City Manager View – Insert
;	Orbital Layer – Shift-O

;	F11;	- Quick Save
;	Quick Load – Ctrl-F11
;	Menu – Esc
;	Save – Ctrl-S
;	Load – Ctrl-L
