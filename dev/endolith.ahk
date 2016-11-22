;------------------------------------------------------------------------------
; Disable Insert key
;------------------------------------------------------------------------------
$Insert::return
!Insert::Send, {Insert} ; Use Alt+Insert to toggle the 'Insert mode'

;------------------------------------------------------------------------------
; Hand tool with middle button in Adobe Reader
;------------------------------------------------------------------------------
#IfWinActive ahk_class AdobeAcrobat
Mbutton::
#IfWinActive ahk_class AcrobatSDIWindow
Mbutton::
#IfWinActive ahk_class DSUI:PDFXCViewer
Mbutton::
Send {Space down}{LButton down}  ; Hold down the left mouse button.
KeyWait Mbutton  ; Wait for the user to release the middle button.
Send {LButton up}{Space up}  ; Release the left mouse button.
return
#IfWinActive

;------------------------------------------------------------------------------
; Hand tool with middle button in Sumatra PDF
;------------------------------------------------------------------------------
#IfWinActive ahk_class SUMATRA_PDF_FRAME
Mbutton::
Send {RButton down}  ; Hold down the left mouse button.
KeyWait Mbutton  ; Wait for the user to release the middle button.
Send {RButton up}  ; Release the left mouse button.
return
#IfWinActive

;------------------------------------------------------------------------------
; Ctrl+Q closes Firefox
;------------------------------------------------------------------------------
#IfWinActive ahk_class MozillaWindowClass
^q::
Send !f
Send !x
return
#IfWinActive

;------------------------------------------------------------------------------
; Ctrl+W closes tabs in IAR compiler or TINA-TI
;------------------------------------------------------------------------------
#IfWinActive IAR Embedded Workbench IDE
^w::
#IfWinActive ahk_class TSchematicEditor
^w::
Send ^{F4}
return
#IfWinActive

;------------------------------------------------------------------------------
; WINDOWS KEY + H TOGGLES HIDDEN FILES
; from http://www.howtogeek.com/howto/keyboard-ninja/keyboard-ninja-toggle-hidden-files-with-a-shortcut-key-in-windows/
;------------------------------------------------------------------------------
#h::
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
If HiddenFiles_Status = 2 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
Else 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
WinGetClass, eh_Class,A
If (eh_Class = "#32770" OR A_OSVersion = "WIN_VISTA" OR A_OSVersion = "WIN_7")
send, {F5}
Else PostMessage, 0x111, 28931,,, A
Return

;------------------------------------------------------------------------------
; WINDOWS KEY + Y TOGGLES FILE EXTENSIONS
; from http://www.howtogeek.com/howto/windows-vista/keyboard-ninja-toggle-file-extension-display-with-a-shortcut-key-in-windows/
;------------------------------------------------------------------------------
#y::
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
If HiddenFiles_Status = 1 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
Else 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1
WinGetClass, eh_Class,A
If (eh_Class = "#32770" OR A_OSVersion = "WIN_VISTA" OR A_OSVersion = "WIN_7")
send, {F5}
Else PostMessage, 0x111, 28931,,, A
Return

;------------------------------------------------------------------------------
; Google text from any app
; from http://superuser.com/questions/7271/most-useful-autohotkey-scripts/165220#165220
;------------------------------------------------------------------------------
#s::
MyClip := ClipboardAll
Clipboard = ; empty the clipboard
Send, ^c
ClipWait, 2
if ErrorLevel  ; ClipWait timed out.
{
    return
}
if RegExMatch(Clipboard, "^(https?://|www\.)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(/\S*)?$")
{
    Run % Clipboard
}
else
{
    ; Modify some characters that screw up the URL
    ; RFC 3986 section 2.2 Reserved Characters (January 2005):  !*'();:@&=+$,/?#[]
    StringReplace, Clipboard, Clipboard, `r`n, %A_Space%, All
    StringReplace, Clipboard, Clipboard, #, `%23, All
    StringReplace, Clipboard, Clipboard, &, `%26, All
    StringReplace, Clipboard, Clipboard, +, `%2b, All
    StringReplace, Clipboard, Clipboard, ", `%22, All
    Run % "http://www.google.com/#hl=en&q=" . clipboard ; uriEncode(clipboard)
}
Clipboard := MyClip
return

