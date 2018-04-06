# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.create!(email:'andre_dean@me.com', password: 'password1')
User.create!(email:'ad@me.com', password: 'password1')

users = User.all

10.times do
  Item.create!(name: Faker::Lorem.word, user: users.sample)
end

puts "Seed Finished"
puts "#{User.count} user(s) created"
puts "#{Item.count} to do items created"
