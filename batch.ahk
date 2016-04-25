
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


recursive:
#EscapeChar `
gosub selections
FileDelete, %A_WorkingDir%\out.txt
for item in sel 
{
	from := item.path
	if A_LoopFileAttrib contains H,R,S
	{
	    continue
	}
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	SetWorkingDir, %OutDir%
	Loop, *.*, 0, 1
	{
		FileAppend, %A_LoopFileFullPath%`n, %A_WorkingDir%\out.txt
	}
}
#EscapeChar \
return










increment:
#EscapeChar `
InputBox, replace, "Incremental Replace", "Replace?", , , , , , , ;, "-"
with :=
ind := 0
gosub selections

for item in sel {
	ind++
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	with := StrPad(A_Index, 0, 3)
	after := RegExReplace(befor, replace, with, out, -1, 1)
	; MsgBox %after%`n%befor%`n%replace%`n%with%`n%out%`n%ind%

	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
}
#EscapeChar \
return

remove: 
#EscapeChar `
InputBox, replace, "Remove", "Remove?", , , , , , , ;, "-"
with := 
len := 0
sel := GetSelections()
for item in sel {
	 len++
}
if (len = 0) {
		send ^a
		sel := GetSelections()
}
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after := RegExReplace(befor, replace, with, out, -1, 1) 
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
}
#EscapeChar \
return

tolowercase:
#EscapeChar `
gosub selections
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	StringLower, after, befor
	FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
}
#EscapeChar \
return

replacewith:
#EscapeChar `
InputBox, replace, "Replace", "Replace?", , , , , , , ;, "-"
InputBox, with, "With", "With?", , , , , , , ;, "-"
res := 0
gosub selections
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after := RegExReplace(befor, replace, with, out, -1, 1)
	If befor <> %after% 
	{
		FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
		res++
	}
}
MsgBox %res% replacements made.
#EscapeChar \
return


prefix:
#EscapeChar `
gosub selections
InputBox, prefix, "Prefix", "Prefix?", , , , , , , ;, "-"
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutDir%\%OutFileName%
	after = %OutDir%\%Prefix%%OutFileName%
	FileMove, %befor%, %after%, 1
}
#EscapeChar \
return

suffix:
#EscapeChar `
gosub selections
InputBox, suffix, "Suffix", "Suffix?", , , , , , , ;, "-"
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutDir%\%OutFileName%
	after = %OutDir%\%OutFileName%%Suffix%
	FileMove, %befor%, %after%, 1
}
#EscapeChar \
return

; ; remove -master and/or -gh-pages affix from folders and zip files
github:
gosub selections
arr := Array()
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
		FileMove, %from%, %to%, 1
	}
	else if (post3 = "-gh-pages") {
		StringLeft, to, from, strlen(from)-9
		to := Trim(to, "\n \t\r")
		from := Trim(from, "\n \t\r")
		FileMoveDir, %from%, %to%, R
	}
}
if (len = 0) {
	send ^a
}
return




droidresource:
#EscapeChar `
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

	If (befor <> %after%) {
		FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
	}
}
#EscapeChar \
return
