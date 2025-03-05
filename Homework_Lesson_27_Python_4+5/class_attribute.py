class Employee:
    company_name = "37Signals"

    def __init__(self, name, position):
        self.name = name
        self.position = position

    def display_info(self):
        return f"Employee {self.name} workin in {self.company_name} on position {self.position}"
    

employee1 = Employee("DHH", "CEO and Programmer")
employee2 = Employee("Jorge Manrubia", "Principal Programmer")

print(employee1.display_info())
print(employee2.display_info())
