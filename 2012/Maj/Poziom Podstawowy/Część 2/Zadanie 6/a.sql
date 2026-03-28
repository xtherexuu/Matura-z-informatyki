-- Rozwiązanie do zadania 6 podpunkt a - w MariaDB (XAMPP)

SELECT kandydaci_txt.imie, kandydaci_txt.nazwisko 

FROM kandydaci_txt

WHERE 
    (
        kandydaci_txt.informatyka + 
        kandydaci_txt.matematyka + 
        kandydaci_txt.fizyka + 
        kandydaci_txt.jezykobcy
    ) = 400

GROUP BY kandydaci_txt.idosoby 

ORDER BY kandydaci_txt.nazwisko;
