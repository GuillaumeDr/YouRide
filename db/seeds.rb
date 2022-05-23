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

Ski.create!(types: "Alpin", available: "available", poles: true, price: 50, size: 100)
Ski.create!(types: "Nordique", available: "available", poles: true, price: 30, size: 170)
Ski.create!(types: "rando", available: "available", poles: true, price: 40, size: 160)
Ski.create!(types: "rando", available: "available", poles: true, price: 200, size: 30)
Ski.create!(types: "Snow", available: "available", poles: true, price: 520, size: 120)


puts"end"
