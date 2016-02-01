========================================================================

 p_DesiredColor, p_PosX, p_PosY [, p_TimeOut, p_GetMode, p_ReturnColor]

 + Required parameters:
 - p_DesiredColor      The color you are waiting for
 - p_PosX, p_PosY      Pixel coordinates

 + Optional parameters:
 - p_TimeOut           Timeout in milliseconds (default is 0, no timeout)
 - p_GetMode           PixelGetColor mode(s) (default is blank)
 - p_ReturnColor       Boolean, see returned values below (deafult is 0)

 + Returned values when ReturnColor is 0 (false):
 - 0      The desired color was found
 - 1      There was a problem during PixelGetColor
 - 2      The function timed out

 + Returned values when ReturnColor is 1 (true):
 - Blank        There was a problem during PixelGetColor
 - Non-blank    Will be the latest found color, even if not the desired one

========================================================================