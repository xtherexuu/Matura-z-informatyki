with open("./Dane/napisy.txt", "r") as f:
    dane = f.readlines()

dane = [x.strip() for x in dane]

licznik_samych_zer = 0
licznik_samych_jedynek = 0

for napis in dane:
    licznik_zer = 0
    licznik_jedynek = 0

    for znak in napis:
        if znak == "1":
            licznik_jedynek += 1
        else:
            licznik_zer += 1

    if licznik_zer == 0:
        licznik_samych_jedynek += 1

    if licznik_jedynek == 0:
        licznik_samych_zer += 1

print(
    f"Napisów składających się z samych zer jest: {licznik_samych_zer}\nNapisów składających się z samych jedynek jest: {licznik_samych_jedynek}"
)
