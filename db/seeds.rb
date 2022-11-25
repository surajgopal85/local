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

# seed tags
tag1 = Tag.create!(name: "Nature")
tag2 = Tag.create!(name: "Dining")
tag3 = Tag.create!(name: "Hiking")
tag4 = Tag.create!(name: "Scenery")
tag5 = Tag.create!(name: "Solitude")
tag6 = Tag.create!(name: "Dancing")

# seed users
user1 = User.create!(name: "Suraj", email: "suraj@local.com", password: "123456")
user1.tags = [tag4, tag5]
puts "user #{user1.name} created with user_id#{user1.name}"
user2 = User.create!(name: "Helene", email: "helene@local.com", password: "123456")
user2.tags = [tag1, tag2]
puts "user #{user2.name} created with user_id#{user2.name}"
user3 = User.create!(name: "Alex", email: "alex@local.com", password: "123456")
user3.tags = [tag1, tag3, tag4]
puts "user #{user3.name} created with user_id#{user3.name}"
user4 = User.create!(name: "Nea", email: "nea@local.com", password: "123456")
puts "user #{user4.name} created with user_id#{user4.name}"
user4.tags = [tag1, tag4, tag6]


# seed experiences
e1 = Experience.create!(name: "Devil's Trail",
                        image_url: "https://www.muchbetteradventures.com/magazine/content/images/2021/03/GettyImages-177528566--1-.jpg",
                        location: "Catskills, NY, USA",
                        description: "25 mile hike in the Catskill mountains! Tough.",
                        local_id: user1.id)
e1.tags = [tag1, tag3]
puts "experience: #{e1.name}, local: #{e1.local.name} "

e2 = Experience.create!(name: "Empire State Building",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b0/Empire_State_Building_%28HDR%29.jpg",
                        location: "New York, NY, USA",
                        description: "A landmark in midtown New York—great views!",
                        local_id: user3.id)
e2.tags = [tag4]
puts "experience: #{e2.name}, local: #{e2.local.name} "

e3 = Experience.create!(name: "Les Tables Des Gourmets",
                        image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0a/f9/24/e1/tables-en-sous-sol.jpg",
                        location: "Paris, France",
                        description: "A beautiful restaurant in a chapel! Old, stunning architecture. Simple French food.",
                        local_id: user2.id)
e3.tags = [tag2]
puts "experience: #{e3.name}, local: #{e3.local.name} "

e4 = Experience.create!(name: "Views & Hikes on Bowen Island",
                        image_url: "https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/9c/90.jpg",
                        location: "Vancouver, Canada",
                        description: "A Pacific island close to the Rocky Mountains!",
                        local_id: user4.id)
e4.tags = [tag1, tag4]
puts "experience: #{e4.name}, local: #{e4.local.name} "

e5 = Experience.create!(name: "Local products in the 'End-of-the-line' general store",
                        image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/90/8c/be/the-end-of-the-line-local.jpg",
                        location: "Vancouver, Canada",
                        description: "Just around the corner when you leave the Baden Powell hicking trail, you are always welcome there. You can sit and have a coffe and home made goodies, or find some local products to taste.",
                        local_id: user4.id)
e5.tags = [tag2, tag3]
puts "experience: #{e5.name}, local: #{e5.local.name} "

e6 = Experience.create!(name: "Ski at night and admire the view! over the city from the top of the slopes!",
                        image_url: "https://www.vancouverplanner.com/wp-content/uploads/2020/04/grouse-mountain-2.jpeg",
                        location: "Vancouver, Canada",
                        description: "A must to do, come and ski at night on Grouse Mountain and admire the view over the city from the top of the slopes! It's open till 10pm.",
                        local_id: user4.id)
e6.tags = [tag1, tag4, tag5]
puts "experience: #{e6.name}, local: #{e6.local.name} "


# seed trips
t1 = Trip.create!(city: "Paris, France", start_date: Date.today, end_date: Date.new(2022, 12, 4), user_id: user1.id)
t2 = Trip.create!(city: "Catskills, NY", start_date: Date.new(2022, 12, 1), end_date: Date.new(2022, 12, 8), user_id: user3.id)
