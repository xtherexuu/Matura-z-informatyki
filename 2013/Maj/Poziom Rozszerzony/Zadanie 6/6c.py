with open("./Dane/dane.txt", "r") as f:
    dane = f.readlines()

dane = [x.strip() for x in dane]

spelniajace = []

for liczba in dane:
    current_max = 0
    czy_spelnia = True
    for cyfra in liczba:
        if int(cyfra) >= current_max:
            current_max = max(int(cyfra), current_max)
        else:
            czy_spelnia = False
            break
    if czy_spelnia:
        spelniajace.append(liczba)

print(f"Ilość liczb spełniających warunek: {len(spelniajace)}")

spelniajace = [int(x) for x in spelniajace]

print(
    f"Największa z liczb spełniających warunek: {max(spelniajace)} \n Najmniejsza z liczb spełniających warunek: {min(spelniajace)}"
)
