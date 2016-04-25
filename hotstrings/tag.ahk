#Hotstring EndChars -()[]{}:'"/\,.?!`n `t;

#Hotstring B0 O0 C ? *

;  c1 is case insensitive-ish
;  need to make inline or new line optional
;  add attributes

#IfWinNotActive, ahk_exe devenv.exe

:B:<br>::<br />
:B:<hr>::<hr />

::<html>::< /html>{left 6}{backspace}{left 1}
::<head>::< /head>{left 6}{backspace}{left 1}
::<body>::< /body>{left 6}{backspace}{left 1}
::<table>::< /table>{left 7}{backspace}{left 1}
::<thead>::< /thead>{left 7}{backspace}{left 1}
::<tbody>::< /tbody>{left 7}{backspace}{left 1}
::<tfoot>::< /tfoot>{left 7}{backspace}{left 1}
::<tr>::< /tr>{left 4}{backspace}{left 1}
::<th>::< /th>{left 4}{backspace}{left 1}
::<td>::< /td>{left 4}{backspace}{left 1}
::<div>::< /div>{left 5}{backspace}{left 1}
::<style>::< /style>{left 7}{backspace}{left 1}
::<header>::< /header>{left 8}{backspace}{left 1}
::<footer>::< /footer>{left 8}{backspace}{left 1}
::<aside>::< /aside>{left 7}{backspace}{left 1}
::<nav>::< /nav>{left 5}{backspace}{left 1}
::<menu>::< /menu>{left 6}{backspace}{left 1}
::<p>::< /p>{left 5}{backspace}{left 1}
::<dl>::< /dl>{left 4}{backspace}{left 1}
::<dt>::< /dt>{left 4}{backspace}{left 1}
::<dd>::< /dd>{left 4}{backspace}{left 1}
::<textarea>::< /textarea>{left 10}{backspace}{left 1}
::<article>::< /article>{left 9}{backspace}{left 1}
::<section>::< /section>{left 9}{backspace}{left 1}
::<canvas>::< /canvas>{left 8}{backspace}{left 1}
::<pre>::< /pre>{left 5}{backspace}{left 1}
::<form>::< /form>{left 6}{backspace}{left 1}
::<button>::< /button>{left 8}{backspace}{left 1}
::<big>::< /big>{left 5}{backspace}{left 1}
::<sub>::< /sub>{left 5}{backspace}{left 1}
::<sup>::< /sup>{left 5}{backspace}{left 1}
::<small>::< /small>{left 7}{backspace}{left 1}
::<li>::< /li>{left 4}{backspace}{left 1}
::<b>::< /b>{left 3}{backspace}{left 1}
::<u>::< /u>{left 3}{backspace}{left 1}
::<s>::< /s>{left 3}{backspace}{left 1}
::<em>::< /em>{left 4}{backspace}{left 1}
::<h1>::< /h1>{left 4}{backspace}{left 1}
::<h2>::< /h2>{left 4}{backspace}{left 1}
::<h3>::< /h3>{left 4}{backspace}{left 1}
::<h4>::< /h4>{left 4}{backspace}{left 1}
::<h5>::< /h5>{left 4}{backspace}{left 1}
::<h6>::< /h6>{left 4}{backspace}{left 1}
::<span>::< /span>{left 6}{backspace}{left 1}
::<title>::< /title>{left 7}{backspace}{left 1}
::<label>::< /label>{left 7}{backspace}{left 1}



::<a>::<a href="">< /a>{left 3}{backspace}{left 3}
::<i class=''>::< /i>{left 3}{backspace}{left 3}

::<script>::< /script>{left 8}{backspace}{left 1}
:b:<script ::<script type='text/javascript' src=''>< /script>{left 8}{backspace}{left 3}

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
::<iframe>::<iframe src="">< /iframe>{left 8}{backspace}{left 3}
::<utf8>::<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
#Hotstring B0

::<ul>::{enter}{tab}<li>< /li>{enter}{backspace}< /ul>{left 10}{backspace}{left 1}
::<ol>::{enter}{tab}<li>< /li>{enter}{backspace}< /ul>{left 10}{backspace}{left 1}
::<select>::{enter}{tab}<option>< /option>{enter}{backspace}< /select>{left 19}

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



