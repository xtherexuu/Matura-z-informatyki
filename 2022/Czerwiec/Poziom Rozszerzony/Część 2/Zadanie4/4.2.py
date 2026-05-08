with open("./DANE/liczby.txt") as f:
    dane = f.readlines()
    dane = [x.strip() for x in dane]
    dane2 = ["".join(list(reversed(x))) for x in dane]
    dane = [int(x) for x in dane]
    dane2 = [int(x) for x in dane2]

    roznice = []
    for i, l in enumerate(dane):
        r = abs(l - (dane2[i]))
        roznice.append(r)
    m = max(roznice)
    i = roznice.index(m)
    sz = dane[i]
    print(f"{sz} {m}")
