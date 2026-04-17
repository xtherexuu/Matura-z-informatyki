SELECT filmy_txt.Gatunek, COUNT(wypozyczenia_txt.ID_wyp) AS liczba_wyporzyczeń

FROM filmy_txt 
    INNER JOIN wypozyczenia_txt 
    ON filmy_txt.ID_filmu = wypozyczenia_txt.ID_filmu

GROUP BY filmy_txt.Gatunek

ORDER BY COUNT(wypozyczenia_txt.ID_wyp) DESC

LIMIT 1;

