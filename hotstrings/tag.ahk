#Hotstring EndChars -()[]{}:'"/\,.?!`n `t;

#Hotstring B0 O0 C ? *

;  c1 is case insensitive-ish
;  need to make inline or new line optional
;  add attributes

#IfWinNotActive, ahk_exe devenv.exe

:B:<br>::<br />
:B:<hr>::<hr />





::<html>::</html>{left 7}
::<head>::</head>{left 7}
::<body>::</body>{left 7}
::<table>::</table>{left 8}
::<thead>::</thead>{left 8}
::<tbody>::</tbody>{left 8}
::<tfoot>::</tfoot>{left 8}
::<tr>::</tr>{left 5}
::<th>::</th>{left 5}
::<td>::</td>{left 5}
::<div>::</div>{left 6}
::<style>::</style>{left 8}
::<header>::</header>{left 9}
::<footer>::</footer>{left 9}
::<aside>::</aside>{left 8}
::<nav>::</nav>{left 6}
::<menu>::</menu>{left 7}
::<p>::</p>{left 6}
::<dl>::</dl>{left 5}
::<dt>::</dt>{left 5}
::<dd>::</dd>{left 5}
::<textarea>::</textarea>{left 11}
::<article>::</article>{left 10}
::<section>::</section>{left 10}
::<canvas>::</canvas>{left 9}
::<pre>::</pre>{left 6}
::<form>::</form>{left 7}
::<button>::</button>{left 9}
::<big>::</big>{left 6}
::<ref>::</ref>{left 6}
::<sub>::</sub>{left 6}
::<sup>::</sup>{left 6}
::<small>::</small>{left 8}
::<li>::</li>{left 5}
::<b>::</b>{left 4}
::<u>::</u>{left 4}
::<s>::</s>{left 4}
::<em>::</em>{left 5}
::<h1>::</h1>{left 5}
::<h2>::</h2>{left 5}
::<h3>::</h3>{left 5}
::<h4>::</h4>{left 5}
::<h5>::</h5>{left 5}
::<h6>::</h6>{left 5}
::<span>::</span>{left 7}
::<title>::</title>{left 8}
::<label>::</label>{left 8}

::<a>::<a href=""></a>{left 4}{backspace}{left 4}
::<i class=''>::</i>{left 4}{backspace}{left 4}

::<script>::</script>{left 9}
:b:<script ::<script type='text/javascript' src=''></script>{left 9}{backspace}{left 4}

#HotString B
::<icon>::<link rel="shortcut icon" type="image/x-icon" href="" />{left 5}
::<psi>::<link rel="shortcut icon" type="image/x-icon" href="psi.ico" />
::<link>::<link rel="stylesheet" type="text/css" href="" />{left 5}
::<stylesheet>::<link rel="stylesheet" type="text/css" href="" />{left 5}
::<img>::<img src="" />{left 5}
::<meta>::<meta  />{left 4}
::<viewport>::<meta name="viewport" content="width=device-width, initial-scale=1" />
::<input>::<input type="text" value="" />{left 5}
::<checkbox>::<input type="checkbox" selected="" />{left 5}
::<iframe>::<iframe src=""></iframe>{left 9}{backspace}{left 4}
::<utf8>::<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
#Hotstring B0

::<ul>::{enter}{tab}<li></li>{enter}{backspace}</ul>{left 11}
::<ol>::{enter}{tab}<li></li>{enter}{backspace}</ul>{left 11}
::<select>::{enter}{tab}<option></option>{enter}{backspace}</select>{left 18}

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



