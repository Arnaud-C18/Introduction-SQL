ALTER TABLE article
ADD CONSTRAINT article_fournisseur_id FOREIGN KEY (if_fou) REFERENCES fournisseur(id);

ALTER TABLE article
ADD CONSTRAINT bon_fournisseur_id  FOREIGN KEY (id_fou) REFERENCES fournisseur(id);

ALTER TABLE compo
ADD CONSTRAINT compo_article_id  FOREIGN KEY (id_art) REFERENCES article(id);

ALTER TABLE compo
ADD CONSTRAINT compo_bon_id  FOREIGN KEY (id_bon) REFERENCES bon(id);

INSERT INTO fournisseur (id, nom)
VALUES
(1, 'Française d''Imports'),
(2, 'FDM SA'),
(3, 'Dubois & Fils');

INSERT INTO article (id, ref, designation, prix, id_fou)
VALUES
(1, 'A01', 'Perceuse P1', 74.99, 1),
(2, 'F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', 2.25, 2),
(3, 'F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.45, 2),
(4, 'D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.40, 3),
(5, 'A02', 'Meuleuse 125mm', 37.85, 1),
(6, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10) ', 1.8, 3),
(7, 'A03', 'Perceuse à colonne', 185.25, 1),
(8, 'D04', 'Coffret mêches à bois', 12.25, 3),
(9, 'F03', 'Coffret mêches plates', 6.25, 2),
(10, 'F04', 'Fraises d’encastrement', 8.14, 2);

ALTER TABLE bon (id, numero, date_cmde, delai, id_fou)
VALUES
(1, 1, 22/10/2024, 3, 1),
(2, 2, 22/10/2024, 3, 1),
(3, 3, 22/10/2024, 3, 1);

ALTER TABLE compo (qte, id_art, id_bon)
VALUES
(3, 1, 1)
(4, 5, 2)
(1, 7, 3)