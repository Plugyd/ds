<?
define('SITE_PATH', $_SERVER["DOCUMENT_ROOT"]);

#Оброботчик ошибок
function EHandler($errormum, $errormsg, $filename, $lineerror) 
{
	$date = date('Y-m-d H:i:s (T)');
	$file = fopen(SITE_PATH . '/tmp/errors.log', 'a');

	if (!empty($file)) 
	{
		$filename = str_replace(SITE_PATH,'',$filename);
		$errorlog = " Times: $date\r\nError: $errormsg ($errormum) in $filename in line $lineerror\r\n\r\n";
		fwrite($file, $errorlog);
		fclose($file);
	}
}
?>