class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age 

    def introduce(self):
        print("Name:", self.name, "Age:", self.age)    


maks = Person("Maks", 34)
dzmitri = Person("Dzmitri", 39)

maks.introduce()
dzmitri.introduce()
