<?

$unicode = range(0, 65535);
foreach($unicode as $point) {
	$u = strtoupper(str_pad(dechex($point), 4, 0, STR_PAD_LEFT));
	echo '::U+'.$u.'::{U+'.$u."}\n";
}