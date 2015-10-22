
:*:afaik::as far as I know
:*:brb::be right backbe right
:*:btw::by the way
:*:-----::{Asc 0151}  ; em dash
:*:m@1::matthewmorrone1
:*:m@2::matthewmorrone1@gmail.com

; for js
:*:,+::{+}" "{+}
:*:-_-::{U+0CA0}_{U+0CA0}

:*:clog::console.log()\;{left 2}
:*:vlog::var log = console.log.bind(console)\;{enter}

; for php
:*b0:echo:: ."{\\}{n}";{left 6}
:*:pr(::print_r();{left 2}

;for C#
:*:csbreak::System.Diagnostics.Debugger.Break();



#IfWinActive, PowerShell

;for terminal
:*:clone::git clone http://www.github.com/matthewmorrone1/

:*:status::git status -s{enter}
:*:diff::git diff{enter}

:*:add::git add --all{enter}
:*:commit::git commit -m ""{left 1}
:*:push::
SendRaw git push
Send {enter}
Sleep,1000
Send %email%{enter}
Sleep,1000
Send %password%{enter}
return

#IfWinActive
