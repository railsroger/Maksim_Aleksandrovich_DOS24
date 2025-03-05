korteg = ("Maks", 22, "Dzmitri", "BPI", 23, "BPI")
 
i = 0
while i < len(korteg):
    print(korteg[i])
    i += 1
setkor = set(korteg)
if len(korteg) == len(setkor):
    print("All elements unique.")
else:
    print("There are identical elements.")