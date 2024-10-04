# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

15.times do |i|
  Tweet.create(
    user_name:  Faker::Twitter.screen_name,
    description: Faker::Lorem.sentence(word_count: 25),
    profile_image_url: Faker::Avatar.image(slug: "user-#{i}", size: "50x50", format: "png", set: "set1")
  )
end

