InputBox, UserInput, Default AutoHotKey Editor change, Please enter a full path name for your editor
if ErrorLevel
    MsgBox, Ah... Don't want - so bye :)
else
{
    MsgBox, Changing default AutoHotKey editor to "%UserInput%"
	RegWrite, REG_SZ, HKEY_CLASSES_ROOT, AutoHotkeyScript\Shell\Edit\Command,, "C:\Program Files\Sublime Text 3\sublime_text.exe" "`%1"
}
