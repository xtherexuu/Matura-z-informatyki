SELECT klienci_txt.Imie, klienci_txt.Nazwisko, SUM(filmy_txt.Cena_w_zl) as łączna_zapłacona_kwota

FROM (
    klienci_txt 
    INNER JOIN wypozyczenia_txt 
    ON klienci_txt.Pesel = wypozyczenia_txt.Pesel
)
    INNER JOIN filmy_txt 
    ON filmy_txt.ID_filmu = wypozyczenia_txt.ID_filmu

GROUP BY klienci_txt.Pesel

ORDER BY SUM(filmy_txt.Cena_w_zl) DESC

LIMIT 1;




