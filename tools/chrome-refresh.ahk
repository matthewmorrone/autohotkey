; Chrome Refresh On Focus
; Refresh Chrome whenever it receives focus

#SingleInstance force
#Persistent

Gosub WaitForChrome
Return

WaitForChrome:
  WinWaitActive ahk_class Chrome_WidgetWin_1
  Send ^r
  ToolTip Refreshing
  SetTimer RemoveToolTip, 1000
  Gosub WaitForChromeOut
Return

WaitForChromeOut:
  WinWaitNotActive ahk_class Chrome_WidgetWin_1
  Gosub WaitForChrome
Return

RemoveToolTip:
  SetTimer RemoveToolTip, Off
  ToolTip
return

; Alt+Escape to exit
!ESC::ExitApp

; For development, reload script on save
; ~^s::Reload