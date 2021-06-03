StringLeft, FileName, A_ScriptName, 9
StringMid, FileID, A_ScriptName, 10, 1
StringRight, FileExt, A_ScriptName, 3
; If (FileID = ".ah") {
; 	Next = 1
; }
; else {
; 	Next := FileID + 1
; }
Next := FileID + 1
; Rand := GenRand(3)

Run, powershell /NoExit scp,,Hide,pid
Sleep, 2000
Process, close, %pid%


; $ftp=[System.Net.FtpWebRequest]::Create('ftp://ftp.microsoft.com/bussys/mspress/Interdev/Appendb.zip')
; $ftp.EnableSsl=$false
; $ftp.Credentials.UserName='anonymous'
; $ftp.Credentials.Password='PasSW0rd'
; $ftp.GetResponse()

NewFileName = %FileName%%Next%.%FileExt%

If (next < 1) {
	; MsgBox %FileName% %FileID% %FileExt% %Next%
	; MsgBox %NewFileName%
	FileCopy, %A_ScriptName%, %NewFileName%, 1
	Run, %NewFileName%
}

GenRand(n = 1) {
	Result := ""
	Loop %n% {
		Random, rand, 1, 9
		Result := Result . rand
	}
	Return, Result
}

; http://lifeofageekadmin.com/how-to-copy-files-between-windows-systems-with-powershell/
; http://www.autohotkey.com/docs/commands/Run.htm
; http://www.autohotkey.com/docs/commands/UrlDownloadToFile.htm
; RunAs, Administrator, MyPassword
; Run, RegEdit.exe
; RunAs  ; Reset to normal behavior.

; http://www.nsftools.com/tips/MSFTP.htm#put

