

; Batch File renaming

^[::
currentTab = 3
gosub BatchGUI
return

^]::
currentTab = 2
gosub BatchGUI
return

BatchGUI:
Gui, Batch: New, ,"Batch File Rename"
Gui, Add, Tab2, Choose%currentTab% Left, Affix|Replace|Quick
Gui, Add, Radio, vPlace, &Prefix
Gui, Add, Radio,, &Suffix
Gui, Add, Text,, Affix:
Gui, Add, Edit, vAffix
Gui, Tab, 2

hreplace :=
hwith :=
Loop, read, history.dsv
{
	if (A_LoopReadLine = "")
		continue
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
    	if (A_Index = 1)
    		hreplace := A_LoopField "|" hreplace
    	if (A_Index = 2)
    		hwith := A_LoopField "|" hwith
    }
}
StringTrimRight, hreplace, hreplace, 1
StringTrimRight, hwith, hwith, 1

hreplace := RemoveDuplicates(hreplace, Delimiter="|")
hwith := RemoveDuplicates(hwith, Delimiter="|")


Gui, Add, Text,, Replace:
Gui, Add, ComboBox, vReplace Simple, %hreplace%
Gui, Add, Text,, With:
Gui, Add, ComboBox, vWith Simple, %hwith%
Gui, Add, Checkbox, vOverwrite, Overwrite?
;  checked
Gui, Tab, 3
; Gui, Add, Button, gFlatten, Flatten
; Gui, Add, Button, gUnderscore, _underscores_
Gui, Add, Button, gLowercase, lowercase
Gui, Add, Button, gTitlecase, Title Case
Gui, Add, Button, gUppercase, UPPER CASE
Gui, Add, Button, gSnakecase, snake_case
; Gui, Add, Button, gNormalize, Normalize
; Gui, Add, Button, gGithub, Github
; Gui, Add, Button, gDroid, Droid
Gui, Tab
Gui, Add, Button, default xm gGo, OK
; Gui, -SysMenu +Owner
Gui, Show,, Batch


return






ButtonGo:
Go:
Gui, Submit
gosub selections
If (place and affix) {
	if (place = 1) {
		prefix := affix
		gosub prefix
	}
	if (place = 2) {
		suffix := affix
		gosub suffix
	}
}
If (replace) {
	FileAppend, %replace%`t%with%`n, history.dsv
	if ErrorLevel
		MsgBox %ErrorLevel%
	gosub replacewith
}
return

Flatten:
Gui, Submit
gosub selections
gosub toflatten
return

Underscore:
Gui, Submit
gosub selections
gosub tounderscore
return

Lowercase:
Gui, Submit
gosub selections
gosub tolowercase
return

Titlecase:
Gui, Submit
gosub selections
gosub totitlecase
return

Uppercase:
Gui, Submit
gosub selections
gosub touppercase
return

Snakecase:
Gui, Submit
gosub selections
gosub tosnakecase
return

Normalize:
Gui, Submit
gosub selections
gosub tonormalize
return

Github:
Gui, Submit
gosub selections
gosub togithub
return

GuiClose:
GuiEscape:
Gui, Cancel
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
		if overwrite {
			FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
			;%overwrite%
		}
		else {
			FileMove, %OutDir%\%befor%, %OutDir%\%after%, 0
			if !ErrorLevel {
				ind++
			}
			else {
				start := 2
				while ErrorLevel {
					; befor := after
					after := RegExReplace(after, "(_\d+)?\."OutExtension, "", out, -1, 1)
					; MsgBox %OutDir%\%befor%, %OutDir%\%after%_%start%.png
					FileMove, %OutDir%\%befor%, %OutDir%\%after%_%start%.png, 0
					start++
				}
				ind++
			}
		}
	}
}
coolTip(ind . " replacements made.", 5000)
#EscapeChar \
return


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


tosnakecase:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after = %befor%
	after := RegExReplace(after, "([A-Z])([a-z])", "_$l1$2", out, -1, 1)
	after := RegExReplace(after, "([a-z])([A-Z])", "$1_$l2", out, -1, 1)
	after := RegExReplace(after, "^_", "", out, -1, 1)
	; after := RegExReplace(after, "(\d+)\.png)", "_$1.png", out, -1, 1)
	after := RegExReplace(after, "_+", "_", out, -1, 1)

	StringLower, after, after
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


totitlecase:
#EscapeChar `
; gosub selections
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	StringUpper, after, befor, T
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


tonormalize:
#EscapeChar `
ind := 0
for item in sel {
	from := item.path
	SplitPath, from, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
	befor = %OutFileName%
	after := RegExReplace(befor, " \((\d+)\)", "", out, -1, 1)
	If befor <> %after%
	{
		if overwrite {
			FileMove, %OutDir%\%befor%, %OutDir%\%after%, 1
			;%overwrite%
		}
		else {
			FileMove, %OutDir%\%befor%, %OutDir%\%after%, 0
			if !ErrorLevel {
				ind++
			}
			else {
				start := 2
				while ErrorLevel {
					; befor := after
					after := RegExReplace(after, "(_\d+)?\.png", "", out, -1, 1)
					; MsgBox %OutDir%\%befor%, %OutDir%\%after%_%start%.png
					FileMove, %OutDir%\%befor%, %OutDir%\%after%_%start%.png, 0
					start++
				}
				ind++
			}
		}
	}
}

MsgBox, , Batch, % ind . " replacements made.", 5
; coolTip(ind . " replacements made.", 5000)
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





