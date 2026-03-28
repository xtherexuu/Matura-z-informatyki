-- Rozwiązanie do zadania 6 podpunkt a - w MariaDB (XAMPP)

SELECT 

    SUM((
        CASE
            WHEN uslugi_txt.rodzaj_uslugi LIKE "L" THEN uslugi_txt.rata
            ELSE 0
        END
    )) as Sumaryczna_miesięczna_kwota_za_leasing,

    SUM((
        CASE
            WHEN uslugi_txt.rodzaj_uslugi LIKE "W" THEN uslugi_txt.rata
            ELSE 0
        END
    )) as Sumaryczna_miesięczna_kwota_za_wynajem

FROM uslugi_txt;