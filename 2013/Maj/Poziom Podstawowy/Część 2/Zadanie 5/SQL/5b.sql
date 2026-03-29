
SELECT 
    COUNT(DISTINCT ma_hobby_txt.id_osoby) AS liczba_zainteresowanych_majsterkowaniem

FROM ma_hobby_txt 
    INNER JOIN hobby_txt on hobby_txt.id = ma_hobby_txt.id_hobby

WHERE hobby_txt.Hobby = "majsterkowanie";






