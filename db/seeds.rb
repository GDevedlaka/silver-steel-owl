# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Business.destroy_all
Service.destroy_all
Customer.destroy_all
Booking.destroy_all

davesbarber = Business.create!(address: "22 Elder Street, London", name: "Dave's Barber", phone_number: "020 8343 2343", email: "dave@gmail.com", password: "dave123")
jimsdentist = Business.create!(address: "20 Folgate Street, London", name: "Jim's Dentist", phone_number: "020 2343 6763", email: "jim@gmail.com", password: "jim123")
judysnails = Business.create!(address: "10 Baker Street, London", name: "Judy's Nails", phone_number: "020 893 4479", email: "judy@gmail.com", password: "judy123")

checkup = Service.create!(name: "full checkup", price: 200, duration: 30, business: jimsdentist)
filling = Service.create!(name: "filling", price: 100, duration: 15, business: jimsdentist)
tooth = Service.create!(name: "tooth removal", price: 300, duration: 60, business: jimsdentist)

george = Customer.create!(email: "george@gmail.com", password: "george123", first_name: "george", last_name: "devedlaka", address: "10 Elder Street, London", phone_number: "020 999 9999")
matt = Customer.create!(email: "matt@gmail.com", password: "matt123", first_name: "matt", last_name: "noble", address: "1 Knightsbridge, London", phone_number: "020 555 5555")
alex = Customer.create!(email: "alex@gmail.com", password: "alex123", first_name: "alex", last_name: "benoit", address: "10 Downing Street, London", phone_number: "020 888 8888")

Booking.create!(booking_time: Time.now, price: 200, status: "pending", service: checkup, customer: george)
Booking.create!(booking_time: Time.now, price: 200, status: "approved", service: checkup, customer: matt)
Booking.create!(booking_time: Time.now, price: 300, status: "pending", service: tooth, customer: alex)

