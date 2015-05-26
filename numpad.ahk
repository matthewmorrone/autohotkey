#Include prelude.ahk

; Space - the spacebar
; Tab
; Enter (or Return)
; Escape (or Esc)
; Backspace (or BS)

; Delete (or Del)
; Insert (or Ins)
; Home
; End
; PgUp
; PgDn
; Up
; Down
; Left
; Right

; ScrollLock
; CapsLock
; NumLock

; Numlock OFF

NumPad1::Send {End}
NumPad2::Send {Down}
NumPad3::Send {PgDn}
NumPad4::Send {Left}
; NumPad5::Send {}
NumPad6::Send {Right}
NumPad7::Send {Home}
NumPad8::Send {Up}
NumPad9::Send {PgUp}
; NumPad0::Send {}

; Numlock ON	Numlock OFF
; Numpad0	NumpadIns
; Numpad1	NumpadEnd
; Numpad2	NumpadDown
; Numpad3	NumpadPgDn
; Numpad4	NumpadLeft
; Numpad5	NumpadClear
; Numpad6	NumpadRight
; Numpad7	NumpadHome
; Numpad8	NumpadUp
; Numpad9	NumpadPgUp
; NumpadDot (.)	NumpadDel
; NumpadDiv (/)	NumpadDiv (/)
; NumpadMult (*)	NumpadMult (*)
; NumpadAdd (+)	NumpadAdd (+)
; NumpadSub (-)	NumpadSub (-)
; NumpadEnter	NumpadEnter



#Include autoload.ahk
