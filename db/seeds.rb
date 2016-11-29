# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Business.destroy_all
Service.destroy_all
Booking.destroy_all

davesbarber = Business.create!(address: "22 Elder Street, London", name: "Dave's Barber", phone_number: "020 8343 2343", email: "dave@gmail.com", password: "dave123", description: "Most professional barber in Paddington")
jimsdentist = Business.create!(address: "20 Folgate Street, London", name: "Jim's Dentist", phone_number: "020 2343 6763", email: "jim@gmail.com", password: "jim123", description: "At our Practice in Shoreditch, London, we provide both Private and NHS care for adults and children at Dentessentials.

This website gives more information about Dentessentials and the services we provide. If the answer to your question is not included here, please contact us for further information.

We offer a full range of routine and cosmetic dentistry. Treatments include silver amalgam or composite (white) fillings, root fillings, crowns, bridges and dentures. All routine examinations include radiographs, oral hygeine prevention advice and written treatment plan with costing.")
judysnails = Business.create!(address: "10 Baker Street, London", name: "Judy's Nails", phone_number: "020 893 4479", email: "judy@gmail.com", password: "judy123", description: "Most professional nails specialist in Baker Street")

checkup = Service.create!(name: "full checkup", price: 200, duration: 30, business: jimsdentist)
filling = Service.create!(name: "filling", price: 100, duration: 15, business: jimsdentist)
tooth = Service.create!(name: "tooth removal", price: 300, duration: 60, business: jimsdentist)
haircut = Service.create!(name: "Haircut", price: 70, duration: 60, business: davesbarber)
consulation = Service.create!(name: "consulation", price: 70, duration: 180, business: jimsdentist)

Booking.create!(email: "alex@me.com", booking_time: Time.now + 300, price: 200, status: "pending", service: checkup, business: jimsdentist)
Booking.create!(email: "alex@me.com", booking_time: Time.now + 400, price: 200, status: "approved", service: checkup, business: jimsdentist)
Booking.create!(email: "matt@me.com", booking_time: Time.now, price: 300, status: "pending", service: tooth, business: jimsdentist)
Booking.create!(email: "george@me.com", booking_time: Time.now + 1000, price: 30, status: "completed", service: haircut, business: davesbarber)
Booking.create!(email: "george@me.com", booking_time: Time.now + 2000, price: 30, status: "completed", service: consulation, business: jimsdentist)
