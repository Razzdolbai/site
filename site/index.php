<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Детёныш</title>
		<link rel="stylesheet" type="text/css" href="static/css/style.css">
	</head>
	<body>
		<? 
	 	
			require_once 'func.php'; // Подключение файла функций
		?>
	 	<h1>Детёныш - интернет-магазин товаров для детей от 3 до 7 лет</h1>
	 	<h2>Категории товаров</h2>
	 	<? echo view_link_category(); ?>
	 	<p class="license">
	 		На все товары имеются необходимые лицензии и сертификаты.
	 	</p>
	 	<?   
			#echo result();
			#echo 'Get url: '.get_request();
			echo get_rus();
			echo view_tovar();
		?>
	<footer> <!-- добавил подвал сайта -->
   		&copy; Скоморохов Дмитрий 2016
   	</footer>
	</body>
</html>