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
  user.save!
end

puts 'Creating 30 fake places...'
10.times do
  place = Place.new(
    user_id: 1,
    address:     Faker::Address.street_address,
    photo:      'https://source.unsplash.com/random',
    name:       Faker::Address.city,
    description: Faker::Lorem.paragraph
  )
  place.save!
end

5.times do
  place = Place.new(
    user_id: 1,
    address:     'bordeaux',
    photo:      'https://source.unsplash.com/random',
    name:       Faker::Address.city,
    description:Faker::Lorem.paragraph
  )
  place.save!
end

puts 'Finished!'
