-- Rozwiązanie do zadania 6 podpunkt d - w MariaDB (XAMPP)

SELECT 
    SUM(
        CASE
           WHEN kandydaci_txt.plec LIKE "m" THEN 1
           ELSE 0
        END
    ) as ile_mężczyzn,
       
    SUM(
        CASE
           WHEN kandydaci_txt.plec LIKE "k" THEN 1
           ELSE 0
        END
    ) as ile_kobiet

FROM kandydaci_txt 
    INNER JOIN zgloszenia_txt on kandydaci_txt.idosoby = zgloszenia_txt.idosoby

WHERE zgloszenia_txt.kierunek LIKE "informatyka";