-- Rozwiązanie do zadania 6 podpunkt c - w MariaDB (XAMPP)

SELECT nip_firm_txt.firma, COUNT(*) as liczba_pojazdów_wziętych_w_leasing 

FROM nip_firm_txt 
    INNER JOIN uslugi_txt ON uslugi_txt.NIP = nip_firm_txt.NIP

WHERE uslugi_txt.rodzaj_uslugi LIKE "L" 

GROUP BY nip_firm_txt.firma 

ORDER BY COUNT(*) DESC 

LIMIT 1;