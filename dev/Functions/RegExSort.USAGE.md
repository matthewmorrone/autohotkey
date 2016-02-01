========================================================================

 p_InputList, p_RegExNeedle [, p_Order, p_OptString, p_Din, p_Dout]

 + Required parameters:
 - p_InputList      Input variable (see input remarks below)
 - p_RegExNeedle    RegEx to match for each item delimited by p_Din

 + Optional parameters:
 - p_Order          See remarks below (default: blank)
 - p_OptString      See remarks below (default: blank)
 - p_Din            Input delimiter (default: `r`n)
 - p_Dout           Output delimiter (single character, default: `n)

 The p_Order parameter defines the order of precedence for the
 matching subpatterns to be sorted. Should be a CSV string of
 numbers. Specifying "R" instead will use all matching subpatterns
 in reverse. When blank (default), will sort the entire RegEx match.

 The p_OptString parameter specifies additional options for the Sort
 command. Use the p_Dout parameter instead of the "D" option. Also,
 do not use the "\" option (see input remarks below).

 Regarding p_InputList, it should not containg the "\" character,
 since the presence of such character would cause the Sort command
 to misbehave. As a workaround, replace any occurrences of it with
 a dummy uncommon character before calling this function and replace
 it back afterwards.

 The function returns a sorted list delimited by p_Dout.

 Although passing a blank string to the required parameter p_RegExNeedle
 should not be intended, it is known that calling the function this way
 will cause the first item of the input list to become the last one.

========================================================================