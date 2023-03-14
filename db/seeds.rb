# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |i|
  puts "creating items #{i + 1}"
  Item.create(
    name: "item #{i + 1}",
    price: 10 + i,
    rating: "rating #{i + 1}",
    inventory_id: 1
  )
end
