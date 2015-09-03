; tooltip wrapper
coolTip(a:="is this thing on?", b:=1000)
{
ToolTip %a%
Sleep b
ToolTip
}

; splashtext wrapper
splashOn(a:="is this thing on?", b:=1000)
{
SplashTextOn,,,%a%,
Sleep b
SplashTextOff	
}
