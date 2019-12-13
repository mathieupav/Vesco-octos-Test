<?php
	$baseDeDonnee=new PDO('mysql:host=localhost;dbname=APP;charset=utf8', 'mathieu','ariane5');

	if(isset($_POST['motDePasse']) && isset($_POST['eMail'])){
		$req=$baseDeDonnee->prepare("SELECT emailCop, password FROM policier WHERE emailCop=?");
		$req->execute(array($_POST["eMail"]));
		$donnee=$req->fetch();
		
		if($donnee['password']==$_POST["motDePasse"]){
			//echo "Connexion reussie";
			header("Location:controle.html");
		}
		else{
			//echo "echec";
			header("Location:connexion_policier.html");
		}
	}
	
	else{
		
	}
?>