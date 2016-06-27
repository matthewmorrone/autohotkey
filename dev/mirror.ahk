Mode := 0
^m::
mode := !mode
return


#If mode



Space & 1::
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
Space & 2::
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
Space & 3::
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
Space & 4::
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
Space & 5::
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
Space & 6::
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
Space & 7::
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
Space & 8::
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
Space & 9::
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
Space & 0::
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
Space & -::
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
Space & =::
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

Space & q::
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
Space & w::
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
Space & e::
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
Space & r::
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
Space & t::
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
Space & y::
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
Space & u::
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
Space & i::
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
Space & o::
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
Space & p::
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

Space & a::
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
Space & s::
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
Space & d::
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
Space & f::
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
Space & g::
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
Space & h::
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
Space & j::
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
Space & k::
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
Space & l::
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
Space & SC027::
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

Space & z::
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
Space & x::
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
Space & c::
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
Space & v::
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
Space & b::
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
Space & n::
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
Space & m::
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
Space & ,::
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
Space & .::
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
Space & /::
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

#If

