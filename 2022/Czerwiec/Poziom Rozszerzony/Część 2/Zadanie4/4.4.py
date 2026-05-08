with open("./DANE/liczby.txt") as f:
    dane = f.readlines()
    dane = [x.strip() for x in dane]

dwa = 0
trzy = 0

x = set()

for l in dane:
    x.add(l)
    counter = 0
    for l2 in dane:
        if l == l2:
            counter += 1
    if counter == 2:
        dwa += 1
    if counter == 3:
        trzy += 1

print(x.__len__(), dwa // 2, trzy // 3)
