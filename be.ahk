; #Include prelude.ahk

#IfWinActive Beyond Earth
Tab::
	MouseMove, 1850, 1025
	Send {click}
return
LWin::Browser_Search
CapsLock::Enter
#IfWinActive

; Sid Meier's Civilization: Beyond Earth (DX11)
; ahk_class WinClass_FXS
; ahk_exe civilizationbe_dx11.exe

; #Include postlude.ahk