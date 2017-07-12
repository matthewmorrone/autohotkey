Chr(UnicodeCode) {
	VarSetCapacity(TempVar,2), NumPut(UnicodeCode,TempVar,0,"UShort")
	Return, TempVar
}

Asc(UnicodeChar) {
	Return, NumGet(UnicodeChar,0,A_IsUnicode ? "UShort" : "UChar")
}

altShift(accented,accentedShift) {
	if (!GetKeyState("Shift")) {
		SendInput % accented
	} else {
		SendInput % accentedShift
	}
}



; Alt + Shift + key
; *!1::altShift("¡","/")
; *!2::altShift("€","™")
; *!3::altShift("£","‹")
; *!4::altShift("¢","›")
; *!5::altShift("8","fi")
; *!6::altShift("§","fl")
; *!7::altShift("¶","‡")
; *!8::altShift("•","°")
; *!9::altShift("ª","·")
; *!0::altShift("º","‚")
; *!a::altShift("å","Å")
; *!b::altShift("integral","i")
; *!c::altShift("ç","Ç")
; *!d::altShift("partial difference","Î")
; *!e::altShift("´","‰")
; *!f::altShift("ƒ","Ï")
; *!g::altShift("©","Ì")
; *!h::altShift("overdot","Ó")
; *!i::altShift("^","È")
; *!j::altShift("delta","Ô")
; *!k::altShift("°","Apple")
; *!l::altShift("¬","Ò")
; *!m::altShift("µ","˜")
; *!n::altShift("~","ˆ")
; *!o::altShift("ø","Ø")
; *!p::altShift("pi","Pi")
; *!q::altShift("œ","Œ")
; *!r::altShift("®","Â")
; *!s::altShift("ß","Í")
; ;*!t::altShift("†","Ê")
; *!u::altShift("¨","Ë")
; *!v::altShift("v","lozenge")
; *!w::altShift("epsilon","„")
; *!x::altShift("approximately equal","Ù")
; *!y::altShift("¥","Á")
; *!z::altShift("Omega","Û")
; *!-::altShift("–","—")
; *!=::altShift("!=","±")
; *![::altShift("“","”")
; *!]::altShift("‘","’")
; *!`;::altShift("…","Ú")
; *!'::altShift("æ","Æ")
; *!\::altShift("«","»")
; *!,::altShift("<=","¯")
; *!.::altShift(">=","breve")
; *!/::altShift("÷","¿")