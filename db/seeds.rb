# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, bio: Faker::Lorem.paragraph_by_chars(140, false), email: Faker::Internet.email, age: rand(18..80), city: Faker::Address.city)
end

10.times do
  gossip = Gossip.create!(title: Faker::Lorem.characters(number: 4), content: Faker::Movie.quote, user_id: rand(User.all.first.id..User.all.last.id))
end