-- Rozwiązanie do zadania 6 podpunkt b - w MariaDB (XAMPP)


SELECT uslugi_txt.ozn, uslugi_txt.nr 

FROM uslugi_txt 
    INNER JOIN nip_firm_txt ON uslugi_txt.NIP = nip_firm_txt.NIP

WHERE nip_firm_txt.firma LIKE "BARTEX" 

ORDER BY uslugi_txt.nr DESC;