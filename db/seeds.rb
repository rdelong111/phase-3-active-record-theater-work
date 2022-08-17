puts "Creating roles..."
lead = Role.create(character_name: "Lead")
support = Role.create(character_name: "Support")

puts "Creating auditions..."
Audition.create(actor: "Ryan", location: "Florida", phone: 1111111111, hired: true, role_id: lead.id)
Audition.create(actor: "Kevin", location: "Virginia", phone: 2222222222, hired: false, role_id: lead.id)
Audition.create(actor: "Kevin", location: "Virginia", phone: 2222222222, hired: true, role_id: support.id)
Audition.create(actor: "James", location: "California", phone: 3333333333, hired: false, role_id: lead.id)
Audition.create(actor: "James", location: "California", phone: 3333333333, hired: false, role_id: support.id)

puts "Seeding done."