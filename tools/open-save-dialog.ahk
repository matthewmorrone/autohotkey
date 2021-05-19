#s::
 if (DialogWindowActive())
   Send, Enter

return

DialogWindowActive()
{	
	WinGet, active_hwnd, ID, A
	{
		if ( IsDialog( active_hwnd ) )
			return 1
		else 
			return 0
	}	

	return 0
}

;------------------------------------------------------------------------------------------------

IsDialog(dlg)
{

	local toolbar, edit, combo, button

	toolbar := FindWindowExID(dlg, "ToolbarWindow32", "0x440")	  ;windows XP
	if (toolbar = "0")
		toolbar := FindWindowExID(dlg, "ToolbarWindow32", "0x001")  ;windows 2k

	edit   := FindWindowExID(dlg, "Edit", "0x480")			; edit field
	combo  := FindWindowExID(dlg, "ComboBoxEx32", "0x47C")	; comboboxex field
	button := FindWindowExID(dlg, "Button", "0x001")		; second button


	if (toolbar && (combo || edit) && button) 
		return 1
	else
		return 0
}


;------------------------------------------------------------------------------------------------
; Iterate through controls with the same class, find the one with ctrlID and return its handle
; Used for finding a specific control on a dialog

FindWindowExID(dlg, className, ctrlId)
{
	local ctrl, id

	ctrl = 0
	Loop
	{
		ctrl := DllCall("FindWindowEx", "uint", dlg, "uint", ctrl, "str", className, "uint", 0 )
		if (ctrlId = "0")
		{
			return ctrl
		}

		if (ctrl != "0")
		{
			id := DllCall( "GetDlgCtrlID", "uint", ctrl )
			if (id = ctrlId) 
				return ctrl				
		}
		else 
			return 0
	}
}