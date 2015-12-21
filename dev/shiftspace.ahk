;------------------------------------------------------------------------------
; 2010-08-27   Initial issuance.
; 
; INTRODUCTION
; 
; The standard keyboard requires reaching for the two shift keys. This is a 
; gesture that moves the fingers from the home row. (Left hand travels off 
; the 'A' and right off the ';') and is a different gesture for left vs. 
; right keys. The solution is a single shift key, under the spacebar, operated 
; by the thumbs. Since the keyboard is fixed, this script is an alternative. 
; 
; The spacebar continues to behave normally for space key-presses. 
; When the spacebar is held down, it behaves as a shift key. 
; This also frees up the two shift keys for alternate uses.
; 
; Todo/Things I have not figured out yet:
; I would like doubletap-then-hold-on-keydown to initiate a normal 
; space auto-repeat. 
;
; If spacebar was held for over a half second, then released 
; without shifting any key, it should not generate a space. That gesture 
; indicates an aborted shift operation, not a space. 
;------------------------------------------------------------------------------

; ----------------------------------------------------------------
; Abort spacekey if key was held down for more than 0.5 seconds
; before releasing. (not operational yet.)
; ----------------------------------------------------------------
;~space::
;KeyWait, space, U T1 ; Wait for the space button to be released.
;if  (ErrorLevel = 0) {  ; space was not held too long. A long press indicates an aborted shift, not a space, so ignore.
;   Send {space}
;}
;return 

; ----------------------------------------------------------------
; If spacebar didn't modify anything, send a real space keystroke 
; upon release.
; ----------------------------------------------------------------
; space::
; Send {space}
; return

space & 1:: Send {`!}
space & 2:: Send @
space & 3:: Send {`#}
space & 4:: Send $
space & 5:: Send {`%}
space & 6:: Send {`^}
space & 7:: Send {`&}
space & 8:: Send {`*}
space & 9:: Send {`(}
space & 0:: Send {`)}
space & -:: Send _
space & =:: Send {`+}
space & q:: Send Q
space & w:: Send W
space & e:: Send E
space & r:: Send R
space & t:: Send T
space & y:: Send Y
space & u:: Send U
space & i:: Send I
space & o:: Send O
space & p:: Send P
space & [:: Send {`{}
space & ]:: Send {`}}
space & a:: Send A
space & s:: Send S
space & d:: Send D
space & f:: Send F
space & g:: Send G
space & h:: Send H
space & j:: Send J
space & k:: Send K
space & l:: Send L
space & `;:: Send :
space & ':: Send "
space & z:: Send Z
space & x:: Send X
space & c:: Send C 
space & v:: Send V
space & b:: Send B
space & n:: Send N
space & m:: Send M 
space & ,:: Send <
space & .:: Send >
space & /:: Send ?
space & \:: Send |
return