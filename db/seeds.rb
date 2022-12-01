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
e1 = Experience.create!(name: "The Cloisters",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/0/07/The_Cloisters_-_The_MET_Cloisters_-_Joy_of_Museums_-_2.jpg",
                        location: "New York, NY",
                        description: "A museum specializing in European medieval art and architecture, with a focus on the Romanesque and Gothic periods.",
                        address: "99 Margaret Corbin Dr, New York, NY 10040",
                        local_id: user1.id)
e1.tags = [tag1, tag3]
puts "experience: #{e1.name}, local: #{e1.local.name} "

# e2 = Experience.create!(name: "Empire State Building",
#                         image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b0/Empire_State_Building_%28HDR%29.jpg",
#                         location: "New York, NY",
#                         description: "A landmark in midtown New York—great views!",
#                         address: "20 W 34th St., New York, NY 10001",
#                         local_id: user1.id)
# e2.tags = [tag4]
# puts "experience: #{e2.name}, local: #{e2.local.name} "

e3 = Experience.create!(name: "The Metropolitan Museum of Art",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg/1200px-Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg",
                        location: "New York, NY",
                        description: "A heritage museum of classic art spanning many cultures and ages of humanity.",
                        address: "1000 5th Ave, New York, NY 10028",
                        local_id: user1.id)
e3.tags = [tag2]
puts "experience: #{e3.name}, local: #{e3.local.name} "

e4 = Experience.create!(name: "John's of Bleecker Street",
                        image_url: "https://media.timeout.com/images/100446663/image.jpg",
                        location: "New York, NY",
                        description: "An amazing slice in the West Village.",
                        address: "278 Bleecker St, New York, NY 10014",
                        local_id: user1.id)
e4.tags = [tag1, tag4]
puts "experience: #{e4.name}, local: #{e4.local.name} "

e5 = Experience.create!(name: "Washington Square Park",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/9/9c/Washington_Square_Arch-Isabella.jpg",
                        location: "New York, NY, USA",
                        description: "Just around the corner when you leave the Baden Powell hicking trail, you are always welcome there. You can sit and have a coffe and home made goodies, or find some local products to taste.",
                        address: "Washington Square, New York, NY 10012",
                        local_id: user1.id)
e5.tags = [tag2, tag3]
puts "experience: #{e5.name}, local: #{e5.local.name} "

e6 = Experience.create!(name: "House of Yes",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/6/64/A_performance_at_the_House_of_Yes_in_Bushwick%2C_Brooklyn.jpg",
                        location: "Brooklyn, NY, USA",
                        description: "A must to do, come and ski at night on Grouse Mountain and admire the view over the city from the top of the slopes! It's open till 10pm.",
                        address: "2 Wyckoff Ave, Brooklyn, NY 11237",
                        local_id: user1.id)
e6.tags = [tag1, tag4, tag5]
puts "experience: #{e6.name}, local: #{e6.local.name} "


# seed trips
t1 = Trip.create!(city: "New York, NY", start_date: Date.today, end_date: Date.new(2022, 12, 4), user_id: user1.id)
t2 = Trip.create!(city: "New York, NY", start_date: Date.new(2022, 12, 1), end_date: Date.new(2022, 12, 8), user_id: user3.id)
puts "trip city: #{t1.city}, traveler: #{t1.user_id}"
puts "trip city: #{t2.city}, traveler: #{t2.user_id}"
