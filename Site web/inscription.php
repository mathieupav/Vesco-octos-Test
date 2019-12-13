<?php
	$baseDeDonnee=new PDO('mysql:host=localhost; dbname=APP; charset=utf8','mathieu','ariane5');
	

	$Sexe=1;
	if($_POST['sexe']=="Femme"){
		$Sexe=2;
		//1 pour les hommes
		//2 pour les femmes
		}
		
	$nationalite="France";
	if($_POST['nationalite']=="Maroc"){
			$nationalite="Maroc";
		}
			
	$requete=$baseDeDonnee->prepare('INSERT INTO particulier (Lastname, 
		Firstname, Email, Sexe, password, nationalite, pays_residence, adresse, code_postal, telephone)
		VALUES (:Lastname, 
		:Firstname, :Email, :Sexe, :password, :nationalite, :pays_residence, :adresse, :code_postal, :telephone)');
	
		$requete->execute(array(
			'Lastname'=> $_POST['nom'],
			'Firstname'=>$_POST['prenom'],
			'Email'=>$_POST['email'],
			'Sexe'=>$Sexe,
			'password'=>$_POST['motDePasse'],
			'nationalite'=>$nationalite,
			'pays_residence'=>$_POST['pays'],
			'adresse'=>$_POST['adresse' ],
			'code_postal'=>$_POST['codePostal'],
			'telephone'=>$_POST['tel'],
			)
		);
	
	header('Location: lesresultats.html');
?>