;------------------------------------------------------------------------------
; Google translate selected text
;------------------------------------------------------------------------------
#g::
MyClip := ClipboardAll
Clipboard = ; empty the clipboard
Send, ^c
ClipWait, 2
if ErrorLevel  ; ClipWait timed out.
{
    return
}
StringReplace, Clipboard, Clipboard, `%, `%25, All ; has to come first
StringReplace, Clipboard, Clipboard, `r`n, `%0A, All
Run % "http://translate.google.com/#auto|en|" . clipboard ; uriEncode(clipboard)
Clipboard := MyClip
return

;------------------------------------------------------------------------------
; Shortcuts that do not fall under misspellings or typos
; (otherwise in AutoCorrect.ahk)
;------------------------------------------------------------------------------

; c = case sensitive
; c1 = ignore the case that was typed, always use the same case for output
; * = immediate change (no need for space, period, or enter)
; ? = triggered even when the character typed immediately before it is alphanumeric
; r = raw output

; Thunderbird autocorrect uses |c → ©, MS Word uses (c) → ©
; I don't know where | prefix comes from, but I am also adopting it as an 
; "escape character" for literal symbols that might otherwise want to be 
; written out.  "pi" vs "π". for instance.  Could also use ~ or something.

; Alternately, HTML entity references like "asymp" that are not otherwise words can safely be used alone?
; en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references#Character_entity_references_in_HTML
; But it's easier to just use the pipe character, so I've largely abandoned this

;------------------------------------------------------------------------------
; Science/engineering
;------------------------------------------------------------------------------
; Resistances using Greek uppercase omega character, not 
; Unicode ohm sign (which only exists for backwards compatibility)
:c1*:kohm::kΩ ; kiloohm
:c1*:okhm::kΩ ; kiloohm
:c1*:mohm::MΩ ; megaohm
:c1*:gohm::GΩ ; gigaohm
:c1*:tohm::TΩ ; teraohm
:*:|ohm::Ω
; :*:ohm::Ω   ; not sure if want
; :*:ohms::Ω  

; micro- prefix using Unicode micro sign (µ), not mu character (μ)
:c*:uA::µA ; microamp
:c*:uF::µF ; microfarad
:c*:uH::µH ; microhenry  - needs to be case sensitive - "uh" is a word
:c*:uV::µV ; microvolt
:c*:uW::µW ; microwatt
:c*:uPa::µPa ; micropascal
:*:|um::µm
::microm::µm ; micrometer or micron
:*:|micron::µm
:*:|us::µs   ; microsecond
:*:usec::µs
:*c:uS::µS   ; microsiemens

; :c*:MWe::MWₑ ; Probably a bad idea

:c1:pf::pF ; picofarad
:c1:nf::nF ; nanofarad
; :c:mv::mV ; millivolt - conflicts with bash command
:c:nv::nV ; nanovolt
:*?:degC::°C ; degrees Celsius
:*?:degF::°F ; degrees Fahrenheit
:*?:|deg::° ; degree symbol
:*:rthz::√Hz ; square root of hertz
:r:thdn::THD+N ; total harmonic distortion and noise
::|diam::⌀ ; diameter symbol - alternately could be "Latin small letter o with stroke" (ø) if no font support
::m^2::m²  ; Maybe a bad idea
; ::1/4"::¼" ; Probably a bad idea 
; ::1/4"::¼″ ; technically should be a double prime

; add Unicode non-breaking spaces before units?  or is that too pedantic?

;------------------------------------------------------------------------------
; Math
;------------------------------------------------------------------------------
:?*:+-::±		; plus-or-minus sign
:?:|-::−		; true minus sign
:?:|minus::−	; true minus sign
:?:|x::×		; true times sign
:?:|times::×
::divby::÷  ; division sign or obelus
::./.::÷    ; any conflicts?
:?:|*::⋅		; "dot operator" (&sdot;), for multiplication, dot product

; sdot   ⋅ U+22C5 HTMLsymbol dot operator ('dot operator' is NOT the same character as U+00B7 'middle dot'.)

; Experimental:
:?:1x::1×
:?:2x::2×
:?:3x::3×
:?:4x::4×
:?:5x::5×
:?:6x::6×
:?:7x::7×
:?:8x::8×
:?:9x::9×

; "Unicode also includes a handful of vulgar fractions as compatibility characters, but discourages their use."
::|1/2::½
::|1/4::¼
::|3/4::¾


::|>=::≥   ; '>=' conflicts with usage in programming.  Alternatively, it could specify different rules for code windows.
::|<=::≤
::|!=::≠ ; not equal to
::|>>::≫ ; much greater than
::|<<::≪ ; much less than
::|!=::≠
::notequal::≠
::approx::≈ ; approximately equal to
::asymp::≈
::|~::≈
::|propto::∝ ; proportional to
::|=-::≡     ; mathematical identity
::|===::≡
::|propersubset::⊂    ;	SUBSET OF
::|propersuperset::⊃	;	SUPERSET OF
::|notsubset::⊄	;	NOT A SUBSET OF
::|subset::⊆	;	SUBSET OF OR EQUAL TO
::|superset::⊇	;	SUPERSET OF OR EQUAL TO 

; superscripts and subscripts from HTML entity names sup2 and sup3
; Examples: km² V₊ V₋ CuSO₄·5H₂O or ²³⁸U (hard to type, ugly, but actually used, according to Google)
; Alternate notation: x^2 → x², x_2 → x₂
; Of course, that would conflict with programming variable names like max_3
; There's also ⁼⁽⁾₌₍₎ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖʳˢᵗᵘᵛʷˣʸᶻᴬᴮᴰᴱᴳᴴᴵᴶᴷᴸᴹᴺᴼᴾᴿᵀᵁⱽᵂₐₑₕᵢₖₗₘₙₒₚᵣₛₜᵤᵥₓᵅᵝᵞᵟᵋᶿᶥᶲᵠᵡᵦᵧᵨᵩᵪ
:?:sup0::⁰
:?:sup1::¹
:?:sup2::² ; common
:?:sup3::³ ; common
:?:sup4::⁴
:?:sup5::⁵
:?:sup6::⁶
:?:sup7::⁷
:?:sup8::⁸
:?:sup9::⁹
:?:sup+::⁺
:?:sup-::⁻
:?:supn::ⁿ
:?:supi::ⁱ

:?:sub0::₀
:?:sub1::₁
:?:sub2::₂
:?:sub3::₃
:?:sub4::₄
:?:sub5::₅
:?:sub6::₆
:?:sub7::₇
:?:sub8::₈
:?:sub9::₉
:?:sub+::₊
:?:sub-::₋

::|sqrt::√ ; square root
::radic::√
::|inf::∞

; Greek characters for math, etc.
:C:|Alpha::Α
:C:|Beta::Β
:C:|Gamma::Γ
:C:|Delta::Δ
:C:|Epsilon::Ε
:C:|Zeta::Ζ
:C:|Eta::Η
:C:|Theta::Θ
:C:|Iota::Ι
:C:|Kappa::Κ
:C:|Lambda::Λ
:C:|Mu::Μ
:C:|Nu::Ν
:C:|Xi::Ξ
:C:|Omicron::Ο
:C:|Pi::Π
:C:|Rho::Ρ
:C:|Sigma::Σ
:C:|Tau::Τ
:C:|Upsilon::Υ
:C:|Phi::Φ
:C:|Chi::Χ
:C:|Psi::Ψ
:C*:|Omega::Ω
:C:|alpha::α
:C:|beta::β
:C:|gamma::γ
:C:|delta::δ
:C:|epsilon::ε
:C:|zeta::ζ
:C:|eta::η
:C:|theta::θ
:C:|iota::ι
:C:|kappa::κ
:C:|lambda::λ
:C:|mu::μ
:C:|nu::ν
:C:|xi::ξ
:C:|omicron::ο
:C?:|pi::π
:C:|rho::ρ
:C:|sigmaf::ς
:C:|sigma::σ
:C:|tau::τ
:C:|upsilon::υ
:C:|phi::φ
:C:|chi::χ
:C:|psi::ψ
:C*:|omega::ω
:C*:|thetasym::ϑ
:C:|upsih::ϒ
:C:|piv::ϖ

;------------------------------------------------------------------------------
; Typography / symbols
;------------------------------------------------------------------------------
::|c::©   ; copyright symbol
::(c)::©
::|r::®   ; registered symbol
::(r)::®
::|s::§   ; section symbol
::(tm)::™ ; trademark symbol

:c:|o::• 	; bullet
::|bull::•
::|bullet::•
:c:|O::● ; black circle
::|()::○ ; white circle

; these don't work due to minus sign. needs to ignore dashes as closing characters for just these. also hard to remember since -- is usually em.
;::|--::–  	; en dash –
;::|---::— 	; em dash —
::|en::–
::|em::—
; ¦ ; broken bar
:?*:|cent::¢ ; cents symbol

; middot · U+00B7 HTMLlat1   middle dot (= Georgian comma = Greek middle dot)
:?:|.::·		; "middle dot" (&middot;), for interword separation, punctuation, ???
::|...::… ; Doesn't work due to above

; Arrows
:?*:-->::→
:?*:==>::⇒
:?*:<--::←
:?*:<==::⇐
:?*:<->::↔
:?*:<=>::⇔
::|^::↑
::|v::↓

; Special characters
;:r:|nbsp:: ; Doesn't work?

;------------------------------------------------------------------------------
; Emoticons
;------------------------------------------------------------------------------
::0_0::ಠ_ಠ ; look of disapproval
::|<3::♥
::(:))::☺
::|:)::☺
::(:()::☹
::|:(::☹
::|snowman::☃
::|skull::☠
::|music::♪♫
:r:|hug::(>^_^)> <(^.^<)
::|nerd::□_□

;------------------------------------------------------------------------------
; HTML shortcuts
;------------------------------------------------------------------------------
:*b0:|bq::{bs 3}<blockquote></blockquote>{left 13}
; :*:|bq::<blockquote>
:*:|/bq::</blockquote>
:*:|\bq::</blockquote>

:*b0:|qu::{bs 3}[QUOTE][/QUOTE]{left 8}
:*:|/qu::[/QUOTE]
:*:|\qu::[/QUOTE]

:*b0:<em>::</em>{left 5}

;------------------------------------------------------------------------------
; Insert timestamp
;------------------------------------------------------------------------------
; Should be a keyboard shortcut or a phrase?
; Needs to be compatible with spreadsheet formats

+!d:: ;Shift-Alt-D: Insert current date and time stamp
FormatTime, T, %A_Now%, yyyy-MM-dd hh:mm:ss tt ; 2012-01-24 10:54:31 PM - works in LibreOffice, Google Spreadsheet, Excel
SendInput %T%
return

::|date:: ;Insert current date
FormatTime, T, %A_Now%, yyyy-MM-dd ; 2011-07-25
SendInput %T%
return

::|time:: ;Insert current time
FormatTime, T, %A_Now%, hh:mm:sstt ; 09:24:20AM
SendInput %T%
return

;------------------------------------------------------------------------------
; Make windows transparent
;------------------------------------------------------------------------------
#T::
DetectHiddenWindows, on
WinGet, curtrans, Transparent, A
if ! curtrans
	curtrans = 255
newtrans := curtrans - 64
if newtrans > 0
{
	WinSet, Transparent, %newtrans%, A

}
else
{
	WinSet, Transparent, 255, A
	WinSet, Transparent, OFF, A
}
return

#w::
DetectHiddenWindows, on
WinSet, TransColor, Black 128, A
return

#o::
WinSet, Transparent, 255, A
WinSet, Transparent, OFF, A
return

#g::  ; Press Win+G to show the current settings of the window under the mouse.
MouseGetPos,,, MouseWin
WinGet, Transparent, Transparent, ahk_id %MouseWin%
WinGet, TransColor, TransColor, ahk_id %MouseWin%
ToolTip Translucency:`t%Transparent%`nTransColor:`t%TransColor%
return

