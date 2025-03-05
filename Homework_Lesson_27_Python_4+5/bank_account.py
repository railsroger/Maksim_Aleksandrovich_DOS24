class BankAccount:
    def __init__(self, balance):
        self.__balance = balance

    def deposit(self, amount):
        self.__balance += amount
        
        
    def withdraw(self, amount):
        if amount > self.__balance:
            print("Not enough money in the account.")
        else:
            self.__balance -= amount

    def get_balance(self):
        return self.__balance


account = BankAccount(1000)
account.deposit(10500)
account.withdraw(1500)
print(account.get_balance())
