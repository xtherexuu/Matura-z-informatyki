-- Rozwiązanie do zadania 6 podpunkt e - w MariaDB (XAMPP)

SELECT 
    nip_firm_txt.firma, 
    ROUND(AVG(uslugi_txt.rata), 2) as średnia_rata_miesięczna_w_zł 

FROM 
(
    nip_firm_txt 
        INNER JOIN uslugi_txt on nip_firm_txt.NIP = uslugi_txt.NIP
) 
    INNER JOIN tablice_txt on uslugi_txt.ozn = tablice_txt.ozn

WHERE tablice_txt.powiat LIKE "Konin" 

GROUP BY nip_firm_txt.firma

ORDER BY średnia_rata_miesięczna_w_zł ASC;  -- Ta linijka nie jest wymagana, aby zadanie było poprawne
                                            -- ale cke w kluczu ma posortowane, to ja też zrobiłem posortowane
                                            -- żeby łatwiej było porównać   