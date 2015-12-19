#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook

#SingleInstance force

; SetCapsLockState, alwaysoff
; *CapsLock::Return





; CapsLock::       Send {enter}
; CapsLock & `::   Send {backspace}
; CapsLock & Tab:: Send {delete}


; CapsLock::		; CapsLock
; +CapsLock::	; Shift+CapsLock
; !CapsLock::	; Alt+CapsLock
; ^CapsLock::		; Ctrl+CapsLock
; #CapsLock::		; Win+CapsLock
; ^!CapsLock::	; Ctrl+Alt+CapsLock
; ^!#CapsLock::	; Ctrl+Alt+Win+CapsLock
; ;............	; You can add whatever you want to block
; return			; Do nothing, return

Browser_Back::return
Browser_Forward::return


Browser_Back & 1::
	If GetKeyState("Shift") = 1 {
		send +{`=}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{`=}
	}
	Else {
		send {`=}
	}
return
Browser_Back & 2::
	If GetKeyState("Shift") = 1 {
		send +{`-}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{`-}
	}
	Else {
		send {`-}
	}
return
Browser_Back & 3::
	If GetKeyState("Shift") = 1 {
		send +{0}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{0}
	}
	Else {
		send {0}
	}
return
Browser_Back & 4::
	If GetKeyState("Shift") = 1 {
		send +{9}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{9}
	}
	Else {
		send {9}
	}
return
Browser_Back & 5::
	If GetKeyState("Shift") = 1 {
		send +{8}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{8}
	}
	Else {
		send {8}
	}
return
Browser_Back & 6::
	If GetKeyState("Shift") = 1 {
		send +{7}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{7}
	}
	Else {
		send {7}
	}
return
Browser_Forward & 7::
	If GetKeyState("Shift") = 1 {
		send +{6}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{6}
	}
	Else {
		send {6}
	}
return
Browser_Forward & 8::
	If GetKeyState("Shift") = 1 {
		send +{5}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{5}
	}
	Else {
		send {5}
	}
return
Browser_Forward & 9::
	If GetKeyState("Shift") = 1 {
		send +{4}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{4}
	}
	Else {
		send {4}
	}
return 
Browser_Forward & 0::
	If GetKeyState("Shift") = 1 {
		send +{3}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{3}
	}
	Else {
		send {3}
	}
return
Browser_Forward & -::
	If GetKeyState("Shift") = 1 {
		send +{2}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{2}
	}
	Else {
		send {2}
	}
return
Browser_Forward & =::
	If GetKeyState("Shift") = 1 {
		send +{1}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{1}
	}
	Else {
		send {1}
	}
return

Browser_Back & q::
	If GetKeyState("Shift") = 1 {
		send +{p}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{p}
	}
	Else {
		send {p}
	}
return
Browser_Back & w::
	If GetKeyState("Shift") = 1 {
		send +{o}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{o}
	}
	Else {
		send {o}
	}
return 
Browser_Back & e::
	If GetKeyState("Shift") = 1 {
		send +{i}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{i}
	}
	Else {
		send {i}
	}
return
Browser_Back & r::
	If GetKeyState("Shift") = 1 {
		send +{u}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{u}
	}
	Else {
		send {u}
	}
return
Browser_Back & t::
	If GetKeyState("Shift") = 1 {
		send +{y}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{y}
	}
	Else {
		send {y}
	}
return
Browser_Forward & y::
	If GetKeyState("Shift") = 1 {
		send +{t}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{t}
	}
	Else {
		send {t}
	}
return
Browser_Forward & u::
	If GetKeyState("Shift") = 1 {
		send +{r}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{r}
	}
	Else {
		send {r}
	}
return
Browser_Forward & i::
	If GetKeyState("Shift") = 1 {
		send +{e}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{e}
	}
	Else {
		send {e}
	}
return
Browser_Forward & o::
	If GetKeyState("Shift") = 1 {
		send +{w}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{w}
	}
	Else {
		send {w}
	}
return 
Browser_Forward & p::
	If GetKeyState("Shift") = 1 {
		send +{q}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{q}
	}
	Else {
		send {q}
	}
return 

Browser_Back & a::
	If GetKeyState("Shift") = 1 {
		send +{SC027}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{SC027}
	}
	Else {
		send {SC027}
	}
return
Browser_Back & s::
	If GetKeyState("Shift") = 1 {
		send +{l}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{l}
	}
	Else {
		send {l}
	}
return
Browser_Back & d::
	If GetKeyState("Shift") = 1 {
		send +{k}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{k}
	}
	Else {
		send {k}
	}
return
Browser_Back & f::
	If GetKeyState("Shift") = 1 {
		send +{j}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{j}
	}
	Else {
		send {j}
	}
return
Browser_Back & g::
	If GetKeyState("Shift") = 1 {
		send +{h}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{h} 
	}
	Else {
		send {h}
	}
return
Browser_Forward & h::
	If GetKeyState("Shift") = 1 {
		send +{g}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{g} 
	}
	Else {
		send {g} 
	}
return
Browser_Forward & j::
	If GetKeyState("Shift") = 1 {
		send +{f}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{f} 
	}
	Else {
		send {f} 
	}
return
Browser_Forward & k::
	If GetKeyState("Shift") = 1 {
		send +{d}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{d}
	}
	Else {
		send {d}
	}
return
Browser_Forward & l::
	If GetKeyState("Shift") = 1 {
		send +{s}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{s}
	}
	Else {
		send {s}
	}
return
Browser_Forward & SC027::
	If GetKeyState("Shift") = 1 {
		send +{a}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{a}
	}
	Else {
		send {a}
	}
return

Browser_Back & z::
	If GetKeyState("Shift") = 1 {
		send +{/}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{/}
	}
	Else {
		send {/}
	}
return
Browser_Back & x::
	If GetKeyState("Shift") = 1 {
		send +{.}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{.}
	}
	Else {
		send {.}
	}
return
Browser_Back & c::
	If GetKeyState("Shift") = 1 {
		send +{,}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{,}
	}
	Else {
		send {,}
	}
return
Browser_Back & v::
	If GetKeyState("Shift") = 1 {
		send +{m}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{m}
	}
	Else {
		send {m}
	}
return
Browser_Back & b::
	If GetKeyState("Shift") = 1 {
		send +{n}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{n}
	}
	Else {
		send {n}
	}
return
Browser_Forward & n::
	If GetKeyState("Shift") = 1 {
		send +{b}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{b}
	}
	Else {
		send {b}
	}
return
Browser_Forward & m::
	If GetKeyState("Shift") = 1 {
		send +{v}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{v}
	}
	Else {
		send {v}
	}
return
Browser_Forward & ,::
	If GetKeyState("Shift") = 1 {
		send +{c}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{c}
	}
	Else {
		send {c}
	}
return
Browser_Forward & .::
	If GetKeyState("Shift") = 1 {
		send +{x}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{x}
	}
	Else {
		send {x}
	}
return
Browser_Forward & /::
	If GetKeyState("Shift") = 1 {
		send +{z}
	}
	Else If GetKeyState("Ctrl") = 1 {
		send ^{z}
	}
	Else {
		send {z}
	}
return


; auto reload on save
~^s::
IfWinActive, %A_ScriptName%
{
SplashTextOn,,,Reloading %A_ScriptName%,
Sleep,500
SplashTextOff
Reload
; MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
; IfMsgBox, Yes, Edit
}
Else
{
Send {^s} 
}
return