/*
Inplace Rename With Dialog Box

Preconditions:
If you want the script to also work in root, you have to activate
Configuration -> Options -> Display -> Show parent dir also in root of drive.

Hotkey:
F2 calls the rename dialog box, which is then resized and fit into the active
panel, and works as a filename selection toggle within the box, like used from
F5 and F6. If you don't like F2, you have to replace all three F2 instances in
this script with whatever hotkey you prefer, like #q for Win+Q.

Limitations:
The dialog box won't be displayed in places which are not supported by TC, like
archives, separate panels, virtual directories, network neighbourhood, etc...
Instead the script will initiate a standard inline renaming when possible,
otherwise the hotkey will be forwarded to the system and do nothing at all.
The file selection will be lost.

Attention:
Make sure that the file you want to rename is not locked, also a directory you
want to rename should not contain any locked files within, as the method used
here is a combined move/rename operation and will create file duplicates
otherwise. Test this method in a directory with a movie file which is currently
playing to understand the side effects.
*/

#IfWinActive, ahk_class TTOTAL_CMD
F2::

cm_RenameOnly := 1002
  cm_RenameSingleFile := 1007
LB_GETCURSEL := 0x188
  LB_GETITEMHEIGHT := 0x01a1
  LB_GETITEMRECT := 0x0198
  LB_GETTEXT := 0x189
  LB_GETTOPINDEX := 0x018e
  LB_SETSEL := 0x0185
  LB_SETTOPINDEX := 0x0197
VarSetCapacity(LB_String0, 10)
  VarSetCapacity(RECT, 16)
TCWin_h := WinActive("A")
WinGetPos, TCWin_PosX, TCWin_PosY,, TC_WinHeight
ControlGetFocus, Panel_id
ControlGetPos, Panel_PosX, Panel_PosY, Panel_Width, Panel_Height, %Panel_id%
SendMessage, %LB_GETTEXT%, 0, &LB_String0, %Panel_id%
SendMessage, %LB_GETCURSEL%, 0, 0, %Panel_id%
LB_CursorPosition := ErrorLevel
If (LB_CursorPosition AND (InStr(LB_String0, ".. <DIR> ") OR RegExMatch(LB_String0, "^\.{2,4}$")))
  {
    SendMessage, %LB_GETITEMHEIGHT%, 0, 0, %Panel_id%
    LB_ItemHeight := Errorlevel
    SendMessage, %LB_GETITEMRECT%, %LB_CursorPosition%, &RECT, %Panel_id%
    LB_CursorBottom := NumGet(RECT, 12, "UInt")
    LB_CursorTop := NumGet(RECT, 4, "UInt")
    If (LB_CursorTop > 0xffffff00)
      LB_CursorTop := -LB_ItemHeight, LB_CursorBottom := 0
    Else
      If (LB_CursorTop > Panel_Height)
        LB_CursorTop := Panel_Height, LB_CursorBottom := Panel_Height+LB_ItemHeight
    SendMessage, %LB_SETSEL%, 0, -1, %Panel_id%
    SendMessage, %LB_GETTOPINDEX%, 0, 0, %Panel_id%
    LB_ScrollPosition := Errorlevel
    SendMessage, %LB_SETSEL%, 1, 0, %Panel_id%
    SendMessage, %LB_SETSEL%, 1, %LB_CursorPosition%, %Panel_id%
    SendMessage, %LB_SETTOPINDEX%, %LB_ScrollPosition%, 0, %Panel_id%
    PostMessage, 1075, cm_RenameOnly
    WinWaitActive, ahk_class TCheckEditBox,, 1
    v_Timeout := Errorlevel
    If !(v_Timeout)
      {
        WinGetPos,,, RenameBox_Width, RenameBox_Height
        RenameBox_WidthNew := Panel_Width > RenameBox_Width
          ? Panel_Width
          : RenameBox_Width
        ControlGetPos,,, EditBox_Width,, TEdit1
        If (TCWin_PosX+Panel_PosX < 0)
          RenameBox_PosXNew := 0
        Else
          If (TCWin_PosX+Panel_PosX+RenameBox_WidthNew > A_ScreenWidth)
            RenameBox_PosXNew := A_ScreenWidth-RenameBox_WidthNew
          Else
            RenameBox_PosXNew := TCWin_PosX+Panel_PosX
        If (Panel_PosY+LB_CursorBottom+RenameBox_Height > TC_WinHeight)
          RenameBox_PosYNew := TCWin_PosY+Panel_PosY+LB_CursorTop-RenameBox_Height
        Else
          RenameBox_PosYNew := TCWin_PosY+Panel_PosY+LB_CursorBottom
        If (RenameBox_PosYNew+RenameBox_Height > A_ScreenHeight)
          RenameBox_PosYNew := A_ScreenHeight-RenameBox_Height
        WinSet, AlwaysOnTop, On
        WinMove,,, RenameBox_PosXNew, RenameBox_PosYNew, RenameBox_WidthNew
        ControlMove, TEdit1,,, EditBox_Width+RenameBox_WidthNew-RenameBox_Width
        SendInput, {F5}
        WinWaitActive, ahk_id %TCWin_h%
        SendMessage, %LB_SETSEL%, 0, -1, %Panel_id%
      }
    Else
      {
        SendMessage, %LB_SETSEL%, 0, -1, %Panel_id%
        PostMessage, 1075, cm_RenameSingleFile
      }
  }
Else
  SendInput, {F2}
Return

#IfWinActive, ahk_class TCheckEditBox
F2::F5
Return

#IfWinActive