-- Pierwsza część zapytania zwracająca tutuły niewyporzyczonych fimów
SELECT filmy_txt.Tytul

FROM filmy_txt 
    LEFT JOIN wypozyczenia_txt 
    ON filmy_txt.ID_filmu = wypozyczenia_txt.ID_filmu
    
WHERE wypozyczenia_txt.ID_filmu IS NULL

GROUP BY filmy_txt.ID_filmu

ORDER BY filmy_txt.Tytul; -- Ta linijka nie jest konieczna do poprawnego wykonania zadania, jednak w kluczu odpowiedzi są posortowane
						  -- Więc dla lepszego sprawdzania tutaj też będą posortowane.

-- Druga część zapytania licząca ile jest tych filmów

SELECT COUNT(*) FROM
    (
        SELECT filmy_txt.Tytul
        FROM filmy_txt LEFT JOIN wypozyczenia_txt ON filmy_txt.ID_filmu = wypozyczenia_txt.ID_filmu
        WHERE wypozyczenia_txt.ID_filmu IS NULL
        GROUP BY filmy_txt.ID_filmu
    ) as T;