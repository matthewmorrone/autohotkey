========================================================================

 p_ArrayName [, p_Start, p_End]

 + Required parameters:
 - p_ArrayName         Name of the array variable

 + Optional parameters:
 - p_Start and p_End   Determine which elements will be cleared

 Both p_Start and p_End are self-explanatory. If p_End is 0 (default),
 the function will start clearing all elements (from p_Start, which is
 also 0 by default) until it finds a non-existent element (which has
 never been initialized). So, if both parameters are omitted, the function
 will only attempt to clear ArrayName0. Returns 1 for no elements cleared.

 Plase note that:
 - Declaring a variable with an empty content will not initialise it
 - A initialised variable isn't automatically deleted if it becomes empty
 ( as stated in the VarExist functions's original forum post )

 + Return values:
 - 0      Elements cleared successfully
 - 1      No elements were cleared
 - 2      At least one parameter is incorrect

========================================================================