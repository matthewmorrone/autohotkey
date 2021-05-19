mousedrag_treshold := 20 ; pixels
middleclick_available := 15 ; seconds

Hotkey mbutton, paste_selection
Hotkey mbutton, off
Hotkey rbutton, cancel_paste
Hotkey rbutton, off
    
    
#IfWinNotActive ahk_class ConsoleWindowClass
~lButton::
  MouseGetPos, mousedrag_x, mousedrag_y
  keywait lbutton
  mousegetpos, mousedrag_x2, mousedrag_y2
  if (abs(mousedrag_x2 - mousedrag_x) > mousedrag_treshold
    or abs(mousedrag_y2 - mousedrag_y) > mousedrag_treshold)
  {
    wingetclass class, A
    if (class == "Emacs")
      sendinput !w
    else
      sendinput ^c
    settimer follow_mouse, 100
    settimer cleanup, % middleclick_available * 1000
    hotkey mbutton, on
    hotkey rbutton, on
  }
  return
#IfWinNotActive
  
  
follow_mouse:
  tooltip copy
  return
  
paste_selection:
  sendinput {lbutton}
  WinGetClass class, A
  if (class == "Emacs")
    SendInput ^y
  else
    SendInput ^v
  gosub cleanup
  return
  
cancel_paste:
  sendinput {rbutton}
  gosub cleanup
  return  
  
cleanup:
  Hotkey mbutton, off
  Hotkey rbutton, off
  SetTimer cleanup, off
  settimer follow_mouse, off
  tooltip
  Return
  
  
;; clipx
^mbutton::
  sendinput ^+{insert}
  return