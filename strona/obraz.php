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



<div class="row">

<div class="col-1 menu">
  
</div>

<div class="col-10">
	<div class="content">
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
					$page = $_GET['page'];
					$nr = $_GET['nr'];
				
					
						$sql = "SELECT * FROM obrazy WHERE page='$page' AND nr='$nr'";
						if($rezultat = @$polaczenie->query($sql))
						{
							$wiersz = $rezultat->fetch_assoc();
							$id = $wiersz['id'];
							$content = $wiersz['content'];
							$rezultat->close();
							if($id != 0)echo "$content";
						}
					
					$polaczenie->close();
				}
				
			?>
	</div>
</div>

<div class="col-1"></div>

</div>


<div class="row">
<div class="footer">
  <p>Kapitan.com &copy; 2017 Thank you for your visit!</p>
</div>
</div>
</body>
</html>
