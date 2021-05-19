; clean up ascii in clipboard
^F11::
StringReplace, clipboard, clipboard, \%0d\%0a, \r\n, All
StringReplace, clipboard, clipboard, \%2c, \,, All
StringReplace, clipboard, clipboard, \%2f, \/, All
StringReplace, clipboard, clipboard, \%3a, \:, All
StringReplace, clipboard, clipboard, \%3b, \;, All
StringReplace, clipboard, clipboard, \%3d, \=, All
StringReplace, clipboard, clipboard, \%5c, \/, All
StringReplace, clipboard, clipboard, &, \r\n&, All
; StringReplace, clipboard, clipboard, \;\+, \r\n, All
StringReplace, clipboard, clipboard, \{, \r\n\{\r\n, All
StringReplace, clipboard, clipboard, \}, \r\n\}\r\n, All
Sleep, 200
Send {^v}
return
