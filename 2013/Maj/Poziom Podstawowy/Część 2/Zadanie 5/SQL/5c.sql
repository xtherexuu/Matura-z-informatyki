SELECT osoby_txt.Imię, osoby_txt.Nazwisko

FROM (
        osoby_txt 
        INNER JOIN ma_hobby_txt ON ma_hobby_txt.id_osoby = osoby_txt.id
    )
    	INNER JOIN hobby_txt ON hobby_txt.id = ma_hobby_txt.id_hobby

WHERE hobby_txt.Hobby LIKE "programowanie"

ORDER BY osoby_txt.Nazwisko ASC;
