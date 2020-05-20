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
peking = { name: 'Peking', address: 'Bellingham', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: 'London', category: 'italian' }
blue_sea = { name: 'Blue Sea', address: 'Seattle', category: 'japanese' }
le_coq = { name: 'Le Coq', address: 'France', category: 'french' }
le_chouffe = { name: 'Le Chouffe', address: 'Belgium', category: 'belgian' }

[ peking, pizza_east, blue_sea, le_coq, le_chouffe ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
