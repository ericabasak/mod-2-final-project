# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy cupcakes"
Cupcake.destroy_all

puts "create cupcakes"
Cupcake.find_or_create_by(name: "Vanilla", description: "Delicious vanilla cake with smooth buttercream icing.", calorie_count: 375, price: 4.50)
Cupcake.find_or_create_by(name: "Chocolate", description: "Scrumptious rich chocolate cake with smooth chocolate icing.", calorie_count: 395, price: 4.75)
Cupcake.find_or_create_by(name: "Red Velvet", description: "Tasty red velvet cake with smooth cream cheese frosting.", calorie_count: 345, price: 4.25)
Cupcake.find_or_create_by(name: "Sprinkles", description: "Delicious vanilla cake with smooth buttercream icing.", calorie_count: 375, price: 4.50)
Cupcake.find_or_create_by(name: "Chocolate Chip", description: "Scrumptious rich chocolate cake with smooth chocolate icing.", calorie_count: 395, price: 4.75)
Cupcake.find_or_create_by(name: "Lemon", description: "Tasty red velvet cake with smooth cream cheese frosting.", calorie_count: 345, price: 4.25)
puts "cupcakes created"


puts "create user"
User.find_or_create_by(name: "Adelyn")
User.find_or_create_by(name: "Shaan")
puts "user created"

puts "create order"
Order.find_or_create_by(date: "Monday November 11, 2019")
Order.find_or_create_by(date: "Tuesday November 12, 2019")
puts "order created"


