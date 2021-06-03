

*~LButton
*~RButton
*~MButton
*~WheelDown
*~WheelUp
*~WheelLeft
*~WheelRight
*~XButton1
*~XButton2

*~Space
*~Tab
*~Enter; (or Return)
*~Escape; (or Esc)
*~Backspace; (or BS)

*~Delete; (or Del)
*~Insert; (or Ins)
*~Home
*~End
*~PgUp
*~PgDn
*~Up
*~Down
*~Left
*~Right

*~ScrollLock
*~CapsLock
*~NumLock

*~Numpad0
*~Numpad1
*~Numpad2
*~Numpad3
*~Numpad4
*~Numpad5
*~Numpad6
*~Numpad7
*~Numpad8
*~Numpad9
*~NumpadAdd ;(+)
*~NumpadClear
*~NumpadDel
*~NumpadDiv ;(/)
*~NumpadDot ;(.)
*~NumpadDown
*~NumpadEnd
*~NumpadEnter
*~NumpadHome
*~NumpadIns
*~NumpadLeft
*~NumpadMult ;(*)
*~NumpadPgDn
*~NumpadPgUp
*~NumpadRight
*~NumpadSub ;(-)
*~NumpadUp

*~F1
*~F2
*~F3
*~F4
*~F5
*~F6
*~F7
*~F8
*~F9
*~F10
*~F11
*~F12
*~F13
*~F14
*~F15
*~F16
*~F17
*~F18
*~F19
*~F20
*~F21
*~F22
*~F23
*~F24

*~AppsKey

*~LWin
*~RWin ;Win
*~Ctrl ;Control
*~Alt
*~Shift

*~LCtrl ;(or LControl)
*~RCtrl ;(or RControl)
*~LShift
*~RShift
*~LAlt
*~RAlt

*~PrintScreen
*~CtrlBreak
; *~Pause
*~Break ;^CtrlBreak

; *~Help 
; *~Sleep

*~Browser_Back
*~Browser_Forward
*~Browser_Refresh
*~Browser_Stop
*~Browser_Search
*~Browser_Favorites
*~Browser_Home
*~Volume_Mute
*~Volume_Down
*~Volume_Up
*~Media_Next
*~Media_Prev
*~Media_Stop
*~Media_Play_Pause
*~Launch_Mail
*~Launch_Media
*~Launch_App1
*~Launch_App2



; CapsLock
; Space
; Tab
; Enter
; Escape
; Backspace
; Ctrl
; Alt
; Shift

; ScrollLock
; Delete
; Insert
; Home
; End
; PgUp
; PgDn
; Up
; Down
; Left
; Right

; LWin
; RWin
; Ctrl
; Alt
; Shift
; LCtrl
; RCtrl
; LShift
; RShift
; LAlt
; RAlt





; AnyKeyPressed() ; returns a 1 if any keyboard key is pressed, else returns 0
; {
;     if(A_TimeIdlePhysical < 25)
;         return 1
;     return 0
; }

; SetTimer, CheckActivity, 1000

; CheckActivity:
;     if(A_TimeIdlePhysical < 100) {
;         ; Input, SingleKey, L1, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause}
;         ToolTip Hello
;         sleep 1000
;         ToolTip

;         SetTimer, CheckActivity, 1000
;     }
; return


; AnyKeyPressed() ; returns a 1 if any keyboard key is pressed, else returns 0
; {
;     if(A_TimeIdlePhysical < 25)
;         return 1
;     return 0
; }













~$Enter::
    MouseGetPos,,,OutWin,OutCtrl
    WinGet, active_id, ID, A




    WinActivate, ahk_id %OutWin%








    If %OutWin% == %active_id% 
    {

        
    }
    Else
    {
        Send, {Enter}
    }


return





    ; tp := TypeOf(OutWin)
    ; coolTip(OutWin . " " . active_id . " " . tp)
    ; coolTip(tp)



~$Del::
    MouseGetPos,,,OutWin,OutCtrl
    WinActivate, ahk_id %OutWin%
    ; Send, {Del}
return





~$Backspace::
    MouseGetPos,,,OutWin,OutCtrl
    WinActivate, ahk_id %OutWin%
    ; Send, {Del}
return









IsType(p_Input, p_Type)
{


    If InStr("integer,float,number,digit,xdigit,alpha,upper,lower,alnum,space,time",p_Type,false)
        If p_Input is %p_Type%
            Return 1
    Return 0
}

TypeOf(p_Input)
{


alltypes := "integer,float,number,string,digit,xdigit,alpha,upper,lower,alnum,space,time"



StringSplit, types, alltypes, \,
Loop 11
{
    meh := false


    ; cooltip(a_index . " " . types%a_index%)
    If p_Input is types%a_index%
        meh := true

    cooltip(p_Input . " " . a_index . " " . types%a_index% . " " . meh)







        ; return types%a_index%
}
    ; If InStr("integer,float,number,digit,xdigit,alpha,upper,lower,alnum,space,time",p_Type,false)
    ;     Return %p_Type%            
    ; Return ""
}

; Space::
; SetTimer, Anykey, 1000
; return

; AnyKey()
; {
;     Input, AnyKey, L1
;     ToolTip %AnyKey%
;     sleep 1000
;     ToolTip
;     ; MsgBox
;     Send {%AnyKey%}
;     Return
; }

; !Esc::
; Loop
; {
;     if (BreakLoop = 1)
;         break
;     KeyWait, a
;     ; Send {%AnyKey%}
;     ToolTip a
;     Sleep 1000
;     Tooltip
; }
; return
; Esc::
;     BreakLoop = 1
; return

; Loop
; {
;     AnyKey()
; }




; KeyWait, CapsLock
; KeyWait, Space
; KeyWait, Tab
; KeyWait, Enter
; KeyWait, Escape
; KeyWait, Backspace
; KeyWait, Ctrl
; KeyWait, Alt
; KeyWait, Shift