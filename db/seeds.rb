# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Ski.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "start"

Ski.destroy_all

User.create!(email: "test1@gmail.com", password: "azerty", first_name: "test1", last_name: "test1")
User.create!(email: "test2@gmail.com", password: "azerty", first_name: "test2", last_name: "test2")
Ski.create!(types: "Alpine skis", available: "available", poles: true, price: 50, size: 100, city: 'London', user_id: 6)
Ski.create!(types: "Nordic skis", available: "available", poles: true, price: 30, size: 170, city: 'Paris', user_id: 6)
Ski.create!(types: "Cross-country skis", available: "available", poles: false, price: 40, size: 160, city: 'Lille', user_id: 7)
Ski.create!(types: "Downhill skis", available: "available", poles: true, price: 200, size: 30, city: 'Roubaix', user_id: 7)
Ski.create!(types: "Snowboard", available: "available", poles: true, price: 520, size: 120, city: 'Dijon', user_id: 7)

#Booking.create!(status: "validate", end_date: "", start_date: "", ski_id: "11")
#Booking.create!(status: "", end_date: "", start_date: "", ski_id: "15")


puts"end"
