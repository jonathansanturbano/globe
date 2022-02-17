# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Unplanting seeds..."
Country.destroy_all if Rails.env == "development"
puts "Creating seeds 🌱"

russia = Country.create!(name: "Russia", continent: "Eurasia", population: 140_000_000)
puts "#{russia.name} was seeded 🌱"

moscow = City.create!(name: "Moscow", image_url: "https://images.unsplash.com/photo-1520106212299-d99c443e4568?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", country: russia)
puts "#{moscow.name} from #{moscow.country.name} was seeded 🌱"

saint_petersburg = City.create!(name: "Saint-Petersburg", image_url: "https://images.unsplash.com/photo-1615529489302-e5e8d9f72ce8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80", country: russia)
puts "#{saint_petersburg.name} from #{saint_petersburg.country.name} was seeded 🌱"

vietnam = Country.create!(name: "Vietnam", continent: "Asia", population: 90_000_000)
puts "#{vietnam.name} was seeded 🌱"

brazil = Country.create!(name: "Brazil", continent: "Latin America", population: 212_000_000)
puts "#{brazil.name} was seeded 🌱"

puts "Seeding done"
