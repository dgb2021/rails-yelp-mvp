# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0142323939394", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "079392393939", category: "italian" }
nandos =  { name: "Nandos", address: "Clapham Junction, London SW18 6PQ", phone_number: "666953949596", category: "belgian" }
dip_and_flip =  { name: "Dip And Flip", address: "100 Wandsworth Street, London W3 4TT", phone_number: "88454857348", category: "french" }
yakouza =  { name: "Yakouza", address: "100 Broadgate, London EC2 7PN", phone_number: "01810568495", category: "japenese" }

