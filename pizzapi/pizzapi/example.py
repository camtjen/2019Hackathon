from .address import *
from .customer import *

class Example():
    def __init__(self):
        pass

    def example(self):
        customer = Customer('Test', 'Testman', 'test@example.com', '')
        address = Address('15 Dineen Dr', 'Fredericton', 'NB', 'E3B 5A3')
        store = address.closest_store()
        menu = store.get_menu()
        menu.search(Name='Coke')
