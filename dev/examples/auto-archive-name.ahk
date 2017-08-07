IfWinActive, ahk_class TTOTAL_CMD
{
    ; set variable
    UseName = 1


    ; clear clipboard
    clipboard =

    ; Copy paths and file names of selected files to clipboard
    ; (Total Commander function cm_CopyToClipboard).
    PostMessage, 1075, 2008

    ; Wait for clipboard to be filled
    ClipWait


    ; Process each file name
    Loop, Parse, Clipboard, `n, `r
    {
        ; Cut path and extension
        SplitPath, A_LoopField, FileName, Extension, Dir, FileNameNoExt

        ; Use first name for comparison
        if (FirstName = "") {
            FirstName = %FileNameNoExt%
        } else {
            ; Look, if there is a different file name
            if (FileNameNoExt <> FirstName) {
                UseName = 0
            }
        }
    }


    ; If all names are the same, use this name for the archive file, else quit
    if (UseName = 0) {
        MsgBox, File names are different`, Abort!
    } else {
        Clipboard = zip:%FirstName%.zip
        PostMessage, 1075, 508
        Send ^v
    }
}
Return