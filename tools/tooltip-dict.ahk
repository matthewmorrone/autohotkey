; _______________________________________________________
;
;    Usage: Highlight a word or a phrase and press
;           the middle mouse button to display a
;           translation retrieved from:
;                http://lookwayup.com/
;
; _______________________________________________________

#UseHook

; _______________________________________________________
;
;    mousetol:  The final tool tip will vanish if
;               the mouse is moved more then %moustol%
;               pixels away from the current position
; _______________________________________________________

mousetol = 3;

; _______________________________________________________
;
;    Some variables to shorten the scripts somewhat:
;       wordtypeshort: the letters used by lookwayup
;                      to mark certain wordtypes
;       wordtypelong : what the letters actual mean
;       typecount    : how many types do we have?
;
;    Note: If there should be types I have forgotten
;          the script will pop up a message box
;          displaying the missing letter. It can be
;          easily included in wordtypeshort and
;          wordtypelong.
; _______________________________________________________

wordtypeshort = vnarpocd
wordtypelong = verb|noun|adjective|adverb|preposition|pronoun|conjunction|determiner

tempfile = tooltipdic.ttd

StringLen, typecount, wordtypeshort

; _______________________________________________________
;
;    Variables to refine HTML Unicode which occurs
;    sometimes. If you should come about more than
;    those you can add them here.
; _______________________________________________________

replace = "|'
substitute = "'

offset = 0

return



; _______________________________________________________
; 
;    Actual script start here
; _______________________________________________________

MButton::
   Begin:
   d =
   If offset = 0
   {
      temp = %clipboard%
      clipboard =
      Send, ^c

      If clipboard =
      {
         clipboard = %temp%
         temp =
         return
      }
      Else
      {
        lookup = %clipboard%
        clipboard = %temp%
        temp =
      }   
      ToolTip, Retrieving information on "%lookup%"...
   }
   Else
   {
      ToolTip, Retrieving more information on "%lookup%"...
      d = &d=%offset%
   }

   ; _______________________________________________________
   ;
   ;    Fetch dictionary entry
   ; _______________________________________________________

   FileDelete, %tempfile%
   URLDownloadToFile, http://lookwayup.com/lwu.exe//lwu/d?w=%lookup%%d%, %tempfile%
   
   IfNotExist, %tempfile%
   {
      ToolTip, Sorry`, connection timed out.`nTry again later.
      MouseGetPos, X, Y
      GoTo, ToolTipDelete
   }
   
   entry = 0
   more = 0
   
   ; _______________________________________________________
   ; 
   ;    Prepare strings for different word types
   ; _______________________________________________________

   Loop, parse, wordtypelong, |
   {
      StringMid, type, wordtypeshort, %A_Index%, 1
      %type%_entry = %A_LoopField%`n
      If offset = 0
         %type%_count = 0
      %type%_found = 0
   }
   
   wordfound = yes
   Loop, Read, %tempfile%
   {
      IfInString, A_LoopReadLine, <h4>
      {
         StringTrimLeft, displayed, A_LoopReadLine, 4
         StringGetPos, trim, displayed, </h4>
         StringLeft, displayed, displayed, trim
         If offset > 0
            displayed = %displayed%%A_Space%(continued)
      }
      IfInString, A_LoopReadLine, colspan=2
         entry = 0
      IfInString, A_LoopReadLine, not found
         {
            wordfound = no
            break
         }
      If entry = 1
      {
         line = %A_LoopReadLine%
         IfNotEqual, line,
         {
            IfInString, line, VALIGN
            {
               StringRight, type, line, 2
               StringLeft, type, type, 1
               IfNotInString, wordtypeshort, %type%
                  MsgBox, Unsupported type (%type%) discovered!
            }  
            Else
            {
               StringGetPos, trim, line, <A HREF
               tofetch := trim - 1
               StringLeft, def, line, tofetch
               ++%type%_count
               %type%_found = 1
               temp := %type%_entry
               count := %type%_count
               %type%_entry = %temp%%count%.%A_Space%%def%`n
            }
         }
      }
      IfInString, A_LoopReadLine, CELLPADDING=1
         entry = 1
      IfInString, A_LoopReadLine, More senses
         more = 1
   }
   
   MouseGetPos, X, Y

   ; _______________________________________________________
   ;
   ;    Output any word type which was found
   ; _______________________________________________________

   
   full_entry = %displayed%`n
   If wordfound = yes
   {
     Loop, %typecount%
     {
        StringMid, type, wordtypeshort, %A_Index%, 1
        If %type%_found = 1
        {
           refd := refine(%type%_entry)
           full_entry = %full_entry%`n%refd%
        }
     }
     If more = 1
     {
        full_entry = %full_entry%`n>> left click to display more <<
        ++offset
     }
     ToolTip, %full_entry%
   }
   Else
     ToolTip, Sorry`, no match found.
   
   ; _______________________________________________________
   ;  
   ;    Wait for mouse movement to delete ToolTip.
   ;    If there is more to display also detect, if
   ;    the left mouse button is clicked.
   ; _______________________________________________________
  
   ToolTipDelete:
  
   Loop
   {
     MouseGetPos, Xn, Yn
     Sleep, 50
     If (Abs(X - Xn) > mousetol || Abs(Y - Yn) > mousetol)
        break
     If more = 1
     {
        GetKeyState, LB, LButton
        If LB = D
        {
           more = 0
           GoTo Begin                   ; Go back and start it all over again
                                        ; to display the next page
        }
     }  
   }
   offset = 0
   ToolTip
   
return



; _______________________________________________________
;  
;    Replace HTML code with appropriate characters
;    (see beginning of the script for the strings
;     replace and substitute)
; _______________________________________________________

Refine(html)
{
   Global replace
   Global substitute

   Loop, parse, replace, |
   {
      StringMid, subs, substitute, %A_Index%, 1
      StringReplace, html, html, %A_LoopField%, %subs%, 1
   }
   return, html
}