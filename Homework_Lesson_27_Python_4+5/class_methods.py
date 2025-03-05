class Employee:
    company_name = "37Signals"

    def __init__(self, name, position, age):
        self.name = name
        self.position = position
        self.age = age

    def display_info(self):
        return f"Employee {self.name} workin in {self.company_name} on position {self.position} and {self.age} years old"
    
    @classmethod
    def change_company(cls, new_name):
        cls.company_name = new_name

    @staticmethod
    def is_adult(age):
        if age >= 18:
            return True
        else:
            return False

employee1 = Employee("DHH", "CEO and Programmer", 21)
employee2 = Employee("Jeff Bezos", "CEO of Amazon", 61)

Employee.change_company("Amazon")   

print(employee1.display_info())
print(employee2.display_info())

print(employee1.is_adult(61))
print(employee2.is_adult(20))
