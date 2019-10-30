puts('Cleaning Database')
Event.destroy_all
Expense.destroy_all
ShoppingItem.destroy_all
ToDo.destroy_all
User.destroy_all
Home.destroy_all
puts('Creating Homes')
Home.create(name: 'Saalestrasse')
Home.create(id: 42, name: 'Default')
puts('Seeding Done')
