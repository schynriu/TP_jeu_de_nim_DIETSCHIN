
{ALGORITHME
//but
//principe
//entree
//sortie
VAR cpt,cptj,nombre: ENTIER 



CONST paquet=21


DEBUT
		cpt:=paquet
		cptj=1
	REPETER
	
		Si mod2 cptj=0 ALORS
		ECRIRE "joueurs 2"
		SINON 
		ECRIRE "joueur 1"

		FINSI

			ECRIRE "veuillez entrer le nombre d'allumette que vous retirez"
			LIRE nombre 
			

			Si nombre>3 ou nombre <1 ALORS 
				ECRIRE " veuillez entrez un nombre entre 1 et 3"


				SINON
					cpt ← cpt-nombre 
					cptj←cptj+1 
				FINSI


			SI cpt=1 ALORS
				ECRIRE "felicitation vous avez gagner !"
			FINSI
					

	JUSQUA cpt=1
FIN
}








PROGRAM allumette;

USES CRT; 
//but: Cree un jeux de nim ou deux joueurs pourront jouer a tour de role 
//entree
//sortie

VAR cpt,cptj,nombre:integer;

CONST paquet=21;


BEGIN
	cpt:=paquet;
	cptj:=1;

	REPEAT 
		BEGIN
		IF (cptj MOD 2=0) THEN 
		
			writeln('joueur deux')

		ELSE 
			writeln ('joueur un');

				writeln ('veuillez ecrire le nombre d allumette que vous retirez');
				readln (nombre); 


					IF (nombre>3) OR (nombre<0) THEN
						writeln ('Veuillez ecrire un nombre entre 1 et 3')

					ELSE 
						BEGIN cpt:=cpt-nombre;
						cptj:=cptj+1;
						writeln(cpt); 
						END;							
		END;


			 
					
				
			
	UNTIL(cpt<=1);



						IF (cptj MOD 2=0) THEN 

						writeln (' felicitation, joueur deux vous avez gagner !')

						ELSE 


						writeln ('felicitation, joueur un, vous avez gagner !');


readln
END.



{
ALGORITHME allumette 2
//but
//entree
//sortie
CONSTANTE: PAQUET←21
VARIABLE:cpt,cptj,nombre,aleatoire

DEBUT 
	aleatoire(3)//cette methode retourne un etier entre 1 et 3, celle-ci est simulee
	nombre←paquet
	cptj←2

		REPETER

			SI cptj MOD 2=0 ALORS
			ECRIRE "joueurs 1"
			FINSI
				ECRIRE"veuillez entrez le nombre d'allumette que vous retirez" 
				LIRE nombre 

				SI nombre>=1 ET nombre <=3 ALORS
					cptj←cptj+1
					cpt←cpt-nombre 
				

				SINON 
					ECRIRE " veuillez entrez un nombre valide, entre 1 et 3"

					

				FINSI


			SI cptj MOD 2=1 ALORS 
			ECRIRE "l'ordinateur joue"

				SI aleatoire>=1 ET aleatoire <=3 ALORS
					cptj←cptj+1
					cpt←cpt-aleatoire
					ECRIRE cpt 
						
					SINON 
						ECRIRE "Erreur de l'ordinateur, il va tenter de rentrer un nombre entre 1 et 3 "


				
				FINSI 

				
			 
			FINSI

				//quand l'ordinateur il faut cpt<-cpt-aleatoire si alétoire valide

		JUSQUA cpt<=1
					
						SI cptj MOD2=0  ALORS


						ECRIRE "Dommage l'ordinateur a gagner"

						SINON 
						ECRIRE "felicitation vous avez gagner"


						FINSI

					

FIN
}


PROGRAM allumette2;

USES crt; 
//but: Cree un jeux de nim ou un joueur est un ordinateur et l'autre est un vrai joueur, on utilisera la commande random pour symboliser le jeux de l'ordinateur
//entree
//sortie 

CONST paquet=21;

VAR cpt,cptj,nombre,alumette_retirer:integer;


BEGIN
	randomize;
	alumette_retirer:=(1+random(3));
	cpt:=paquet;
	cptj:=2;

		REPEAT
			BEGIN
			IF (cptj MOD 2=0) THEN
			writeln ('joueurs 1');
			

				writeln('veuillez entrez le nombre dallumette que vous retirez');
				readln (nombre); 

					IF (nombre>3) OR (nombre<0) THEN
						writeln ('Veuillez ecrire un nombre entre 1 et 3')

					ELSE 
						BEGIN cpt:=cpt-nombre;
						cptj:=cptj+1;
						writeln(cpt); 
						END;
					 


						IF cptj MOD 2=1 THEN 
						writeln ('lordinateur joue');


							IF (random>3) OR (random <0) THEN
															
							writeln ('Erreur de lordinateur, il va tenter de rentrer un nombre entre 1 et 3')	 
						ELSE
							BEGIN
								cptj:=cptj+1;
								cpt:=cpt-alumette_retirer;
								writeln (cpt) ;
							END
			END;
						
		UNTIL(cpt<=1);


				IF (cptj MOD 2=0) THEN


						writeln ('Dommage lordinateur a gagner')

						ELSE
						writeln ('felicitation vous avez gagner');	
readln				

END.
