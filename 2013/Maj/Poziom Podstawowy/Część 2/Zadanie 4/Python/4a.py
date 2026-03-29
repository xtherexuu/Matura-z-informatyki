with open("./Dane/napisy.txt", "r") as f:
    dane = f.readlines()

dane = [x.strip() for x in dane]

licznik = 0

for napis in dane:
    if len(napis) % 2 == 0:
        licznik += 1

print(f"Napisów o parzystej długości jest: {licznik}")
