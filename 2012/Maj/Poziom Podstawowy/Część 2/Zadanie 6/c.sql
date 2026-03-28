-- Rozwiązanie do zadania 6 podpunkt c - w MariaDB (XAMPP)


SELECT kandydaci_txt.imie, kandydaci_txt.nazwisko 

FROM kandydaci_txt 
    INNER JOIN zgloszenia_txt ON kandydaci_txt.idosoby = zgloszenia_txt.idosoby 
    
GROUP BY zgloszenia_txt.idosoby 

HAVING COUNT(*) = 5;
