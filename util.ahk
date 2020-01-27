splashOn(a, b:=1000) {
    SplashTextOn,,,%a%,
    ; SetTimer, splashOff, %b%
    Sleep, 1000
    SplashTextOff
}
coolTip(a, b:=1000) {
    Tooltip %a%
    ; SetTimer, foolTip, %b%
    Sleep, 1000
    Tooltip
}


foolTip:
ToolTip
return

splashOff:
SplashTextOff
return



MouseMove_Ellipse(X1, Y1, X2, Y2, S=1, M=0, I="") {
    MouseGetPos, X0, Y0
    If(I="") {
        Random, I, 0, 1
    }
    X1 := (X1 != "") ? X1 : X0, Y1 := (Y1 != "") ? Y1 : Y0, B := Abs(X1-X2), A := Abs(Y1-Y2), H := (X1<X2) ? ((Y1<Y2) ? ((I=0) ? X1:X2):((I=0) ? X2:X1)):((Y1<Y2) ? ((I=0) ? X2:X1):((I=0) ? X1:X2)), K := (Y1<Y2) ? ((X1<X2) ? ((I=0) ? Y2:Y1):((I=0) ? Y1:Y2)):((X1<X2) ? ((I=0) ? Y1:Y2):((I=0) ? Y2:Y1)), D := A_MouseDelay 
    SetMouseDelay, 1
    If(M) {
        BlockInput, Mouse
    }
    If(B > A) {
        Loop, % B / S {
            M := (X1 < X2) ? ((I=0) ? -1:1):((I=0) ? 1:-1), X := (X1 < X2) ? (X1+A_Index*S) : (X1-A_Index*S), Y := M*Sqrt(A**2*((X-H)**2/B**2-1)*-1)+K
            MouseMove, %X%, %Y%, 0
        }
    }
    Else {
        Loop, % A / S {
            M := (Y1 < Y2) ? ((I=0) ? 1:-1):((I=0) ? -1:1), Y := (Y1 < Y2) ? (Y1+A_Index*S) : (Y1-A_Index*S), X := M*Sqrt(B**2*(1-(Y-K)**2/A**2))+H
            MouseMove, %X%, %Y%, 0
        }
    }
    MouseMove, %X2%, %Y2%, 0
    BlockInput, Off
    SetMouseDelay, % D
}

SetCursor(Cursor = "", cx = 0, cy = 0)
{
    BlankCursor := 0, SystemCursor := 0, FileCursor := 0 ; init

    SystemCursors = 32512IDC_ARROW,32513IDC_IBEAM,32514IDC_WAIT,32515IDC_CROSS
    ,32516IDC_UPARROW,32640IDC_SIZE,32641IDC_ICON,32642IDC_SIZENWSE
    ,32643IDC_SIZENESW,32644IDC_SIZEWE,32645IDC_SIZENS,32646IDC_SIZEALL
    ,32648IDC_NO,32649IDC_HAND,32650IDC_APPSTARTING,32651IDC_HELP

    If Cursor = ; empty, so create blank cursor
    {
        VarSetCapacity(AndMask, 32*4, 0xFF), VarSetCapacity(XorMask, 32*4, 0)
        BlankCursor = 1 ; flag for later
    }
    Else If SubStr(Cursor, 1, 4) = "IDC_" ; load system cursor
    {
        Loop, Parse, SystemCursors, `, 
        {
            CursorName := SubStr(A_Loopfield, 6, 15) ; get the cursor name, no trailing space with substr
            CursorID := SubStr(A_Loopfield, 1, 5) ; get the cursor id
            SystemCursor = 1
            If (CursorName = Cursor)
            {
                CursorHandle := DllCall("LoadCursor", Uint, 0, Int, CursorID)
                Break
            }
        }
        If CursorHandle = ; invalid cursor name given
        {
            Msgbox,, SetCursor, Error: Invalid cursor name
            CursorHandle = Error
        }
    }
    Else If FileExist(Cursor)
    {
        SplitPath, Cursor,,, Ext ; auto-detect type
        If Ext = ico
            uType := 0x1
        Else If Ext in cur, ani
            uType := 0x2
        Else ; invalid file ext
        {
            Msgbox,, SetCursor, Error: Invalid file type
            CursorHandle = Error
        }
        FileCursor = 1
    }
    Else
    {
        Msgbox,, SetCursor, Error: Invalid file path or cursor name
        CursorHandle = Error ; raise for later
    }
    If CursorHandle != Error
    {
        Loop, Parse, SystemCursors, `, 
        {
            If BlankCursor = 1
            {
                Type = BlankCursor
                %Type%%A_Index% := DllCall("CreateCursor", Uint, 0, Int, 0, Int, 0, Int, 32, Int, 32, Uint, &AndMask, Uint, &XorMask)
                CursorHandle := DllCall("CopyImage", Uint, %Type%%A_Index%, Uint, 0x2, Int, 0, Int, 0, Int, 0)
                DllCall("SetSystemCursor", Uint, CursorHandle, Int, SubStr(A_Loopfield, 1, 5))
            }
            Else If SystemCursor = 1
            {
                Type = SystemCursor
                CursorHandle := DllCall("LoadCursor", Uint, 0, Int, CursorID)
                %Type%%A_Index% := DllCall("CopyImage", Uint, CursorHandle, Uint, 0x2, Int, cx, Int, cy, Uint, 0)
                CursorHandle := DllCall("CopyImage", Uint, %Type%%A_Index%, Uint, 0x2, Int, 0, Int, 0, Int, 0)
                DllCall("SetSystemCursor", Uint, CursorHandle, Int, SubStr(A_Loopfield, 1, 5))
            }
            Else If FileCursor = 1
            {
                Type = FileCursor
                %Type%%A_Index% := DllCall("LoadImageA", UInt, 0, Str, Cursor, UInt, uType, Int, cx, Int, cy, UInt, 0x10)
                DllCall("SetSystemCursor", Uint, %Type%%A_Index%, Int, SubStr(A_Loopfield, 1, 5))
            }
        }
    }
}
RestoreCursor()
{
    SPI_SETCURSORS := 0x57
    DllCall("SystemParametersInfo", UInt, SPI_SETCURSORS, UInt, 0, UInt, 0, UInt, 0)
}
