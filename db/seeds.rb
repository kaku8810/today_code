# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'おたけ', email: 'example@example.com', password: 'password', confirmed_at: Time.now)

User.create!(username: 'しゅんぺい', email: 'example+1@example.com', password: 'password', confirmed_at: Time.now)

User.create!(username: 'はまた', email: 'example+2@example.com', password: 'password', confirmed_at: Time.now)

User.create!(username: 'たけし', email: 'example+3@example.com', password: 'password', confirmed_at: Time.now)

User.create!(username: 'クロちゃん', email: 'example+4@example.com', password: 'password', confirmed_at: Time.now)

users = User.order(:created_at).take(5)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.tweets.create!(content: content) }
end