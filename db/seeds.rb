puts "Seeding Roles..."
r1 = Role.create(character_name: "Leeroy Jenkins")
r2 = Role.create(character_name: "Macbeth")

puts "Seeding Auditions..."
Audition.create(actor: "Henry", location: "Somewhere", phone: 1234567890, hired: false, role: r1)
Audition.create(actor: "Mary", location: "Everywhere", phone: 1111111111, hired: false, role: r2)
Audition.create(actor: "Thomas", location: "Nowhere", phone: 9999999999, hired: false, role: r1)

puts "Done!"