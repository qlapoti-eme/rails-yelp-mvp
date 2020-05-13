# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+33 6 83 03 38 93", category: "chinese" }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+33 7 83 03 38 93", category: "italian" }

# [ dishoom, pizza_east ].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end

italian = { name: "Vulcano", address: "Paris, 14ème", category: "italian" }
chinese = { name: "Nems Party", address: "Paris, 13ème", category: "chinese" }
japanese = { name: "Sushi Folie ", address: "Paris, 15ème", category: "japanese" }
french = { name: "A la bonne fourchette", address: "Paris, 19ème", category: "french" }
belgian = { name: "Tintin", address: "Bruxelles", category: "belgian" }

[italian, chinese, japanese, french, belgian].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

# review1 = Review.create!(content: "yummy yummy", rating: 2)
# review2 = Review.create!(content: "awesome", rating: 4)
# review3 = Review.create!(content: "top!!", rating: 5)
# review4 = Review.create!(content: "yoo", rating: 2)
# review5 = Review.create!(content: "nice", rating: 3)


puts "Finished!"