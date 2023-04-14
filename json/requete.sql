-- Afficher les sessions de formation à venir qui ne se chevauchent pas avec une session donnée :
SELECT *
FROM Session_de_formation
WHERE Date_de_fin < [Date de début de la session donnée] OR Date_de_début > [Date de fin de la session donnée];

-- Afficher les sessions de formation à venir avec des places encore disponibles :
SELECT *
FROM Session_de_formation
WHERE Nombre_de_places_maximal > (SELECT COUNT() FROM Inscription WHERE Inscription.Session_de_formation = Session_de_formation.Identifiant)
AND Etat = 'en cours';

-- Afficher le nombre d'inscrits par session de formation :
SELECT Session_de_formation.Identifiant, COUNT() AS Nombre_d_inscrits
FROM Inscription
JOIN Session_de_formation ON Inscription.Session_de_formation = Session_de_formation.Identifiant
GROUP BY Session_de_formation.Identifiant;

-- Afficher l'historique des sessions de formation d'un apprenant donné :
SELECT Session_de_formation.*
FROM Inscription
JOIN Session_de_formation ON Inscription.Session_de_formation = Session_de_formation.Identifiant
WHERE Inscription.Apprenant = [Identifiant de l'apprenant donné];

-- Afficher la liste des sessions qui sont affectées à un formateur donné, triées par date de début :
SELECT *
FROM Session_de_formation
WHERE Formateur = [Identifiant du formateur donné]
ORDER BY Date_de_début;

-- Afficher la liste des apprenants d'une session donnée d'un formateur donné :
SELECT Apprenant.*
FROM Inscription
JOIN Apprenant ON Inscription.Apprenant = Apprenant.Identifiant
WHERE Inscription.Session_de_formation = [Identifiant de la session donnée]
AND Session_de_formation.Formateur = [Identifiant du formateur donné];

-- Afficher l'historique des sessions de formation d'un formateur donné :
SELECT Session_de_formation.*
FROM Session_de_formation
WHERE Formateur = [Identifiant du formateur donné];

-- Afficher les formateurs qui sont disponibles entre 2 dates :
SELECT *
FROM Formateur
WHERE Identifiant NOT IN (
SELECT DISTINCT Formateur
FROM Session_de_formation
WHERE Date_de_fin > [Date de début donnée] AND Date_de_début < [Date de fin donnée]
);

-- Afficher toutes les sessions d une formation donnée :
SELECT *
FROM Session_de_formation
WHERE Formation = [Identifiant de la formation donnée];

-- Afficher le nombre total des sessions par catégorie de formation :
SELECT Formation.Catégorie, COUNT() AS Nombre_de_sessions
FROM Session_de_formation
JOIN Formation ONSession_de_formation.Formation = Formation.Identifiant
GROUP BY Formation.Catégorie;

-- Afficher le nombre total des inscrits par catégorie de formation :
SELECT Formation.Catégorie, COUNT() AS Nombre_d_inscrits
FROM Inscription
JOIN Session_de_formation ON Inscription.Session_de_formation = Session_de_formation.Identifiant
JOIN Formation ON Session_de_formation.Formation = Formation.Identifiant
GROUP BY Formation.Catégorie;