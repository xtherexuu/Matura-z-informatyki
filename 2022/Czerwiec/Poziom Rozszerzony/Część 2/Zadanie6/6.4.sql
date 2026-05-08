SELECT sedziowie_txt.Imie, sedziowie_txt.Nazwisko
FROM sedziowie_txt
WHERE sedziowie_txt.Id_sedziego NOT IN (
    SELECT mecze_txt.Id_sedziego
	FROM mecze_txt
		INNER JOIN kluby_txt ON kluby_txt.Id_klubu = mecze_txt.Id_klubu
	WHERE
            (kluby_txt.Miasto = "Licowo" OR kluby_txt.Miasto = "Szymbark")
        AND
            mecze_txt.Data BETWEEN "2019-10-15" AND "2019-12-15"
);

