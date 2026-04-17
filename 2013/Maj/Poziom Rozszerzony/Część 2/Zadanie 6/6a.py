with open("./Dane/dane.txt", "r") as f:
    dane = f.readlines()

dane = [x.strip() for x in dane]

ile_spelnia = 0

for liczba in dane:
    dl = len(liczba)
    if liczba[0] == liczba[dl - 1]:
        ile_spelnia += 1

print(ile_spelnia)
