# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"
Restaurant.destroy_all

puts "Creating restarants..."
burgers_fils = { name: "Burger et fils", address: "9, Rue du Commandant Rivière, 75008 Paris", phone_number: "01 45 61 15 05", category: 'french'}
sushis = { name: "Sushis", address: "23, Rue du Départ, 75014 Paris", phone_number: "01 23 98 56 78", category: 'japanese'}
via_emilia = { name: "Via Emilia", address: "22, Rue La Bruyère, 75009 Paris", phone_number: "01 42 82 18 33", category: "italian"}
big_mamma = { name: "Big Mamma", address: "133, Rue du Faubourg Saint-Antoine, 75011 Paris", phone_number: "01 95 36 78 24", category: "italian"}
josselin = { name: "Josselin", address: "67, Rue du Montparnasse, 75014 Paris", phone_number: "01 49 56 27 96", category: "french"}

[ burgers_fils, sushis, via_emilia, big_mamma, josselin ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished"
