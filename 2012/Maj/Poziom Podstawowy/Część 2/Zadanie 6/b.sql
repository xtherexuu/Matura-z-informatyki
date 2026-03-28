-- Rozwiązanie do zadania 6 podpunkt b - w MariaDB (XAMPP)

SELECT
	SUM(
        CASE
        	WHEN zgloszenia_txt.kierunek LIKE "informatyka" THEN 1
        	ELSE 0
        END
    ) as ile_kandydatów_zgłosiło_się_na_informatykę,	

    SUM(
        CASE
        	WHEN zgloszenia_txt.kierunek LIKE "matematyka" THEN 1
        	ELSE 0
        END
    ) as ile_kandydatów_zgłosiło_się_na_matematykę,

    SUM(
        CASE
        	WHEN zgloszenia_txt.kierunek LIKE "fizyka" THEN 1
        	ELSE 0
        END
    ) as ile_kandydatów_zgłosiło_się_na_fizykę

FROM zgloszenia_txt;