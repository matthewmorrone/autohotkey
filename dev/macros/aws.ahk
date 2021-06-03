!d::
Send ^c

str := Clipboard
str := trim(str)
StringReplace, str, str, `r,, All
StringReplace, str, str, `n,, All

StringUpper, strt, str, T
str_ := StrReplace(str, " ", "_")
StringLower, strl, str

res := strt . " <<<" . str_ . ">>> a valid " . strl . " is required for this script."

; Invoice Reference
Clipboard := res

Send ^v
return