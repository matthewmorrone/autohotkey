

; c1 is case insensitive-ish
; need to make inline or new line optional
; add attributes

:*b0:<html>::</html>{left 7}{enter 2}{up}{tab}
:*b0:<head>::</head>{left 7}{enter 2}{up}{tab}
:*b0:<body>::</body>{left 7}{enter 2}{up}{tab}
:*b0:<table>::</table>{left 8}{enter 2}{up}{tab}
:*b0:<thead>::</thead>{left 8}{enter 2}{up}{tab}
:*b0:<tbody>::</tbody>{left 8}{enter 2}{up}{tab}
:*b0:<tfoot>::</tfoot>{left 8}{enter 2}{up}{tab}
:*b0:<tr>::</tr>{left 5}{enter 2}{up}{tab}
:*b0:<th>::</th>{left 5}{enter 2}{up}{tab}
:*b0:<td>::</td>{left 5}{enter 2}{up}{tab}
:*b0:<div>::</div>{left 6}{enter 2}{up}{tab}
:*b0:<style>::</style>{left 8}{enter 2}{up}{tab}
:*b0:<header>::</header>{left 9}{enter 2}{up}{tab}
:*b0:<footer>::</footer>{left 9}{enter 2}{up}{tab}
:*b0:<aside>::</aside>{left 8}{enter 2}{up}{tab}
:*b0:<nav>::</nav>{left 6}{enter 2}{up}{tab}
:*b0:<menu>::</menu>{left 7}{enter 2}{up}{tab}
:*b0:<p>::</p>{left 6}{enter 2}{up}{tab}
:*b0:<dl>::</dl>{left 5}{enter 2}{up}{tab}
:*b0:<dt>::</dt>{left 5}
:*b0:<dd>::</dd>{left 5}
:*b0:<textarea>::</textarea>{left 11}{enter 2}{up}
:*b0:<article>::</article>{left 10}{enter 2}{up}
:*b0:<section>::</section>{left 10}{enter 2}{up}
:*b0:<canvas>::</canvas>{left 9}{enter 2}{up}
:*b0:<pre>::</pre>{left 6}{enter 2}{up}
:*b0:<form>::</form>{left 7}{enter 2}{up}
:*b0:<button>::</button>{left 9}{enter 2}{up}
:*:<a>::<a href=""></a>{left 6}
:*b0:<big>::</big>{left 6}
:*b0:<sub>::</sub>{left 6}
:*b0:<sup>::</sup>{left 6}
:*b0:<small>::</small>{left 8}
:*b0:<li>::</li>{left 5}
:*b0:<i class=''>::</i>{left 4}
:*b0:<b>::</b>{left 4}
:*b0:<u>::</u>{left 4}
:*b0:<s>::</s>{left 4}
:*b0:<em>::</em>{left 5}
:*b0:<h1>::</h1>{left 5}
:*b0:<h2>::</h2>{left 5}
:*b0:<h3>::</h3>{left 5}
:*b0:<h4>::</h4>{left 5}
:*b0:<h5>::</h5>{left 5}
:*b0:<h6>::</h6>{left 5}
:*b0:<span>::</span>{left 7}
:*b0:<title>::</title>{left 8}
:*b0:<label>::</label>{left 8}
:*:<script>::<script type='text/javascript' src=''></script>{left 11}
:*:<icon>::<link rel="shortcut icon" type="image/x-icon" href="" />{left 4}
:*:<psi>::<link rel="shortcut icon" type="image/x-icon" href="psi.ico" />
:*:<stylesheet>::<link rel="stylesheet" type="text/css" href="" />{left 4}
:*:<img>::<img src="" />{left 4}
:*:<meta>::<meta  />{left 4}
:*:<input>::<input type="text" value=""></input>{left 10}
:*:<checkbox>::<input type="checkbox" selected="" />{left 4}
:*:<iframe>::<iframe src=""></iframe>{left 11}
:*:<utf8>::<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />{enter}
:*:<br>::<br />{enter}
:*:<hr>::<hr />{enter}
:*b0:<ul>::{enter}{tab}<li></li>{enter}{backspace}</ul>{left 11}
:*b0:<ol>::{enter}{tab}<li></li>{enter}{backspace}</ul>{left 11}
:*b0:<select>::{enter}{tab}<option></option>{enter}{backspace}</select>{left 19}




; for js
:*:,+::{+}" "{+}
:*:-_-::{U+0CA0}_{U+0CA0}
:*:clog::console.log(){left 1}


; for php
:*b0:echo:: ."{\\}{n}";{left 6}
:*:pr(::print_r(){left 1}










; ; :*:<reset>::
; ; reset = 
; ; (
; ; <style>
; ; * \{
; ; margin: 0px;
; ; padding: 0px;
; ; \}
; ; table \{
; ; width: 100\%;
; ; \}
; ; table, th, td \{
; ; border: 1px solid black;
; ; border-collapse: collapse;
; ; \}
; ; </style>
; ; )
; ; {backspace 6}
; reset = "<style> * \{margin: 0px; padding: 0px; \} table \{width: 100\%; \} table, th, td \{border: 1px solid black; border-collapse: collapse; \} </style>"

; :*r0:<reset>::
; Send <style> * \{margin: 0px; padding: 0px; \} table \{width: 100\%; \} table, th, td \{border: 1px solid black; border-collapse: collapse; \} </style>
; ; SendInput, %reset%
; ; Send {backspace 6}
; return



