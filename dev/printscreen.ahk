; The PrintScreen button auto opens Paint and pastes it into the canvas. (it also saves your current clipboard)
; PrintScreen::
; clipsave = %clipboard%
; Send, #{PRINTSCREEN}
; Run, mspaint.exe
; WinWaitActive ahk_class MSPaintApp
; {
; Send, ^v
; }
; clipboard = %clipsave%
; coolTip("screen printed!")
; return

#WinActivateForce

PrintScreen::
Run, C:\\Windows\\System32\\SnippingTool.exe, %A_WorkingDir%, max
WinSet, AlwaysOnTop, On, Snipping Tool
WinSet, Top
WinActivate, Snipping Tool
; Coordmode, Mouse, RelativeMouseClick
; Send, {click 30, 30}
; Coordmode, Mouse

; Sleep, 1000
Send, !n
; Sleep, 1000
Send, {down 2}
Send, {enter}
; Sleep, 1000

; ControlGet, List, List, Selected, ToolbarWindow321, Snipping
; ControlGetText, OutputVar
; MsgBox %List% %OutputVar%
; Loop, Parse, List, \n
; {
;     RowNumber := A_Index
;     Loop, Parse, A_LoopField, %A_Tab%
;         MsgBox Row #%RowNumber% Col #%A_Index% is %A_LoopField%.
; }
return

