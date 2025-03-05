class Animal:
    def make_sound(self):
        pass

class Dog(Animal):
    def make_sound(self):
        print("Гав-гав!")

class Cat(Animal):
    def make_sound(self):
        print("Мяу-мяу!")

dog = Dog()
cat = Cat()

dog.make_sound()
cat.make_sound()    



