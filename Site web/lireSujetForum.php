<html>
	<head>
		<meta charset='utf8'/>
		<link href='forum.css' rel='stylesheet'/>
	</head>

	<body>
			<div class="bgimg">
			<div class="header">
				<div class="elementsduheader">
					<div class="contenudulogo"  onclick="shownavebar()">
						<h1>ABILITY <span>TEST</span></h1>
					</div>
					<div class="menu-deroulant-profile">
						<img src="images/2.jpg" alt="User Image"/>
						<ul>
							<li><a href="deconnexion.php" class="highlight">Deconnexion</a></li>
						</ul>
					</div>
					<div class="wrapper">
					    <div class="sidebar" id='test'>
					        <ul>
								<li><a href="controle.html">Controle</a></li>
								<li><a href="test1.html">Test</a></li>
								<li><a href="lesresultats.html">Resultat</a></li>
					            <li><a href="lesstatistiques.html">Statistique</a></li>
					            <li><a href="site_profile.html">Profil</a></li>
								<li><a href="forum.php">Forum</a></li>
								<li><a href="faq.html">Faq</a></li>
					        </ul> 
					        <div class="social_media">
					          <a href="#"><i class="fab fa-facebook-f"></i></a>
					          <a href="#"><i class="fab fa-twitter"></i></a>
					          <a href="#"><i class="fab fa-instagram"></i></a>
					      </div>
					    </div>
			        </div>
				</div>
			</div>
	
	<div class="contenu">
<?php
	$baseDeDonnee=new PDO('mysql:host=localhost; dbname=forum','mathieu','ariane5');
	$req1=$baseDeDonnee->prepare('SELECT * FROM liste_sujet WHERE topicSubject=?');
	$req1->execute(array($_GET['sujet']));
	$donnee=$req1->fetch();
	
	$idConversation=$donnee['id'];
?>
		<div>
			
			<h3><?php echo $donnee['topicSubject']?> <small>by <?php echo $donnee['author']?> posted: <?php echo $donnee['dateCreation']?></small></h3>
			<p>
			<?php echo $donnee['Content']?>
			</p>
		</div>
<?php
	$monSujet=$_GET['sujet'];
	$req1->closeCursor();
	
	//----------------------------
	
	$req1=$baseDeDonnee->prepare('SELECT * FROM conversation WHERE id=?');
	$req1->execute(array($idConversation));
	while($conv=$req1->fetch()){
?>
		<div>
			<h3><?php echo $conv['author']?> Posted <?php echo $conv['datePost']?></h3>
			<p>
			<?php echo $conv['content']?>
			</p>
			
		</div>
<?php 
		}
?>
	<a href="forum.php">Revenir la page d accueil</a>
	<hr/>
	<form action="action.php?sujet=<?php echo $monSujet; ?>" method="post">
		<label for="pseudo">Pseudo <input type="text" name="pseudo"/><br>
		<label for="maReponse">Ma reponse <input type="textarea" name="maReponse" style="width: 500px; height: 300px"/><br>
		<input type="submit" value="Envoyer">
	<form>
	
	<nav>
		<a href="forum.php">Revenir a la page d accueil</a>
	</nav>
	</div>
	</body>
</html>