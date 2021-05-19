

HotStrings:
    StringGetPos, 	start,   A_ThisHotKey, :, L2
    start += 1
    StringTrimLeft, nHotKey, A_ThisHotKey, start

    Send % str
    Input, kl, V L1, {BS}
    IfInString, ErrorLevel, EndKey:
    {
        if (len < 1) {
            len := Strlen(str)
            ; - rmTrigger
        }
        Send {space}
        Send % "{BS " len "}" nHotKey
    }
    len := 0
return


#Hotstring C ? *

::btw::
{
    str = by the way
    goto HotStrings
}
::afaik::
{
    str = as far as I know
    goto HotStrings
}
::brb::
{
    str = be right back
    goto HotStrings
}
:*?c:pi::
{
    str = {U+03C0}
    len = 1
    goto HotStrings
}
; :*?c: ::
; {
; 	str =
; 	goto HotStrings
; }


#Hotstring C0 ?0 *0

