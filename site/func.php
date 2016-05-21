<?
    require_once 'core/config/db.php';  // Работает

    // Функция выбора данных
    function get_ru_name(){
	    $cat_url = $_GET["Categories"];
	    $query = "SELECT Name FROM Categories WHERE Url = '$cat_url'";
	    $result = mysql_query($query) or die('Запрос не удался: ' . mysql_error());
		    echo "<table>\n";
	    while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
	        echo "\t<tr>\n";
	        foreach ($line as $col_value) {
	            echo "\t\t<td>$col_value</td>\n";
	        }
	        echo "\t</tr>\n";
	    }
	    echo "</table>\n";
      // Освобождаем память от результата
      mysql_free_result($result);
      }
      function view_links(){
      $cat_url = $_GET["Categories"];
      $query = "SELECT Url, Name FROM Categories";
      $result = mysql_query($query) or die('Запрос не удался: ' . mysql_error());
      echo "<table>\n";
      echo "\t<tr>\n";
        while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
          echo "\t\t<td><a href = \"?elements".$rows["Url"]."\">" .$rows['Name']."</a></td>\n";
          }
          echo "\t</tr>\n";
        echo "</table>\n";
      // Освобождаем память от результата
      mysql_free_result($result);
    }

    function view_tovary(){
      $cat_url = $_GET["Categories"];
      $query = "SELECT `Categories`.`Name`, `Tovary`.`Name`,`Tovary`.`Price_3y`,`Tovary`.`Kol_3`,`Tovary`.`Price_45y`,`Tovary`.`Kol_45`,`Tovary`.`Price_67y`,`Tovary`.`Kol_67`,`Tovary`.`Opisanie` 
      FROM Categories
      INNER JOIN TYPE ON `Categories`.`ID` = `Tovary`.`ID_Cat`
      WHERE `Categories`.`Url` = `$cat_url`
      ORDER BY `Categories`.`Name`;";
      $result = mysql_query($query) or die('Запрос не удался: ' . mysql_error());
      echo "<table>\n";
      while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
          echo "\t<tr>\n";
          foreach ($line as $col_value) {
              echo "\t\t<td>$col_value</td>\n";
          }
          echo "\t</tr>\n";
      }
      echo "</table>\n";
      // Освобождаем память от результата
      mysql_free_result($result);
    }


function get_request(){
$url = $_GET["url"];
return $url;
}

?>