# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Ski.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "start"

Booking.destroy_all
Ski.destroy_all

Ski.create!(types: "Alpin", available: "available", poles: true, price: 50, size: 100, city: 'London')
Ski.create!(types: "Nordique", available: "available", poles: true, price: 30, size: 170, city: 'Paris')
Ski.create!(types: "rando", available: "available", poles: true, price: 40, size: 160, city: 'Lille')
Ski.create!(types: "rando", available: "available", poles: true, price: 200, size: 30, city: 'Roubaix')
Ski.create!(types: "Snow", available: "available", poles: true, price: 520, size: 120, city: 'Dijon')

Booking.create!(status: "validate", end_date: "", start_date: "", ski_id: "11")
Booking.create!(status: "", end_date: "", start_date: "", ski_id: "15")

puts"end"
