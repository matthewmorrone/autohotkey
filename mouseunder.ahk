
PreActivate()
{
    ; Sleep 100
    MouseGetPos,,,OutWin,OutCtrl
    WinActivate, ahk_id %OutWin%
    MsgBox %A_ThisHotKey%
    Send {%A_ThisHotKey%}
    ; Send {%A_PriorKey%}
    ; return

    ; Tooltip, %A_ThisHotKey% %A_PriorHotKey% %A_PriorKey% %A_ControlDelay%
    ; Sleep 1000
    ; Tooltip
}


; LButton
; RButton
~*MButton::PreActivate()
~*XButton1::PreActivate()
~*XButton2::PreActivate()
~*WheelDown::PreActivate()
~*WheelUp::PreActivate()
~*WheelLeft::PreActivate()
~*WheelRight::PreActivate()
~*CapsLock::PreActivate()
~*Space::PreActivate()
~*Tab::PreActivate()
~*Return::PreActivate()
~*Esc::PreActivate()
~*BS::PreActivate()
~*ScrollLock::PreActivate()
~*Del::PreActivate()
~*Ins::PreActivate()
~*Home::PreActivate()
~*End::PreActivate()
~*PgUp::PreActivate()
~*PgDn::PreActivate()
~*Up::PreActivate()
~*Down::PreActivate()
~*Left::PreActivate()
~*Right::PreActivate()
~*NumLock::PreActivate()
~*Numpad0::PreActivate()
~*Numpad1::PreActivate()
~*Numpad2::PreActivate()
~*Numpad3::PreActivate()
~*Numpad4::PreActivate()
~*Numpad5::PreActivate()
~*Numpad6::PreActivate()
~*Numpad7::PreActivate()
~*Numpad8::PreActivate()
~*Numpad9::PreActivate()
~*NumpadDot::PreActivate()
~*NumpadDiv::PreActivate()
~*NumpadMult::PreActivate()
~*NumpadAdd::PreActivate()
~*NumpadSub::PreActivate()
~*NumpadEnter::PreActivate()
~*F1::PreActivate()
~*F2::PreActivate()
~*F3::PreActivate()
~*F4::PreActivate()
~*F5::PreActivate()
~*F6::PreActivate()
~*F7::PreActivate()
~*F8::PreActivate()
~*F9::PreActivate()
~*F10::PreActivate()
~*F11::PreActivate()
~*F12::PreActivate()
~*F13::PreActivate()
~*F14::PreActivate()
~*F15::PreActivate()
~*F16::PreActivate()
~*F17::PreActivate()
~*F18::PreActivate()
~*F19::PreActivate()
~*F20::PreActivate()
~*F21::PreActivate()
~*F22::PreActivate()
~*F23::PreActivate()
~*F24::PreActivate()





; LWin
; RWin
; Ctrl
; Alt
; Shift
; LCtrl
; RCtrl
; LShift
; RShift
; LAlt
; RAlt


~*Browser_Back::PreActivate()
~*Browser_Forward::PreActivate()
~*Browser_Refresh::PreActivate()
~*Browser_Stop::PreActivate()
~*Browser_Search::PreActivate()
~*Browser_Favorites::PreActivate()
~*Browser_Home::PreActivate()
~*Volume_Mute::PreActivate()
~*Volume_Down::PreActivate()
~*Volume_Up::PreActivate()
~*Media_Next::PreActivate()
~*Media_Prev::PreActivate()
~*Media_Stop::PreActivate()
~*Media_Play_Pause::PreActivate()
~*Launch_Mail::PreActivate()
~*Launch_Media::PreActivate()
~*Launch_App1::PreActivate()
~*Launch_App2::PreActivate()
~*AppsKey::PreActivate()
~*PrintScreen::PreActivate()

~*a::PreActivate()
~*b::PreActivate()
~*c::PreActivate()
~*d::PreActivate()
~*e::PreActivate()
~*f::PreActivate()
~*g::PreActivate()
~*h::PreActivate()
~*i::PreActivate()
~*j::PreActivate()
~*k::PreActivate()
~*l::PreActivate()
~*m::PreActivate()
~*n::PreActivate()
~*o::PreActivate()
~*p::PreActivate()
~*q::PreActivate()
~*r::PreActivate()
~*s::PreActivate()
~*t::PreActivate()
~*u::PreActivate()
~*v::PreActivate()
~*w::PreActivate()
~*x::PreActivate()
~*y::PreActivate()
~*z::PreActivate()
~*1::PreActivate()
~*2::PreActivate()
~*3::PreActivate()
~*4::PreActivate()
~*5::PreActivate()
~*6::PreActivate()
~*7::PreActivate()
~*8::PreActivate()
~*9::PreActivate()
~*0::PreActivate()
~*`::PreActivate()
~*-::PreActivate()
~*=::PreActivate()
~*[::PreActivate()
~*]::PreActivate()
~*\::PreActivate()
~*;::PreActivate()
~*'::PreActivate()
~*,::PreActivate()
~*.::PreActivate()
~*/::PreActivate()

