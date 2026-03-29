with open("./Dane/napisy.txt", "r") as f:
    dane = f.readlines()

dane = [x.strip() for x in dane]

liczniki = [0 for x in range(0, 17)]

for napis in dane:
    dlugosc_napisu = len(napis)
    if 2 <= dlugosc_napisu <= 16:
        liczniki[dlugosc_napisu] += 1

for x in range(2, 17):
    print(f"Napisów od długości {x} jest: {liczniki[x]}")
