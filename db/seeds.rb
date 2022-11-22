# cleaning the DB
puts "cleaning the DB…"
puts "delete all Users"
User.destroy_all
puts "delete all Experiences"
Experience.destroy_all
puts "delete all Trips"
Trip.destroy_all
puts "delete all Tags"
Tag.destroy_all
# after this step, preferences, trip_experiences, and experience_tags are destroyed!

# seed users
user1 = User.create!(name: "Suraj", email: "suraj@local.com", password: "123456")
user2 = User.create!(name: "Helene", email: "helene@local.com", password: "123456")
user3 = User.create!(name: "Alex", email: "alex@local.com", password: "123456")
user4 = User.create!(name: "Nea", email: "nea@local.com", password: "123456")

# seed experiences
e1 = Experience.create!(name: "Devil's Trail",
                        image_url: "https://www.muchbetteradventures.com/magazine/content/images/2021/03/GettyImages-177528566--1-.jpg",
                        location: "Catskills, NY, USA",
                        description: "25 mile hike in the Catskill mountains! Tough.",
                        local_id: user1.id)

e2 = Experience.create!(name: "Empire State Building",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b0/Empire_State_Building_%28HDR%29.jpg",
                        location: "New York, NY, USA",
                        description: "A landmark in midtown New York—great views!",
                        local_id: user3.id)

e3 = Experience.create!(name: "Les Tables Des Gourmets",
                        image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0a/f9/24/e1/tables-en-sous-sol.jpg",
                        location: "Paris, France",
                        description: "A beautiful restaurant in a chapel! Old, stunning architecture. Simple French food.",
                        local_id: user2.id)

e4 = Experience.create!(name: "Views & Hikes on Bowen Island",
                        image_url: "https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/9c/90.jpg",
                        location: "Bowen Island, Vancouver, Canada",
                        description: "A Pacific island close to the Rocky Mountains!",
                        local_id: user4.id)

# seed trips
t1 = Trip.create!(city: "Paris, France", start_date: Date.today, end_date: Date.new(2022, 12, 4), user_id: user1.id)
t2 = Trip.create!(city: "Catskills, NY", start_date: Date.new(2022, 12, 1), end_date: Date.new(2022, 12, 8), user_id: user3.id)

# seed tags
tag1 = Tag.create!(name: "Nature")
tag2 = Tag.create!(name: "Dining")
tag3 = Tag.create!(name: "Hiking")
tag4 = Tag.create!(name: "Scenery")
tag5 = Tag.create!(name: "Solitude")
tag6 = Tag.create!(name: "Dancing")
