SELECT * FROM article ORDER BY DESIGNATION ASC;

SELECT * FROM article ORDER BY PRIX DESC;

FROM article WHERE DESIGNATION LIKE '%boulon%' ORDER BY PRIX asc;

SELECT * FROM article WHERE BINARY DESIGNATION LIKE '%sachet%';

SELECT * FROM article WHERE DESIGNATION LIKE '%sachet%';

SELECT * FROM article
INNER JOIN fournisseur ON article.ID_FOU = fournisseur.ID
ORDER BY fournisseur.NOM, article.PRIX;

SELECT * FROM article
INNER JOIN fournisseur ON article.ID_FOU = fournisseur.ID
WHERE fournisseur.NOM = 'Dubois & Fils';

SELECT fournisseur.NOM, AVG(article.PRIX) AS prix_moyen
FROM article
INNER JOIN fournisseur ON article.ID_FOU = fournisseur.ID
WHERE fournisseur.NOM = 'Dubois & Fils';

SELECT fournisseur.nom, AVG(article.prix) AS prix_moyen
FROM article
INNER JOIN fournisseur ON article.ID_FOU = fournisseur.ID
GROUP BY fournisseur.nom;

SELECT * FROM bon 
WHERE DATE_CMDE BETWEEN '2019/03/01' AND '2019/04/05 12:00:00';

SELECT * FROM compo
INNER JOIN article ON compo.ID_ART = article.ID
WHERE article.DESIGNATION LIKE '%boulon%';

SELECT * FROM compo
INNER JOIN article ON compo.ID_ART = article.ID
INNER JOIN fournisseur ON article.ID_FOU = fournisseur.ID
WHERE article.DESIGNATION LIKE '%boulon%'

SELECT ID_BON, SUM(article.prix * compo.QTE) AS total_prix
FROM compo 
INNER JOIN article ON compo.ID_ART = article.ID
GROUP BY ID_BON;

SELECT compo.ID_BON, SUM(compo.QTE) AS nombre_article
FROM compo
GROUP BY ID_BON 
HAVING SUM(compo.QTE) > 25;

SELECT COUNT(compo.ID_BON) AS nombre_commande,
SUM(article.prix * compo.QTE) AS cout_total
FROM compo 
INNER JOIN article ON compo.ID_ART = article.ID
INNER JOIN bon ON compo.ID_BON = bon.ID
WHERE MONTH(bon.DATE_CMDE) = 4;
