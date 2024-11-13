# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seeding restaurants and their associated reviews

# Create 5 restaurants with valid categories
puts "Cleaning database..."
Restaurant.destroy_all

restaurants = Restaurant.create([
  { name: "Sushi World", address: "123 Tokyo Street", phone_number: "123-456-7890", category: "japanese" },
  { name: "Bella Italia", address: "456 Rome Avenue", phone_number: "987-654-3210", category: "italian" },
  { name: "Le Gourmet", address: "789 Paris Boulevard", phone_number: "555-123-4567", category: "french" },
  { name: "Chez Belgique", address: "321 Brussels Road", phone_number: "444-987-6543", category: "belgian" },
  { name: "Dragon Palace", address: "654 Beijing Street", phone_number: "222-333-4444", category: "chinese" }
])

# Create reviews for each restaurant
restaurants.each do |restaurant|
  restaurant.reviews.create([
    { content: "Amazing food, would definitely come back!", rating: 5 },
    { content: "Not bad, but the service was slow.", rating: 3 },
    { content: "I didn't like the ambiance.", rating: 2 }
  ])
end

puts "Seeded #{restaurants.count} restaurants and their reviews."
