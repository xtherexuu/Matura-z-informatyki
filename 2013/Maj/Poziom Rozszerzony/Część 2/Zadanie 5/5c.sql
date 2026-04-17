SELECT
	SUM(
		CASE
        	WHEN wypozyczenia_txt.Data_wyp LIKE "2011-06%"
        	THEN 1
        	ELSE 0
        END
    ) AS "06",
    SUM(
		CASE
        	WHEN wypozyczenia_txt.Data_wyp LIKE "2011-07%"
        	THEN 1
        	ELSE 0
        END
    ) AS "07",
    SUM(
		CASE
        	WHEN wypozyczenia_txt.Data_wyp LIKE "2011-08%"
        	THEN 1
        	ELSE 0
        END
    ) AS "08",
    SUM(
		CASE
        	WHEN wypozyczenia_txt.Data_wyp LIKE "2011-09%"
        	THEN 1
        	ELSE 0
        END
    ) AS "09",
    SUM(
		CASE
        	WHEN wypozyczenia_txt.Data_wyp LIKE "2011-10%"
        	THEN 1
        	ELSE 0
        END
    ) AS "10",
    SUM(
		CASE
        	WHEN wypozyczenia_txt.Data_wyp LIKE "2011-1%"
        	THEN 1
        	ELSE 0
        END
    ) AS "11",
    SUM(
		CASE
        	WHEN wypozyczenia_txt.Data_wyp LIKE "2011-12%"
        	THEN 1
        	ELSE 0
        END
    ) AS "12"
FROM wypozyczenia_txt;


