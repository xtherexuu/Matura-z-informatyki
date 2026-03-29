SELECT osoby_txt.Imię, osoby_txt.Nazwisko 
FROM (
    osoby_txt 
    INNER JOIN ma_hobby_txt ON ma_hobby_txt.id_osoby = osoby_txt.id
)       INNER JOIN hobby_txt ON hobby_txt.id = ma_hobby_txt.id_hobby

GROUP BY osoby_txt.id

HAVING COUNT(ma_hobby_txt.id) > 4

ORDER BY osoby_txt.Nazwisko, osoby_txt.Imię ASC;