<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Детёныш</title>
		<link rel="stylesheet" type="text/css" href="static/css/style.css">
	</head>
	<body>
		<p><a href="http://localhost/skomorokhov_dmitry_315/"><img src="static/images/logo.png" class="leftimg"></a></p>
	 	<h1>Детёныш</h1>
	 	<h2>Интернет-магазин товаров для детей от 3 до 7 лет</h2>
	 	<h3>Категории товаров</h3>
	 	<? 
			require_once 'func.php'; // Подключение файла функций
			echo view_links(); ?>
	 	<?   
			#echo result();
			#echo 'Get url: '.get_request();
	 		echo"<br>";
			echo get_ru_name();
			echo"<br>";
			#echo view_table();
			echo view_tovary();
			echo view_info();
		?>
		<p class="kostyl"><!-- Иначе при увеличении, таблички скрываются подвалом -->
			&nbsp
		</p>
	<footer> <!-- добавил подвал сайта -->
   		&copy; Скоморохов Дмитрий 2016
   	</footer>
	</body>
</html>