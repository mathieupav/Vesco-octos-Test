<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8/">
		<title> Ability Test </title>
		<link media="screen" rel="stylesheet" href="forum.css" >
		<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
		<title>Ability Test </title>
	</head>
	
	<script>
			function shownavebar() {
				var sidebar=document.getElementById('test');
				if(sidebar.style.display=='block') {
					sidebar.style.display ='none';
				} else {
					sidebar.style.display ='block';
				}
				
				console.log('test');
			}

		</script>

	<body>

 		<!----------------------------------------- C'est un cadre pour le choix de rôles------------------------------------------------------------- -->
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
								<li><a href="controle.html"><i class="fas fa-user"></i>Controle</a></li>
								<li><a href="test1.html"><i class="fas fa-home"></i>Test</a></li>
								<li><a href="lesresultats.html"><i class="fas fa-home"></i>Resultat</a></li>
					            <li><a href="lesstatistiques.html"><i class="fas fa-home"></i>Statistique</a></li>
					            <li><a href="site_profile.html"><i class="fas fa-user"></i>Profil</a></li>
								<li><a href="forum.php"><i class="fas fa-user"></i>Forum</a></li>
								<li><a href="faq.html"><i class="fas fa-user"></i>Faq</a></li>
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
			
			<!----------------------ICI SE TROUVE LE COEUR DU SUJET: LES ARTICLES PUBLIES--------------------->

			<div class="contenu">
					<article>
		<?php
		$baseDonneeForum=new PDO('mysql:host=localhost; dbname=forum','mathieu','ariane5');
		$req=$baseDonneeForum->query('SELECT * FROM liste_sujet ORDER BY dateCreation DESC');
	
			while($donnee=$req->fetch()){
				?>
				<div>
					
					<h3><?php echo $donnee['topicSubject']?> <small>by <?php echo $donnee['author']?> posted: <?php echo $donnee['dateCreation']?></small></h3>
					<p>
					<?php echo $donnee['Content']?>
					</p>
					<a href="lireSujetForum.php?sujet=<?php echo $donnee['topicSubject'];?>">Lire</a>
				</div>
			<?php }
		?>
				</article>
						<button onclick="location.href='creersujet.html'";class="creersujet">+ Creer un sujet</button>
						<!--Syntaxe necessaire ici-->
					</div>
		</div>
	    <!----------------------------------------------------------------------------------------------------------------------------------------------------------- -->
	

	</body>
</html>