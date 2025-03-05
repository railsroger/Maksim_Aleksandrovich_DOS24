class Car:
    def __init__(self, brand, model, year):
        self.brand = brand
        self.model = model 
        self.year = year

    def get_info(self):
        print(f"Brand car:", self.brand, "Model:", self.model, "Year:", self.year)    


vw = Car("Volkswagen", "Passat", 2022)
bmw = Car("BMW", "X6", 2023)
audi = Car("Audi", "A8", 2024)

vw.get_info()
bmw.get_info()
audi.get_info()
