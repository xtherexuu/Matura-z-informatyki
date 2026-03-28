-- Rozwiązanie do zadania 6 podpunkt d - w MariaDB (XAMPP)

SELECT tablice_txt.powiat 

FROM tablice_txt 
    INNER JOIN uslugi_txt ON uslugi_txt.ozn = tablice_txt.ozn

WHERE tablice_txt.rodzaj LIKE "z" 

GROUP BY uslugi_txt.NIP

ORDER BY tablice_txt.powiat ASC;    -- Ta linijka nie jest wymagana, aby zadanie było poprawne
                                    -- ale cke w kluczu ma posortowane, to ja też zrobiłem posortowane
                                    -- żeby łatwiej było porównać   