~NumLock::
~CapsLock::
~ScrollLock::
While GetKeyState(SubStr(A_ThisHotkey, 2), "P")
ToolTip, % "Num Lock: " (GetKeyState("NumLock", "T") ? "On" : "Off") "`nCaps Lock: " (GetKeyState("CapsLock", "T") ? "On" : "Off") "`nScroll Lock: " (GetKeyState("ScrollLock", "T") ? "On" : "Off")
Sleep, 1000
Tooltip
Return