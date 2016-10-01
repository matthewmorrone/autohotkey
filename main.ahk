


*$LAlt::LCtrl
*$LCtrl::LAlt
*$RAlt::RCtrl
*$RCtrl::RAlt




+Space::_
+Backspace::Delete
$`::Send {Backspace}
$+`::Send {Delete}
$#`::SendRaw, ``
$+#`:: SendRaw, `~

CapsLock::Enter

#1:: Send {Home}
#2:: Send {End}
#3:: Send {PgUp}
#4:: Send {PgDn}
#w:: Send {Up}
#s:: Send {Down}
#a:: Send {Left}
#d:: Send {Right}


; ^k::
; Clipboard := RegExReplace(Clipboard, "([A-Z])", "_$l1")
; Clipboard := RegExReplace(Clipboard, "^_", "")
; Send %Clipboard%
; return


; because esc doesn't always seem to work like i think it should
^Esc::
WinGetActiveTitle, Title
WinClose %Title%
return
!+Esc::
Send {^+Esc}
return


#f::
Send ^c
Run http://www.google.com/search?q=%clipboard%
Return

~LButton & RButton::
~RButton & LButton::
Click 2
return





; to see a key/mouse trace
F8::
#persistent
#InstallKeybdHook
#InstallMouseHook
KeyHistory
#KeyHistory 500
return





^+w::
result = 
(
ScreenWidth: %A_ScreenWidth%
ScreenHeight: %A_ScreenHeight%
IsAdmin: %A_IsAdmin%
)

; AhkVersion: %A_AhkVersion%
; WorkingDir: %A_WorkingDir%
; ScriptDir: %A_ScriptDir%
; ScriptName: %A_ScriptName%
; ScriptFullPath: %A_ScriptFullPath%
; ScriptHwnd: %A_ScriptHwnd%
; AhkPath: %A_AhkPath%
; IsUnicode: %A_IsUnicode%
; IsCompiled: %A_IsCompiled%
; Temp: %A_Temp%
; OSType: %A_OSType%
; OSVersion: %A_OSVersion%
; Is64bitOS: %A_Is64bitOS%
; PtrSize: %A_PtrSize%
; Language: %A_Language%
; ComputerName: %A_ComputerName%
; UserName: %A_UserName%
; WinDir: %A_WinDir%
; ProgramFiles: %A_ProgramFiles%
; AppData: %A_AppData%
; AppDataCommon: %A_AppDataCommon%
; Desktop: %A_Desktop%
; DesktopCommon: %A_DesktopCommon%
; StartMenu: %A_StartMenu%
; StartMenuCommon: %A_StartMenuCommon%
; Programs: %A_Programs%
; ProgramsCommon: %A_ProgramsCommon%
; Startup: %A_Startup%
; StartupCommon: %A_StartupCommon%
; MyDocuments: %A_MyDocuments%
; 
; ScreenDPI: %A_ScreenDPI%
; IPAddress1: %A_IPAddress1%
; IPAddress2: %A_IPAddress2%
; IPAddress3: %A_IPAddress3%
; IPAddress4: %A_IPAddress4%
; Cursor: %A_Cursor%
; CaretX: %A_CaretX%
; CaretY: %A_CaretY%
; Clipboard: %Clipboard%
; ClipboardAll: %ClipboardAll%

MsgBox, %result%

return



