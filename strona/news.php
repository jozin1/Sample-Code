<!DOCTYPE html>
<html lang="pl">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	
	<title>Strona Józefa Gawłowicza</title>
	
	<meta name="description" content="Opis w Google" />
	<meta name="keywords" content="slowa, kluczowe, wypisane, po, porzecinku" />
	
	<link rel="stylesheet" href="ceeses.css" type="text/css" />
	
	<link href="https://fonts.googleapis.com/css?family=Merriweather|Open+Sans+Condensed:300" rel="stylesheet"> 
	

</head>
<body>

<div class="header">
  <h1><a href="index.html" class="tilelink">Strona Józefa Gawłowicza</a></h1>
</div>

<div class="row">

<div class="col-2 menu">
  <ul>
    <li  style="background-color: var(--color3);><a href="news.php?year=2017" class="tilelink">Aktualności</a></li>
    <li><a href="obrazy.php?page=1" class="tilelink">Obrazy</a></li>
	<li><a href="books.php" class="tilelink">Książki</a></li>
    <li><a href="index.html" class="tilelink">O mnie</a></li>
    <li><a href="kontakt.html" class="tilelink">Kontakt</a></li>
	<li><a target="_blank" href="https://www.facebook.com/J%C3%B3zef-Gaw%C5%82owicz-1901566363418095/" class="tilelink">Facebook</a></li>
  </ul>
</div>

<div class="col-8">
<div class="header2" >Aktualności</div><div class="space"></div>
	<div>
			
			<?php
			
				require_once "connect.php";
				
				$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
				$polaczenie -> query ('SET NAMES utf8');
				$polaczenie -> query ('SET CHARACTER_SET utf8_unicode_ci');
				
				if($polaczenie->connect_errno!=0)
				{
					echo "Error: ".$polaczenie->connect_errno;
				}
				else
				{
					$year = $_GET['year'];
				
					for($m = 12; $m >= 1; $m--)
					{
						for($d = 31; $d >= 1; $d--)
						{
					
							$sql = "SELECT * FROM informacje WHERE year='$year' AND month='$m' AND day='$d'";
							if($rezultat = @$polaczenie->query($sql))
							{
								$wiersz = $rezultat->fetch_assoc();
								$title = $wiersz['title'];
								$content = $wiersz['content'];
								$id = $wiersz['id'];
								$imgurl = $wiersz['imgurl'];
								$rezultat->close();
								if($id != 0)echo '<div class="news"><div class="row"><a target="_blank" href='."$imgurl".'><div class="div3"><img src='."$imgurl".'></div></a>
								<a target="_blank" href='.'onenews.php?id='."$id".'><div class="div9">'."$d".'-'."$m".'-'."$year"."</br><strong>"."$title".'</strong></div></div></a></div>';
							}
							
						}
					}
					$polaczenie->close();
				}
				
			?>
			
			
			
	</div>
</div>

<div class="col-2"></div>

</div>




<div class="footer">
  <p>Kapitan.com &copy; 2017 Thank you for your visit!</p>
</div>

</body>
</html>
