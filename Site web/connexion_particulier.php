<?php
	$baseDeDonnee=new PDO('mysql:host=localhost;dbname=APP;charset=utf8', 'mathieu','ariane5');

	if(isset($_POST['motDePasse']) && isset($_POST['eMail'])){
		$req=$baseDeDonnee->prepare("SELECT Email, password FROM particulier WHERE Email=?");
		$req->execute(array($_POST["eMail"]));
		$donnee=$req->fetch();
		if($donnee['password']==$_POST["motDePasse"]){
			//echo "Connexion reussie";
			header("Location:test1.html");
		}
		else{
			//echo "echec";
			header("Location:connexion_particulier.html");
		}
	}
	
	else{
		
	}
?>