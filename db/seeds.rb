# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all

user1 = User.create(username: "JoeyBruiser", email: "thing@place.com")
user2 = User.create(username: "SarahCrusher", email: "thing@place.com")
user3 = User.create(username: "JakeiDunno", email: "thing@place.com")
user4 = User.create(username: "BillyBadApple", email: "thing@place.com")
user5 = User.create(username: "PlaneJane", email: "thing@place.com")

descriptions = ["having fun on vacation", "always a thing", "never a dull one", "lost in the supermaket", "living the best thing", "always doin it", "oh yea, big time", "can't find my keys"]

image_urls = ["https://images.pexels.com/photos/2832039/pexels-photo-2832039.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
"https://images.pexels.com/photos/1183021/pexels-photo-1183021.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
"https://images.pexels.com/photos/4220967/pexels-photo-4220967.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
"https://images.pexels.com/photos/41162/moon-landing-apollo-11-nasa-buzz-aldrin-41162.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"]

User.all.each do |user|
    5.times do Post.create(image_url: image_urls.sample, description: descriptions.sample, location: Faker::Movies::HitchhikersGuideToTheGalaxy.location, user: user)
    end
end

# 25.times do {
#     Post.create(image_url: image_urls.sample, description: descriptions.sample, location: Faker::Movies::HitchhikersGuideToTheGalaxy.location)
# }