;------------------------------------------------------------------------------
; Win+V: Paste as plain text from clipboard
;------------------------------------------------------------------------------
#v::
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       ; Convert to plain text
   Send ^v                       ; For best compatibility: SendPlay
   Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ClipBoard = %Clip0%           ; Restore original ClipBoard
   VarSetCapacity(Clip0, 0)      ; Free memory
Return

;------------------------------------------------------------------------------
; Win+Alt+V: Paste plain text only, stripping characters unsafe for filenames
;------------------------------------------------------------------------------
#!v:: ; paste without formatting
  StringReplace, clipboardt, clipboard, `r`n, %A_Space%, All
  clipboardt := RegExReplace(clipboardt, "` {2,}", "` ")
  StringLeft, 1st, clipboardt, 1
  IfInString, 1st, %A_Space%
    StringTrimLeft, clipboardt, clipboardt, 1
  StringRIght, last, clipboardt, 1
  IfInString, last, %A_Space%
    StringTrimRight, clipboardt, clipboardt, 1
  ;Send {Raw}%clipboardt%
  
  Clip0 = %ClipBoardAll%
  ClipBoard = %clipboardt%      ; Convert to plain text
  Send ^v                       ; For best compatibility: SendPlay
  Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
  ClipBoard = %Clip0%           ; Restore original ClipBoard
  VarSetCapacity(Clip0, 0)      ; Free memory
  clipboardt =
return
