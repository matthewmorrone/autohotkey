origionalArray := {"1":"22","2":{"1":"10","2":"20","3":{"1":"1"},"4":"10"},"3":"22","4":"22","5":{"1":"10","2":"20","3":{"1":"1"},"4":"10"},"6":"22","josh\r\n*&\\^%$#@"",  ":""}
 
stringForm := arrayToString(origionalArray)
backToArray := stringToArray(stringForm)
 
MsgBox % "origional \n" arrayToString(origionalArray)
MsgBox % "other \n" arrayToString(backToArray)
ExitApp
arrayToString(theArray) {
	string := "{"
	for key, value in theArray {
		if(A_index != 1) {
			string .= ","
		}
		key := escapeSpecialChars(key)
		string .=  """" key """:" 
		if(IsObject(value)) {
			string .= arrayToString(value)
		} 
		else {
			value := escapeSpecialChars(value)
			string .=  """" value """"
		}
	}
	return string "}"
}
escapeSpecialChars(theString, reverse := false) {
	unEscaped := ["""", "\\", "\r", "\n", ",", "%", ";", "::", "\b", "\t", "\v", "\a", "\f"]
	escaped := ["""""", "\\\\", "\\r", "\\n", "\\,", "\\%", "\\;", "\\::", "\\b", "\\t", "\\v", "\\a", "\\f"]
 
	search := reverse ? escaped : unEscaped
	replace := reverse ? unEscaped : escaped
 
	for index, s in search {
		StringReplace, theString, theString, % s, % replace[index], All
	}
	return theString
}
stringToArray(theString) {
	if(RegExMatch(theString, "\R") || instr(theString, "{") != 1 || instr(theString, "}", true, 0) != strlen(theString)) {
		return false
	}
	returnArray := object()
 
	process := "start"
	currentKey := ""
	isKey := true
	braceCount := 0
	ignoreBraces := false
	validOpenings := "{"""
	doInsert := false
	validKeyPostfix := ":"
	validValuePostfix := ","
	validPostfixes := validKeyPostfix
	replaceChar := findUnusedChar(theString)
	if(! replaceChar) {
		;too many special characters in the string
		return false
	}
 
	StringReplace, theString, theString, "", % replaceChar, all
 
	loop, parse, theString {
		if(A_Index == 1) {
			;ignore the opening '{'
			continue  
		}
 
		stringLiteral .= A_loopfield
 
		if(process == "start") {
			if(instr(validOpenings, A_loopfield)) {
				process := A_loopfield
			} 
			else if(A_loopfield == replaceChar) {
				doInsert := true
				stringLiteral := ""
			} 
			else {
				return false
			}
		} 
		else if(process == """") {
			if(A_loopfield == """") {
				StringReplace, stringLiteral, stringLiteral, ", , All
				StringReplace, stringLiteral, stringLiteral, % replaceChar, ", All
				doInsert := true
			}
		} 
		else if(process == "{") {
			if(A_loopfield == "}") {
				if(braceCount == 0) {
				StringReplace, stringLiteral, stringLiteral, % replaceChar, ", All
					stringLiteral := stringToArray(stringLiteral)
					if(IsObject(stringLiteral)) {
					doInsert := true
					} 
					else {
					return false
					}
				} 
				else {
				braceCount--
				}
			} 
			else if(A_loopfield == "{") {
				braceCount++
			} 
			else if(A_loopfield == """") {
				ignoreBraces := ! ignoreBraces
			}
		} 
		else if(process == "closing") {
			if(! instr(validPostfixes, A_loopfield) && A_Index != strlen(theString)) {
				return false
			}
			isKey := ! isKey
			stringLiteral := ""
			process := "start"
			ignoreBraces := false
			validPostFixes := isKey ? validKeyPostfix : validValuePostfix
		}
		if(doInsert) {
			doInsert := false
			if(isKey) {
				currentKey := escapeSpecialChars(stringLiteral, reverse := true)
			} 
			else {
				returnArray.insert(currentKey, escapeSpecialChars(stringLiteral, reverse := true))
			}
			process := "closing"
		}
	}
	if(isKey == false || process != "start") {
		;we either stopped half way through proccessing a key/value
		return false
	}
	return returnArray
}
 
findUnusedChar(theString) {
	;The higher part of ISO-8859-1 (codes from 160-255) contains the characters used in 
	;Western European countries and some commonly used special characters.
	loop, % 255 - 160 {
		if(! instr(theString, chr(A_index + 160)))
		{  return chr(A_index + 160)
		}
	}
	return false
}
 
 

toString(array, depth:=6, indent:="") {
	result := ""
	if (IsObject(array)) {
		for key, value in array {
			result .= "\t" . indent . key
			if (IsObject(value) && depth > 1) {
				result .= "\n" . toString(value, depth - 1, indent . "\t")
			}
			else {
				result .= "\t= [" . value . "]\n"
			}
		}
	}
	else {
		result := array
	}
	return result
}
 