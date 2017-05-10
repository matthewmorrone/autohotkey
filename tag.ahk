#Hotstring EndChars -()[]{}:'"/\,.?!`n `t;

#Hotstring B0 O0 C ? *

;  c1 is case insensitive-ish
;  need to make inline or new line optional
;  add attributes

#IfWinNotActive, ahk_exe devenv.exe

:B:<br>::<br />
:B:<hr>::<hr />

::<html>::</html>{left 6}
::<head>::</head>{left 6}
::<body>::</body>{left 6}
::<table>::</table>{left 7}
::<thead>::</thead>{left 7}
::<tbody>::</tbody>{left 7}
::<tfoot>::</tfoot>{left 7}
::<tr>::{end}</tr>{left 4}
::<th>::{end}</th>{left 4}
::<td>::{end}</td>{left 4}
::<div>::{end}</div>{left 5}
::<style>::</style>{left 7}
::<header>::</header>{left 8}
::<footer>::</footer>{left 8}
::<aside>::</aside>{left 7}
::<nav>::</nav>{left 5}
::<menu>::</menu>{left 6}
::<p>::</p>{left 5}
::<dl>::</dl>{end}{left 4}
::<dt>::</dt>{end}{left 4}
::<dd>::</dd>{end}{left 4}
::<textarea>::</textarea>{left 10}
::<article>::</article>{left 9}
::<section>::</section>{left 9}
::<canvas>::</canvas>{left 8}
::<pre>::</pre>{left 5}
::<form>::</form>{left 6}
::<button>::</button>{left 8}
::<big>::</big>{left 5}
::<ref>::</ref>{left 5}
::<sub>::</sub>{left 5}
::<sup>::</sup>{left 5}
::<small>::</small>{left 7}
::<li>::</li>{left 4}
::<b>::</b>{left 3}
::<u>::</u>{left 3}
::<s>::</s>{left 3}
::<em>::</em>{left 4}
::<h1>::</h1>{left 4}
::<h2>::</h2>{left 4}
::<h3>::</h3>{left 4}
::<h4>::</h4>{left 4}
::<h5>::</h5>{left 4}
::<h6>::</h6>{left 4}
::<span>::</span>{left 6}
::<title>::</title>{left 7}
::<label>::</label>{left 7}

::<a>::<a href=""></a>{left 3}{backspace}{left 3}
::<i class=''>::</i>{left 3}{backspace}{left 3}

::<script>::</script>{left 8}
:b:<script ::<script type='text/javascript' src=''></script>{left 8}{backspace}{left 3}

#HotString B
::<icon>::<link rel="shortcut icon" type="image/x-icon" href="" />{left 4}
::<psi>::<link rel="shortcut icon" type="image/x-icon" href="psi.ico" />
::<link>::<link rel="stylesheet" type="text/css" href="" />{left 4}
::<stylesheet>::<link rel="stylesheet" type="text/css" href="" />{left 4}
::<img>::<img src="" />{left 4}
::<meta>::<meta  />{left 3}
::<viewport>::<meta name="viewport" content="width=device-width, initial-scale=1" />
::<input>::<input type="text" value="" />{left 4}
::<checkbox>::<input type="checkbox" selected="" />{left 4}
::<iframe>::<iframe src=""></iframe>{left 8}{backspace}{left 3}
::<utf8>::<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
#Hotstring B0

::<ul>::{enter}{tab}<li></li>{enter}{backspace}</ul>{left 10}
::<ol>::{enter}{tab}<li></li>{enter}{backspace}</ul>{left 10}
::<select>::{enter}{tab}<option></option>{enter}{backspace}</select>{left 19}

#IfWinNotActive

#Hotstring C0 ?0 *0 B R0


!9::
Sleep, 100
clipurl := clipboard
Send ^c
Sleep, 50
clipurl := "<a href=""" . clipurl . """>" . clipboard . "</a>"
Send {Raw}%clipurl%
clipboard := clipurl
clipurl = ;
Return



