# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 30 fake users...'
30.times do
  user = User.new(
    email:     Faker::Internet.email,
    password: 'djifdjnfjdf'
  )
  user.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  user.save!
end

  user = User.new(
    email:     "test@test.com",
    password: 'test123'
  )
  user.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  user.save!

puts 'Creating 20 fake places...'
10.times do
  place = Place.new(
    user: User.first,
    address:     'paris',
    name:       Faker::Address.city,
    description: Faker::Lorem.paragraph
  )
  place.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  place.save!
end

10.times do
  place = Place.new(
    user: User.first,
    address:     'bordeaux',
    name:       Faker::Address.city,
    description:Faker::Lorem.paragraph
  )
  place.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  place.save!
end

puts 'Finished!'
