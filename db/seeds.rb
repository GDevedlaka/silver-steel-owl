Business.destroy_all
Service.destroy_all
Booking.destroy_all

davesbarber = Business.create!(url: "daves-barber", address: "22 Elder Street, London", name: "Dave's Barber", phone_number: "020 8343 2343", email: "dave@gmail.com", password: "dave123", description: "Most professional barber in Paddington")
jimsdentist = Business.create!(url: "jims-dentist", address: "20 Folgate Street, London", name: "Jim's Dentist", phone_number: "020 2343 6763", email: "jim@gmail.com", password: "jim123", description: "At our Practice in Shoreditch, London, we provide both Private and NHS care for adults and children at Dentessentials.:

This website gives more information about Dentessentials and the services we provide. If the answer to your question is not included here, please contact us for further information.

We offer a full range of routine and cosmetic dentistry. Treatments include silver amalgam or composite (white) fillings, root fillings, crowns, bridges and dentures. All routine examinations include radiographs, oral hygeine prevention advice and written treatment plan with costing.")

katesnails = Business.create!(url: "kates-nails", address: "10 Baker Street, London", name: "Kate's Nails", phone_number: "020 893 4479", email: "kate@gmail.com", password: "kate123", description: "Most professional nails specialist in Baker Street")
