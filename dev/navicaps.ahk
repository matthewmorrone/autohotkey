; NaviCaps (keyboard navigation by CapsLock)
; Author: streambot@gmail.com

#SingleInstance
#NoEnv
#MaxHotkeysPerInterval 2000
#UseHook  

SetCapsLockState, AlwaysOff
Suspend On


; LEFT HAND (cursors style)

w::Up
a::Left
s::Down
d::Right
q::Home
e::End
r::PgUp
f::PgDn

g::AppsKey

z::Backspace
x::Delete
c::Enter

; RIGHT HAND (vim style)
h::Left
j::Down
k::Up
l::Right
u::Home
o::End
i::PgUp
,::PgDn

p::Delete

LAlt::Ctrl
RAlt::Shift

CapsLock::Suspend Off
CapsLock Up::Suspend On
