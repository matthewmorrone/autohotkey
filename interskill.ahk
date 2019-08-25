#IfWinActive, *** ahk_exe chrome.exe

; Space::
; if (isWindowFullScreen(WinExist("A"))) {
;   Send {click 1750, 1050}
; }
; else {
;   Send {click 1800, 1000}
; }
; return

Left::
if (isWindowFullScreen(WinExist("A"))) {
  ClickAndReturn(1825, 1050)
}
else {
  ClickAndReturn(1850, 1000)
}
return

Right::
if (isWindowFullScreen(WinExist("A"))) {
  ClickAndReturn(1900, 1050)
}
else {
  ClickAndReturn(1900, 1000)
}
return

#IfWinActive