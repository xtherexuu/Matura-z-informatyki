SELECT hobby_txt.Hobby 

FROM hobby_txt 
    INNER JOIN ma_hobby_txt ON hobby_txt.id = ma_hobby_txt.id_hobby

GROUP BY hobby_txt.id

HAVING 
    COUNT(ma_hobby_txt.id) = (
        SELECT MAX(TAB.ile_osób_się_interesuje) AS maximum
        FROM (
            SELECT COUNT(ma_hobby_txt.id) as ile_osób_się_interesuje 
            FROM ma_hobby_txt 
                INNER JOIN hobby_txt ON hobby_txt.id = ma_hobby_txt.id_hobby 
            GROUP BY hobby_txt.Hobby
        ) AS TAB
    );

