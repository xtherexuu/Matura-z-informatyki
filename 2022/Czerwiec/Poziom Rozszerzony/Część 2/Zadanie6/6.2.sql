SELECT
    kluby_txt.Miasto,
    COUNT(mecze_txt.Id_meczu) AS Liczba_rozegranych_meczy_w_miesice
FROM kluby_txt
	INNER JOIN mecze_txt ON mecze_txt.Id_klubu = kluby_txt.Id_klubu
GROUP BY kluby_txt.Miasto
ORDER BY Liczba_rozegranych_meczy_w_miesice DESC;
