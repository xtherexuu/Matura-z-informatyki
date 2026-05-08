SELECT Y.Nazwa, Y.Miasto, Y.wygrane, Y.przegrane
FROM (
    SELECT 
        X.Id_klubu, 
    	X.Nazwa,
    	X.Miasto,
        SUM(CASE WHEN X.bilans > 0 THEN 1 ELSE 0 END) as wygrane, 
        SUM(CASE WHEN X.bilans < 0 THEN 1 ELSE 0 END) as przegrane 
    FROM (
        SELECT
            mecze_txt.Id_klubu,
            kluby_txt.Nazwa,
            kluby_txt.Miasto,
            (mecze_txt.Sety_wygrane - mecze_txt.Sety_przegrane) AS bilans
        FROM mecze_txt
            INNER JOIN kluby_txt ON kluby_txt.Id_klubu = mecze_txt.Id_klubu
    ) AS X
    GROUP BY X.Id_klubu
) AS Y
WHERE (Y.wygrane - Y.przegrane) >= 0;

