; Command Line:
; You can run a .SMR File with Command Line by using the .SMR File as the parameter. Here is an example in AHK:
; RunWait, Mouse Recorder.exe "MyScript.smr"
; PlaySMR() Function:
; This function allows you to execute Mouse Recorder Code in your AHK Script. You could either specify the SMR File Path as the function parameter, or copy & paste the Mouse Recorder Code into your AHK script with the Copy menu item.
PlaySMR(script, relative="") {
   batchLines:=A_BatchLines, x:=y:=0
   SetBatchLines, -1
   if FileExist(script)
      FileRead, script, %script%
   if relative
      WinGetPos, x, y, , , A  
   Loop, Parse, script, .
   {
      if RegExMatch(A_LoopField,"(\d+),(\d+)",p) {
         DllCall("SetCursorPos", "Int",x+p1, "Int",y+p2)
         StoredX:=p1, StoredY:=p2
      }
      else if (A_LoopField = "+")
         DllCall("SetCursorPos", "Int",StoredX, "Int",StoredY)
      else
         Send {%A_LoopField%}
      Sleep 10
   }
   SetBatchLines, %batchLines%
}
;# NOTE: set the second Parameter as true to make the Mouse Movements relative to the active window