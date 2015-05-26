
; switch the ctrl and alt buttons for ergonomic ease
LAlt::LCtrl
LCtrl::LAlt
RAlt::RCtrl
RCtrl::RAlt

; RButton::Click Left
; RButton::return
; XButton1::Click Right
; MButton::Click Right
; C:\Program Files\Sublime Text 3\sublime_text.exe %1

; use the rightclick button as the window button
AppsKey::LWin
^AppsKey::
send {AppsKey}
return

; disable insert button
Insert::return

; CL = false
; ~CapsLock::
; 	Send {enter}
; 	CL = !CL
; return

CapsLock::       Send {enter}
CapsLock & `::   Send {backspace}
CapsLock & Tab:: Send {delete}

; Enter & Tab:: Send {}
Enter & Backspace:: Send {Delete}