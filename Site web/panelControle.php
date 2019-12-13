<?php
	$bdd= new PDO('mysql:host=localhost;dbname=APP','mathieu','ariane5');
	if(isset($_POST['confirmerInscription'])){
		//$req=$bdd->prepare('UPDATE membres SET confirme=1 WHERE id=?');
		//$req->execute(array($confirme));
		$req=bdd->
		
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Tableau de controle</title>
		
	</head>
	
	<body>
		<ul>
		<?php
			while($m=$req->fetch()){
		?>
		<li>
			<?php echo $m['Prenom']; ?>
		</li>
		
		<?php
			}
		?>
		</ul>
	</body>
</html>