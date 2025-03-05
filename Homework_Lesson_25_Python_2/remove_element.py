list_str = [21, 43, 65, 43, 23, 54]
number = int(input("Enter number: "))

new_list = [x for x in list_str if x >= number]
print("Результат:", new_list)
