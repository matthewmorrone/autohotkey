<?



$alphas = range(97, 122);
foreach ($alphas as $v) {
	// echo "$v"."\t".chr($v)."\t".chr($v-32)."\t"."\n";	
		$lo = chr($v);
		$up = chr($v-32);
		$vv = $v-32;
$str = <<<EOD
\$$lo::
    KeyWait, $lo, T0.25
    If ErrorLevel {
        SendInput, {ASC $vv}
        KeyWait, $lo
    }
    Else  {
        Send {$lo}
    }
    KeyWait, $lo
Return\n
EOD;

echo $str."\n";



}










