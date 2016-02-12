========================================================================

 p_MinLength, p_MaxLength [, p_Type, p_MinAsc, p_MaxAsc]

 + Required parameters:
 - p_MinLength      Minimum length for returned content
 - p_MaxLength      Maximum length for returned content

 + Optional parameters:
 - p_Type           Content type (see remarks below)
 - p_MinAsc         Minimum ASCII for content chars
 - p_MaxAsc         Maximum ASCII for content chars

 Valid types are listed here: www.autohotkey.com/docs/commands/IfIs.htm
 Types "float" and "time" are not supported, though.
 Anything different from a valid type will be discarded.
 Default type is "" (blank), which does not filter any randomized char.

 Following special characters can be used anywhere inside type string:
 '!' - use "if var is NOT type" condition (works only with a valid type)
 '@' - avoid character repetition in returned string (case insensitive)
 '#' - avoid character repetition in returned string (case sensitive)

 Note: '@' and '#' will work despite of type validity!

 Default ASCII ranges from 32 to 126. Remember: 32 is space!

========================================================================