# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer1 = Customer.create!(first_name: 'shirley', last_name: 'decesari', email: 'shirley@me.com', address: 'a place')
customer2 = Customer.create!(first_name: 'dhirley', last_name: 'secesari', email: 'dhirley@me.com', address: 'a different place')

tea1 = Tea.create!(title: 'green tea', description: 'it is green', temperature: 140, brew_time: '2 minutes')
tea2 = Tea.create!(title: 'black tea', description: 'it is not black', temperature: 180, brew_time: '3 minutes')
tea3 = Tea.create!(title: 'oolong tea', description: 'it is buttery', temperature: 160, brew_time: '4 minutes')
tea4 = Tea.create!(title: 'sleepytime tea', description: 'you will sleep', temperature: 175, brew_time: '4 minutes')

subscription1 = customer1.subscriptions.create!(title: 'green tea subscription', price: 18.00, frequency: 'weekly', status: 'active', tea_id: tea1.id, customer_id: customer1.id)
subscription2 = customer1.subscriptions.create!(title: 'black tea subscription', price: 10.00, frequency: 'monthly', status: 'active', tea_id: tea2.id, customer_id: customer1.id)
subscription3 = customer2.subscriptions.create!(title: 'black tea subscription', price: 10.00, frequency: 'monthly', status: 'active', tea_id: tea2.id, customer_id: customer2.id)
subscription4 = customer2.subscriptions.create!(title: 'oolong tea subscription', price: 20.00, frequency: 'weekly', status: 'active', tea_id: tea3.id, customer_id: customer2.id)
subscription5 = customer2.subscriptions.create!(title: 'sleepytime tea subscription', price: 20.00, frequency: 'weekly', status: 'active', tea_id: tea4.id, customer_id: customer2.id)