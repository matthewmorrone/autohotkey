; SPI_GETHIGHCONTRAST
;
; BOOL ok = SystemParametersInfoW(SPI_GETHIGHCONTRAST, 0, &info, 0);
; HCF_HIGHCONTRASTON
; resource://Windows.UI.SettingsAppThreshold/SearchResources/SettingsPageEaseOfAccessHighContrast/Description}
; High contrast settings


; SPI_GETHIGHCONTRAST = 0x0042
; SPI_SETHIGHCONTRAST  = 0x0043










; ; ; msgbox % SM_HIGHCONTRAST
; sysget, sm, 80
; SPIContrast := 1
; SPI := "User32.dll\SystemParametersInfo"
; DllCall(SPI, "UInt", 0x0042, "UInt", 0, "UIntP", SPIContrast, "UInt", False)
; DllCall(SPI, "UInt", 0x0043, "UInt", 0, "UIntP", SPIContrast, "UInt", False)

; msgbox % SPIContrast

; msgbox % sm

; ; highcontrast := DllCall("SystemParametersInfo", Int, 0x0042)
; ; msgbox % highcontrast
return
; ~^+PrintScreen::
;Press pause to disable screensaver
; ^Pause::
; DllCall("SystemParametersInfo", Int, 17, Int, 0, UInt, NULL, Int, 2)
; MsgBox,0, Screensaver,Screensaver Disabled!,2
; return
; ;
; ;Press Printscreen to enable screensaver
; ^PrintScreen::
; DllCall("SystemParametersInfo", Int, 17, Int, 1, UInt, NULL, Int, 2)
; MsgBox,0, Screensaver,Screesaver Enabled!,2
; return


;HKEY_CURRENT_USER\Control Panel\Accessibility\HighContrast
;HKEY_CURRENT_USER\Software\Microsoft\VisualStudio\14.0_Config\Themes\{a5c004b4-2d4b-494e-bf01-45fc492522c7}
;HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes
;HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\HighContrast
;HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemSettings\SettingId\SystemSettings_Accessibility_HighContrast
;C:\Windows\Resources\Ease of Access Themes
;
;
;
;
;
;
;
;
;
