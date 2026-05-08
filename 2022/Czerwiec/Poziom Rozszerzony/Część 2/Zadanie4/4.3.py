import math

with open("./DANE/liczby.txt") as f:
    dane = f.readlines()
    dane = [x.strip() for x in dane]
    dane2 = ["".join(list(reversed(x))) for x in dane]
    dane = [int(x) for x in dane]
    dane2 = [int(x) for x in dane2]


def czy_pierwsza(n):
    czy = True
    i = 2
    while i <= math.isqrt(n):
        if n % i == 0:
            czy = False
            break
        i += 1
    return czy


obie_pierwsze = []

for i, l in enumerate(dane):
    if czy_pierwsza(l) and czy_pierwsza(dane2[i]):
        obie_pierwsze.append(l)

print("\n".join([str(x) for x in obie_pierwsze]))
