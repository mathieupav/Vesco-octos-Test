<?php

	$bdd=new PDO('mysql:host=localhost;dbname=forum;charset=utf8','mathieu','ariane5');
	$req1=$bdd->prepare('SELECT * FROM liste_sujet WHERE topicSubject=?');
	$req1->execute(array($_GET['sujet']));
	$mesDonnees=$req1->fetch();
	
	//variable du topic
	$varid=$mesDonnees['id']; //correspond id de la conversation
	//$topic=$mesDonnees['topicSubject'];---pas besoin car on utilise un id
	
	$req1->closeCursor();
	
	$datePost=strftime('%Y-%m-%d %H:%M:%S');
	//ce qui est envoye
	$author=$_POST['pseudo'];
	$content=$_POST['maReponse'];
	
	
	$requete=$bdd->prepare('INSERT into conversation (id,author,content,datePost) VALUES(:id,:author,:content,:datePost)');

	$requete->execute(array(
		id=>$varid,
		author=>$author,
		content=>$content,
		datePost=>$datePost
		));
	
	header('Location:forum.php');
?>