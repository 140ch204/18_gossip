# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
10.times do
  User.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    description: Faker::Hacker.say_something_smart,
    email: Faker::Internet.email,
    age: rand(18..65)
    )
end

City.destroy_all
20.times do
  City.create!(
    name: Faker::Address.city, 
    zip_code: Faker::Address.zip
    )
end

Gosssip.destroy_all
20.times do
  Gosssip.create!(
    title: Faker::Book.title, 
    content: Faker::Hacker.say_something_smart
    )
end