-- Afficher les sessions de formation à venir qui ne se chevauchent pas avec une session donnée :
SELECT *
FROM session
WHERE Date_fin  < [Date de début de la session donnée] OR Date_debut  > [Date de fin de la session donnée];

-- Afficher les sessions de formation à venir avec des places encore disponibles :
SELECT * 
FROM session 
WHERE Places_max > (SELECT COUNT() FROM inscription  WHERE inscription.Id_session  = Identifiant)
AND Etat = 'en cours';

-- Afficher le nombre d'inscrits par session de formation :
SELECT Id_session, COUNT() AS Nombre_d_inscrits
FROM inscription
JOIN session  ON inscription.Id_session = session.Id_session
GROUP BY session.Id_session;

-- Afficher l'historique des sessions de formation d'un apprenant donné :
SELECT Id_session.*
FROM inscription
JOIN session ON inscription.Id_session = session.Id_session
WHERE inscription.Id_apprenant_ = [Identifiant de l'apprenant donné];

-- Afficher la liste des sessions qui sont affectées à un formateur donné, triées par date de début :
SELECT *
FROM session
WHERE Id_Formateur = [Identifiant du formateur donné]
ORDER BY Date_debut;

-- Afficher la liste des apprenants d'une session donnée d'un formateur donné :
SELECT Id_apprenant_ .*
FROM inscription 
JOIN apprenant_ ON inscription.Id_apprenant_ = apprenant_.Id_apprenant_ 
WHERE inscription.Id_session = [Identifiant de la session donnée]
AND session.Id_Formateur  = [Identifiant du formateur donné];



--  here




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