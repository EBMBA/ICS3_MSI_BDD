1. Dans quelle ville habite chaque client ?
(Nom, Prénom, Ville)
```sql
SELECT 

	first_name as prenom, 

	last_name as nom, 

	( 

		SELECT  

			( 

				SELECT city as ville  

				FROM city as ci 

				where ad.city_id = ci.city_id  

			) 

		FROM address as ad 

		WHERE c.address_id = ad.address_id  

	)	 

FROM customer as c; 
```
2. Dans quelle ville et dans quel pays habite chaque client ?
(Nom, Prénom, Ville, Pays)
```sql
SELECT 

	first_name as prenom, 

	last_name as nom, 

	( 

		SELECT  

			( 

				SELECT city as ville  

				FROM city as ci 

				where ad.city_id = ci.city_id  

			) 

		FROM address as ad 

		WHERE c.address_id = ad.address_id  

	), 

	( 

		SELECT  

			( 

				SELECT  

				( 

					SELECT 

						country as pays 

					FROM country 

					where country.country_id = ci.country_id  

				) 

				FROM city as ci 

				where ad.city_id = ci.city_id  

			) 

		FROM address as ad 

		WHERE c.address_id = ad.address_id  

	) 

FROM customer as c; 
```
3. Combien y-a-t-il d'exemplaires de chaque film ?
(Titre, Description, Nombre de copies)
```sql
SELECT 

	title as titre, 

	description, 

	( 

		SELECT count(1) as nombre_copies 

		FROM inventory 

		where inventory.film_id = f.film_id 

	) 

FROM film as f ; 
```
4. Combien y-a-t-il d'exemplaires de chaque film par magasin ?
(Titre, Description, Magasin, Nombre de copies)
```sql
SELECT 

	( 

		SELECT title as titre  

		FROM film as f 

		where inv.film_id = f.film_id 

	), 

	( 

		SELECT description 

		FROM film as f 

		where inv.film_id = f.film_id 

	), 

	store_id as magasin--, 

	--count(1) as copies 

FROM inventory as inv; 

--group by store_id; 
```
5. Combien d'acteurs ont joué dans chaque film ?
(Titre, Nombre d’acteurs)
6. Dans quelles catégories a joué chaque acteur ?
(Nom, Prénom, Catégorie)
7. Quels films Jon (le vendeur ) a loué en juin 2005 ?
(Titre)
8. Y-a-t-il des locations pour un client qui ont été payées par un autre client ?
9. Pour chaque film, dans quelle(s) catégorie(s) est-il et quels acteurs ont joué dedans ?
(Titre 1, Catégorie 1, Acteur 1)
(Titre 1, Catégorie 1, Acteur 2)
(Titre 1, Catégorie 2, Acteur 1)
(Titre 1, Catégorie 2, Acteur 2)
(Titre 2, Catégorie 3, Acteur 3)
...
10. Pour chaque film du magasin de Mike, dans quelle(s) catégorie(s) est-il et quels acteurs ont joué dedans ?
Idem
11. Y-a-t-il des clients qui habitent dans la même ville et qui ont loué le même film ?
(Nom 1, Prénom 1, Nom 2, Prénom 2, Ville, Film)

1.  Y-a-t-il des clients qui habitent dans la même ville et qui ont loué au moins 2 mêmes films ?
(Nom 1, Prénom 1, Nom 2, Prénom 2, Ville, Film 1, Film 2)
13. Quel vendeur a loué le plus de films ?
(Nom, Prénom, Nombre de films loués)
14. Quel client a loué le plus de films ?
(Nom, Prénom, Nombre de films loués)
15. Quel(s) est(sont) le(s) 8ème film(s) le(s) plus loué(s) ?
(Titre)
16. De quelles villes viennent les clients de chaque magasins ?
(Magasin, Ville)
17. De quelles villes viennent les clients de chaque magasins et combien sont-ils ?
(Magasin, Ville, Nombre de clients)
18. Pour chaque location de film, quelles sont les villes et pays du client et du vendeur ?
(Titre, Ville Vendeur, Pays Vendeur, Ville Client, Pays Vendeur)
19. Quel est le montant médian de paiement ? (À faire sans sous-requête)
20. Générer le triangle de pascal pour 10 valeurs
21. Générer la suite de Fibonacci (10 premières valeurs)
22. Générer des valeurs aléatoires différentes
23. Quels films font la même durée ?
(Titre Film 1, Titre Film 2, Durée) !! Pas de doublons, y compris (1, 2) et (2, 1)