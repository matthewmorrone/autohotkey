#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook

; +Space::
; 	send {space}
; return
; This key may help, as the space-on-up may get annoying, especially if you type fast.
; Space::Suspend



CapsLock & q::
	If GetKeyState("Space") = 0
		send {p}
	Else
		send +{p}
return
CapsLock & w::
	If GetKeyState("Space") = 0
		send {o}
	Else
		send +{o}
return 
CapsLock & e::
	If GetKeyState("Space") = 0
		send {i}
	Else
		send +{i}
return
CapsLock & r::
	If GetKeyState("Space") = 0
		send {u}
	Else
		send +{u}
return
CapsLock & t::
	If GetKeyState("Space") = 0
		send {y}
	Else
		send +{y}
return



; CapsLock & y::
; 	If GetKeyState("Space") = 0
; 		send {t}
; 	Else
; 		send +{t}
; return

; +u::
; 	If GetKeyState("Space") = 0
; 		send {r}
; 	Else
; 		send +{r}
; return

; +i::
; 	If GetKeyState("Space") = 0
; 		send {e}
; 	Else
; 		send +{e}
; return

; +o::
; 	If GetKeyState("Space") = 0
; 		send {w}
; 	Else
; 		send +{w}
; return 
; +p::
; 	If GetKeyState("Space") = 0
; 		send {q}
; 	Else
; 		send +{q}
; return 


CapsLock & a::
	If GetKeyState("Shift") = 0
		send {SC027}
	Else
		send +{SC027}
return

CapsLock & s::
	If GetKeyState("Shift") = 0
		send {l}
	Else
		send +{l}
return

CapsLock & d::
	If GetKeyState("Shift") = 0
		send {k}
	Else
		send +{k}
return

CapsLock & f::
	If GetKeyState("Shift") = 0
		send {j}
	Else
		send +{j}
return

CapsLock & g::
	If GetKeyState("Shift") = 0
		send {h} 
	Else
		send +{h}
return




 


CapsLock & 1::
	If GetKeyState("Shift") = 0
		send {`=}
	Else
		send +{`=}
return
CapsLock & 2::
	If GetKeyState("Shift") = 0
		send {`-}
	Else
		send +{`-}
return

CapsLock & 3::
	If GetKeyState("Shift") = 0
		send {0}
	Else
		send +{0}
return
CapsLock & 4::
	If GetKeyState("Shift") = 0
		send {9}
	Else
		send +{9}
return  

CapsLock & 5::
	If GetKeyState("Shift") = 0
		send {8}
	Else
		send +{8}
return
CapsLock & 6::
	If GetKeyState("Shift") = 0
		send {7}
	Else
		send +{7}
return

SetCapsLockState, alwaysoff
*CapsLock::Return



; +h::
; 	If GetKeyState("Space") = 0
; 		send {g} 
; 	Else
; 		send +{g} 
; return

; +j::
; 	If GetKeyState("Space") = 0
; 		send {f} 
; 	Else
; 		send +{f} 
; return
; +k::
; 	If GetKeyState("Space") = 0
; 		send {d}
; 	Else
; 		send +{d}
; return
; +l::
; 	If GetKeyState("Space") = 0
; 		send {s}
; 	Else
; 		send +{s}
; return
; +SC027::
; 	If GetKeyState("Space") = 0
; 		send {a}
; 	Else
; 		send +{a}
; return

; +z::
; 	If GetKeyState("Space") = 0
; 		send {/}
; 	Else
; 		send +{/}
; return
; +x::
; 	If GetKeyState("Space") = 0
; 		send {.}
; 	Else
; 		send +{.}
; return




; +v::
; 	If GetKeyState("Space") = 0
; 		send {m}
; 	Else
; 		send +{m}
; return
; +b::
; 	If GetKeyState("Space") = 0
; 		send {n}
; 	Else
; 		send +{n}
; return
; +m::
; 	If GetKeyState("Space") = 0
; 		send {v}
; 	Else
; 		send +{v}
; return

; +n::
; 	If GetKeyState("Space") = 0
; 		send {b}
; 	Else
; 		send +{b}
; return
; +.::
; 	If GetKeyState("Space") = 0
; 		send {x}
; 	Else
; 		send +{x}
; return


; +,::
; 	If GetKeyState("Space") = 0
; 		send {c}
; 	Else
; 		send +{c}
; return

; +/::
; 	If GetKeyState("Space") = 0
; 		send {z}
; 	Else
; 		send +{z}
; return



; CapsLock::		; CapsLock
; +CapsLock::	; Shift+CapsLock
; !CapsLock::	; Alt+CapsLock
; ^CapsLock::		; Ctrl+CapsLock
; #CapsLock::		; Win+CapsLock
; ^!CapsLock::	; Ctrl+Alt+CapsLock
; ^!#CapsLock::	; Ctrl+Alt+Win+CapsLock
; ;............	; You can add whatever you want to block
; return			; Do nothing, return

; +7::
; 	If GetKeyState("Space") = 0
; 		send {6}
; 	Else
; 		send +{6}
; return
; +8::
; 	If GetKeyState("Space") = 0
; 		send {5}
; 	Else
; 		send +{5}
; return
; +9::
; 	If GetKeyState("Space") = 0
; 		send {4}
; 	Else
; 		send +{4}
; return 
; +0::
; 	If GetKeyState("Space") = 0
; 		send {3}
; 	Else
; 		send +{3}
; return
; +-::
; 	If GetKeyState("Space") = 0
; 		send {2}
; 	Else
; 		send +{2}
; return
; +=::
; 	If GetKeyState("Space") = 0
; 		send {1}
; 	Else
; 		send +{1}
; return
