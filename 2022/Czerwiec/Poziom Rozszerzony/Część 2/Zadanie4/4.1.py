with open("./DANE/liczby.txt") as f:
    dane = f.readlines()
    dane = [int("".join(list(reversed(x.strip())))) for x in dane]

for l in dane:
    if l % 17 == 0:
        print(l)
