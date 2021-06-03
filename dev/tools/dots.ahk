; ^#h::   ;Toggle visibility of hidden files with Ctrl+Windows+H. Keep system files hidden.
;     RegRead, H, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden  
;     RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 0
;     HiddenFiles(H, (H = 2 ? "" : "System & ") "Hidden files")
;     Return
    
; ^+#h::   ;Toggle visibility of  hidden files and system files with Ctrl+Shift+Windows+H.    
;     RegRead, H, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden  
;     RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, % (H = 2) ? 1 : 0  
;     HiddenFiles(H, "System & Hidden files")
;     Return    
    
; HiddenFiles(H, T) {
;     RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, % (H = 2) ? 1 : 2 
;     for window in ComObjCreate("Shell.Application").Windows
;         ControlSend, SysTreeView321, {f5}, % "ahk_id " window.hwnd
;     ControlSend,, {f5}, Program Manager ahk_exe explorer.exe
;     TrayTip, % T, % (H = 2) ? "Show" : "Hide", 1, 1
; } 


;WinKey + x
;shows/hides file extensions and hidden and system files all at once

#x::
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
If HiddenFiles_Status = 0
{
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 0
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 0
}Else{
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 1
}
;send, {F5}
sleep 10
GroupAdd, ExplorerWindowsGroup, ahk_class DirectUIHWND3
ControlSend, ahk_parent, {F5}, ahk_class Progman
WinGet, id, List,,, Program Manager
Loop, % id
{
curId := id%A_Index%
WinGetClass, curClass, % "ahk_id " curId
WinGetTitle, this_title, % "ahk_id " curId
if (curClass = "CabinetWClass")
{
ControlFocus, DirectUIHWND3, % "ahk_id " curId
ControlSend,DirectUIHWND3,{F5}, % "ahk_id " curId ; ahk_class CabinetWClass
}
}
Return
;end of WinKey + X