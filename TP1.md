SQL - TP1
Matthieu Lagarrigue & Jules Chevalier
Écrire les requêtes pour obtenir les résultats suivants
Pour chaque requête, donner uniquement les colonnes nécessaires, renommée
proprement (en français)
1. Les films pour moi et mon enfant, cad :
- Les films de plus de 2h classés “NC-17” et “R”
- Les films de moins de 1h classés “G”

```sql
select title as titre, rating as classement, length as longueur from film WHERE (length > 120 AND rating IN ('NC-17', 'R')) OR (length < 60 and rating='G');
```
2. Les acteurs dont le prénom est Cameron, Fay ou Penelope

```sql
select first_name as prenom, last_name as nom from actor WHERE first_name IN ('Cameron', 'Fay', 'Penelope');
```

3. Le nom complet des acteurs (prénom nom, en une seule colonne) triés par ordre alphabétique

```sql
select CONCAT(first_name, ' ', last_name) as nom from actor ORDER BY nom ASC;
```

4. La liste des prénoms des acteurs, triés par ordre alphabétique de leurs noms de famille
```sql
select first_name as prenom from actor order by last_name ASC;
```

5. Les films qui parlent de Chef
```sql
select title as titre from film where description like '%Chef%';
```

6. Le nombre d’adresses qui sont dans chaque ville
```sql
select count(1) as nombre_adresse_ville from address group by city_id;
```

7. Le chiffre d’affaire global des locations
```sql
select sum(amount) as total from payment;
```

8. Le chiffre d’affaire par année et par mois
```sql
select
    sum(amount) as total,
    extract(MONTH from payment_date) as mois,
    extract(YEAR from payment_date) as annee
from payment
group by mois, annee;
```

9.  La liste des films avec l’âge minimum pour les voir
```sql
select title as titre,
    case
        when rating='R' then '17 avec adulte'
        when rating='NC-17' then '17'
        when rating='PG-13' then '13'
        else '0'
    end as age_minimum
from film;
```

10. Le film le plus court qui parle du Japon
```sql
select min(length) as temps from film where description like '%Japan%';
```

11. Le nombre de films qui parlent du Japon ou de l’Espace
```sql
select count(1) as nombre from film where description like '%Japan%' or description like '%Space%';
```

12. La durée des locations
```sql
select age(return_date, rental_date) as duree from rental;
```

13. La liste unique des districts des adresses
```sql
select distinct district as quartier from address;
```

14. Le client (trouver son id seulement) qui a loué le plus de film
```sql
select distinct customer_id, count(customer_id) as nombre_location from rental group by customer_id order by nombre_location desc limit 1;
```

15. Le vendeur (id seulement) qui a loué le plus de films
```sql
select distinct staff_id, count(staff_id) as nombre_location from rental group by staff_id order by nombre_location desc limit 1;
```

16. Le vendeur qui a faire le plus gros chiffre d’affaire
```sql
select distinct staff_id, sum(amount) as total from payment group by staff_id order by total desc limit 1;
```

17. Le total dépensé par les 5 plus gros clients
```sql
select distinct customer_id, sum(amount) as total from payment group by customer_id order by total desc limit 5;
```
18. Le montant médian de paiement
