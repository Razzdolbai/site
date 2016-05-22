<? 
// Соединяемся, выбираем базу данных
$link = mysql_connect('localhost', 'root', '') or die ('Не удалось соединиться: ' . mysql_error());
mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'", $link);// Применяем кодировку utf8 ко всему
//echo 'Соединение успешно установлено';
mysql_select_db('Kidshop') or die ('Не удалось выбрать базу данных');
?>
