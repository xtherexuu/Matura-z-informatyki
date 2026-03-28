-- Rozwiązanie do zadania 6 podpunkt e - w MariaDB (XAMPP)

SELECT 
    ROUND(AVG(kandydaci_txt.matematyka), 2) as średnia_z_matematyki 

FROM kandydaci_txt 
    INNER JOIN zgloszenia_txt ON kandydaci_txt.idosoby = zgloszenia_txt.idosoby

WHERE zgloszenia_txt.kierunek LIKE "fizyka";