SELECT filmy_txt.ID_filmu, filmy_txt.Tytul

FROM filmy_txt

WHERE filmy_txt.ID_filmu LIKE "%2005" AND filmy_txt.Gatunek LIKE "familijny"

ORDER BY filmy_txt.Tytul ASC;
