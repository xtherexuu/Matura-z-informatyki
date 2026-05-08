SELECT sedziowie_txt.Imie, sedziowie_txt.Nazwisko
FROM sedziowie_txt
	INNER JOIN mecze_txt ON mecze_txt.Id_sedziego = sedziowie_txt.Id_sedziego
GROUP BY sedziowie_txt.Id_sedziego
HAVING COUNT(*) > (
	SELECT AVG(T.Liczba_meczy)
	FROM (
	    SELECT sedziowie_txt.Id_sedziego, COUNT(*) as Liczba_meczy
	    FROM sedziowie_txt
		    INNER JOIN mecze_txt ON mecze_txt.Id_sedziego = sedziowie_txt.Id_sedziego
        GROUP BY sedziowie_txt.Id_sedziego
    ) AS T
);
