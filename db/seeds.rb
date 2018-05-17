# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


puts 'Generating 30 fake users...'
30.times do |n|
  user = User.new(
    firstname: Faker::Name,
    lastname: Faker::Name,
    phone_number: Faker::PhoneNumber,
    email:     "#{n}#{Faker::Internet.email}",
    password: 'djifdjnfjdf'
  )
  user.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  user.save!
end

  user = User.new(
    firstname: "TestFirst",
    lastname: "TestLast",
    phone_number: Faker::PhoneNumber,
    email:     "test@test.com",
    password: 'test123'
  )
  user.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  user.save!

puts 'Generating 20 fake places...'
10.times do
  place = Place.new(
    user: User.first,
    address:     '16 rue esprit des lois, bordeaux',
    price: 500,
    name:       Faker::Address.city,
    description: Faker::Lorem.paragraph
  )
  place.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  place.save!
end

puts "Generating categories"
category = Category.new(name: "Birthday")
category.save!
category1 = Category.new(name: "Corporate")
category1.save!
category2 = Category.new(name: "Funeral")
category2.save!
category3 = Category.new(name: "Wedding")
category3.save!
category4 = Category.new(name: "Seminary")
category4.save!
category5 = Category.new(name: "Other")
category5.save!


10.times do
  place = Place.new(
    user: User.first,
    address:     '107 cours balguerie stuttenberg, bordeaux',
    price: 500,
    name:       Faker::Address.city,
    description:Faker::Lorem.paragraph
  )
  place.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  place.save!
end

puts 'Finished!'
