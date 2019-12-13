<?php
	$bdd=new PDO('mysql:host=localhost; dbname=forum; metacharset=utf8','mathieu','ariane5');
	
	$author=$_POST['pseudo'];
	$topicSubject=$_POST['nomProbleme'];
	$content=$_POST['content'];
	$dateCreation=strftime('%Y-%m-%d %H:%M:%S');
	
	$req=$bdd->prepare('INSERT INTO liste_sujet (topicSubject,Content,dateCreation,author) VALUES(:topicSubject,:Content,:dateCreation,:author)');
	$req->execute(array(
		topicSubject=>$topicSubject,
		Content=>$content,
		dateCreation=>$dateCreation,
		author=>$author,
		));
	
	header('Location:forum.php');
?>