
#Include *i passwords.ahk

#Hotstring C ? *



::afaik::as far as I know
::brb::be right back
::btw::by the way
::_::{Asc 0151} ; em dash

::m@1::matthewmorrone1
::m@2::matthewmorrone1@gmail.com
::....::{U+2026}

::-|-::{U+0CA0}_{U+0CA0}


::`"::{U+0308}
^'::
send {"}
return



; ::`'`'`'`'`'::"
; #`'::""
; :?*:''::"{Space}



#IfWinActive Sublime

; for js
::,+::{+}' '{+}


::fff::ffffff

; ::000::000000

; ::vlog::var log = console.log.bind(console); {enter}
; ::clog::console.log();{left 2}
; ::clog::
; Clipboard =
; Send {up}
; Send ^c
; ClipWait
; StringReplace, Clipboard, Clipboard, `r`n,, All
; Clipboard := Trim(Clipboard)
; msgbox %clipboard%

; if Clipboard =
; {
;     Send {up}
;     Send ^c
;     ClipWait
;     StringReplace, Clipboard, Clipboard, `r`n,, All
; 		Clipboard := Trim(Clipboard)
;     msgbox %clipboard%
; }
; Send {down 2}
; Send ^v
; Send {home}
; Send console.log("
; Send {end}
; Send ",%A_Space%
; Send ^v
; Send );
; return









::cclear::console.clear();{enter}
::cgroup::console.groupCollapsed(){enter 2}console.groupEnd(){up}{tab}

; for php
:b0:echo:: ."{`\}{n}"; {left 7}
::pr(::print_r(); {left 3}
::pre(::echo "<pre>"; echo "</pre>"; {left 15}{enter 2}{up}print_r(); {left 3}
      
      
; for C#
::csbreak::System.Diagnostics.Debugger.Break();

#IfWinActive

#Hotstring C0 ?0 *0




#Include *i unicode.ahk
#Include *i html-entities.ahk
#Include *i tag.ahk

; #Include *i hotstrings/woopsies.ahk
; in case of 
:*:woopsies::
ExitApp
return
