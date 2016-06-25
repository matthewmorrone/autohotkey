
selections:
len := 0
sel := GetSelections()
for item in sel {
	len++
}
if (len = 0) {
	send ^a
	sel := GetSelections()
}
Sort, sel
return





; recursive:
; #EscapeChar `
; ; gosub selections
; FileDelete, %A_WorkingDir%\out.txt
; for item in sel {
; 	from := item.path
; 	if A_LoopFileAttrib contains H,R,S {
; 	    continue
; 	}
; 	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
; 	SetWorkingDir, %OutDir%
; 	Loop, *.*, 0, 1 {
; 		FileAppend, %A_LoopFileFullPath%`n, %A_WorkingDir%\out.txt
; 	}
; }
; #EscapeChar \
; return





decopify:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after := RegExReplace(befor, " \((\d+)\)",	"_$1", out, -1, 1)
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, %overwrite%
	if !ErrorLevel
		ind++
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return


tounderscore:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after := RegExReplace(befor, "-",	"_", out, -1, 1)
	after := RegExReplace(befor, " ",	"_", out, -1, 1)
	after := RegExReplace(befor, "^_",	"", out, -1, 1)
	after := RegExReplace(befor, "_$",	"", out, -1, 1)
	after := RegExReplace(befor, "_\.png",	".png", out, -1, 1)
	after := RegExReplace(befor, "_+",	"_", out, -1, 1)
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, %overwrite%
	if !ErrorLevel
		ind++
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return



increment:
#EscapeChar `
with :=
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	with := StrPad(A_Index, 0, 3)
	after := RegExReplace(befor, replace, with, out, -1, 1)
	; MsgBox %after%`n%befor%`n%replace%`n%with%`n%out%`n%ind%
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
	if !ErrorLevel
		ind++
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return




tolowercase:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	StringLower, after, befor
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, %overwrite%
	if !ErrorLevel
		ind++
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return




touppercase:
#EscapeChar `
; gosub selections
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	StringUpper, after, befor
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, %overwrite%
	if !ErrorLevel
		ind++
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return




replacewith:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after := RegExReplace(befor, replace, with, out, -1, 1)
	If befor <> %after% 
	{
		FileMove, %OutDir%\%befor%, %OutDir%\%after%, %overwrite%
		if !ErrorLevel
			ind++
	}
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return




toflatten:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	output := StrSplit(from, "\")
	dir := output[Array_Len(output)-1]
	befor = %OutFileName%
	after = %dir%_%OutFileName%
	If befor <> %after% 
	{
		FileMove, %OutDir%\%befor%, %OutDir%\%after%, %overwrite%
		if !ErrorLevel
			ind++
	}
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return





prefix:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutDir%\%OutFileName%
	after = %OutDir%\%Prefix%%OutFileName%
	FileMove, %befor%, %after%, 0
	if !ErrorLevel
		ind++
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return




suffix:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutDir%\%OutFileName%
	after = %OutDir%\%OutFileName%%Suffix%
	FileMove, %befor%, %after%, 0
	if !ErrorLevel
		ind++
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return




; remove -master and/or -gh-pages affix from folders and zip files
togithub:
arr := Array()
ind := 0
for item in sel {
	from := item.path
	StringRight, post1, from, 7
	StringRight, post2, from, 11
	StringRight, post3, from, 9
	if (post1 = "-master") {
		StringLeft, to, from, strlen(from)-7
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		FileMoveDir, %from%, %to%, R
	}
	else if (post2 = "-master.zip") {
		StringLeft, to, from, strlen(from)-11
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		to := to . ".zip"
		FileMove, %from%, %to%, 0
	}
	else if (post3 = "-gh-pages") {
		StringLeft, to, from, strlen(from)-9
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		FileMoveDir, %from%, %to%, R
	}
	if !ErrorLevel
		ind++
}
coolTip(ind . " replacements made.", 5000)
return




todroid:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	StringLower, after, befor
	after := RegExReplace(after, "\.png",	"_png", out, -1, 1)
	after := RegExReplace(after, "\.",		"_",	out, -1, 1)
	after := RegExReplace(after, "_png",	".png", out, -1, 1)
	after := RegExReplace(after, " ",		"_", out, -1, 1)
	after := RegExReplace(after, "-",		"_", out, -1, 1)
	after := RegExReplace(after, "~",		"_", out, -1, 1)
	after := RegExReplace(after, "\(",		"_", out, -1, 1)
	after := RegExReplace(after, "\)",		"_", out, -1, 1)
	after := RegExReplace(after, "^_",		"", out, -1, 1)
	after := RegExReplace(after, "_$",		"", out, -1, 1)
	after := RegExReplace(after, "_+",		"_", out, -1, 1)
	If (befor <> after) {
		FileMove, %OutDir%\%befor%, %OutDir%\%after%, %overwrite%
		if !ErrorLevel
			ind++
	}
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return
