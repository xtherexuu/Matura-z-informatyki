
SELECT COUNT(T.Id_meczu)

FROM (
    SELECT
        mecze_txt.Id_meczu,
        (mecze_txt.Sety_wygrane + mecze_txt.Sety_przegrane) AS stosunek
    FROM mecze_txt
) AS T

WHERE T.stosunek = 5;