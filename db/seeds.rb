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
# after this step, preferences, trip_experiences, experience_tags, reviews and messages are destroyed!

# seed tags
tag1 = Tag.create!(name: "Nature")
tag3 = Tag.create!(name: "Hiking")
tag4 = Tag.create!(name: "Scenery")
#
tag5 = Tag.create!(name: "Solitude")
tag6 = Tag.create!(name: "Dancing")
tag12 = Tag.create!(name: "Nightlife")
#
tag7 = Tag.create!(name: "History")
tag9 = Tag.create!(name: "Art")
#
tag10 = Tag.create!(name: "Accessibility")
tag8 = Tag.create!(name: "Indoor")
tag11 = Tag.create!(name: "Outdoor")
#
tag2 = Tag.create!(name: "Dining")




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
e1.tags = [tag1, tag3, tag11]
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
e4.tags = [tag1, tag4, tag11]
puts "experience: #{e4.name}, local: #{e4.local.name} "

e5 = Experience.create!(name: "Local products in the 'End-of-the-line' general store",
                        image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/90/8c/be/the-end-of-the-line-local.jpg",
                        location: "Vancouver, Canada",
                        description: "Just around the corner when you leave the Baden Powell hicking trail, you are always welcome there. You can sit and have a coffe and home made goodies, or find some local products to taste.",
                        local_id: user4.id)
e5.tags = [tag2, tag10]
puts "experience: #{e5.name}, local: #{e5.local.name} "

e6 = Experience.create!(name: "Ski at night and admire the view over the city from the top of the slopes!",
                        image_url: "https://www.vancouverplanner.com/wp-content/uploads/2020/04/grouse-mountain-2.jpeg",
                        location: "Vancouver, Canada",
                        description: "A must to do, come and ski at night on Grouse Mountain and admire the view over the city from the top of the slopes! It's open till 10pm.",
                        local_id: user4.id)
e6.tags = [tag1, tag4, tag5, tag11]
puts "experience: #{e6.name}, local: #{e6.local.name} "

e7 = Experience.create!(name: "Museum of anthropology",
                        image_url: "https://moa.ubc.ca/wp-content/uploads/2018/03/MOA_140611_0078-2.jpg",
                        location: "Vancouver, Canada",
                        description: "the Museum of Anthropology (MOA) is a place of world arts and cultures with a special emphasis on the First Nations peoples and other cultural communities of British Columbia, Canada.
                        MOA is built on the traditional, ancestral and unceded land of the Musqueam people, on the campus of UBC. Fantastic!",
                        local_id: user4.id)
e7.tags = [tag7, tag9, tag8, tag10]
puts "experience: #{e7.name}, local: #{e7.local.name} "

e8 = Experience.create!(name: "Miku japanese restaurant on Canada Place",
                        image_url: "https://images.squarespace-cdn.com/content/v1/6123ba1bd03b8818edc3ba1d/bbd27f26-bc2d-47ae-a022-6f8ab2c6e961/Miku+Vancouver+Interior+-+Night.jpeg",
                        location: "Vancouver, Canada",
                        description: "If you like japanese food, Miku is a good place for you!
                        The food is very good, its location allows you to enjoy the view over Canada Place.
                        Make sure to book that restaurant long in advance.
                        Quite expensive, but very good for a special occasion.",
                        local_id: user4.id)
e8.tags = [tag2, tag10]
puts "experience: #{e8.name}, local: #{e8.local.name} "

e9 = Experience.create!(name: "Take the seabus to save time in transporation and admire the city from the sea",
                        image_url: "https://pbs.twimg.com/media/EelcMs2WsAYG2Ej.jpg",
                        location: "Vancouver, Canada",
                        description: "There is a lot of traffic jams around Vancouver and mostly on its 2 bridges.
                        The seabus is a very good way to get rid of them and offers you a very beautiful view over the city or mountains from the sea. The crossing takes only 15 min!",
                        local_id: user4.id)
e9.tags = [tag10]
puts "experience: #{e9.name}, local: #{e9.local.name} "

e10 = Experience.create!(name: "Discover a whole world under the city at the 14th str/8th av subway station",
                         image_url: "https://img.artlogic.net/w_1010,h_580,c_limit/exhibit-e/54077dc24aa62c276f6eea8c/5228784d5a874f9a33e106ad71adcabe.jpg",
                         location: "New York, NY, USA",
                         description: "The Life Underground sculpture series by Tom Otterness is one of the most delightful sights on the subway and has been entertaining commuters since 2001.
                         Try to spot spot all 130 statues hidden there!",
                         local_id: user1.id)
e10.tags = [tag8, tag9]
puts "experience: #{e10.name}, local: #{e10.local.name} "
reviewUndergroundsculpture1 = Review.new(rating: rand(1..5),
                                         content: "Loved it, we never look around usually.",
                                         experience_id: e10.id)


e11 = Experience.create!(name: "Dance all night at House of Yes ",
                         image_url: "https://img.theculturetrip.com/wp-content/uploads/2019/06/unicornicopia_112517_kr_-7860.jpg",
                         location: "New York, NY, USA",
                         description: "House of Yes offers wild events and shows almost every night for every kind of party-goer.
                         From breathtaking acrobatic shows to late-night glitter-fueled dance parties, this eclectic venue has something for everyone.",
                         local_id: user1.id)
e11.tags = [tag6, tag8, tag12]
puts "experience: #{e11.name}, local: #{e11.local.name} "
reviewHouseofyes1 = Review.new(rating: rand(1..5),
                              content: "Best club I’ve ever been to. Highly recommend buying tickets to performance. As long as you stay, they let you stick around for the dance party the rest of the evening.",
                              experience_id: e11.id)


e12 = Experience.create!(name: "Street art in the city at the Welling Court Mural Project",
                         image_url: "https://altinnov.blog/wp-content/uploads/2019/11/Couverture-Wellingcourt-Mural.jpg",
                         location: "New York, NY, USA",
                         description: "It shows the work from 150 mural artists from around the world and really shows off the creativity of the city. Free!",
                         local_id: user1.id)
e12.tags = [tag9, tag10, tag11]
puts "experience: #{e12.name}, local: #{e12.local.name} "
reviewStreetArt1 = Review.new(rating: rand(1..5),
                              content: "Cool pieces.it’d be great for the area to be cleaner. Also, not sure if it was just me but I didn’t see as much as I thought I was going to see.",
                              experience_id: e12.id)


e13 = Experience.create!(name: "The Louvre, you can't miss it...",
                         image_url: "https://www.cap-voyage.com/wp-content/uploads/2019/12/paris-louvre.jpg",
                         location: "Paris, France",
                         description: "No need for a description here! One trick: The Louvre is a very busy place. To avoid the crowd, book your ticket online for a wednesday or friday evening!",
                         local_id: user3.id)
e13.tags = [tag7, tag9, tag10]
puts "experience: #{e13.name}, local: #{e13.local.name} "
reviewLouvre1 = Review.new(rating: rand(1..5),
                           content: "Amazing collection that can be appreciated by even folks who aren’t art connoisseurs! Plan to spend about 3 hrs and pick a handful of things you want to see ahead of time to help map out your visit.",
                           experience_id: e13.id)

e14 = Experience.create!(name: "Pere Lachaise Cemetery",
                         image_url: "https://www.parisenigmes.com/PICTURE/PERE_LACHAISE/frederic-chopin-tombe.webp",
                         location: "Paris, France",
                         description: "A visit here may sound like a macabre way to spend an afternoon, but a stroll among the tombstones and mausoleums can be fascinating.
                         Pere Lechaise is free to visit but if you want to get more out of the experience, you can take one of the guided tours. A tour lasts 2 to 3 hours and you can see the final resting places of famous people such as Edith Piaf, Jim Morrison and Chopin.",
                         local_id: user2.id)
e14.tags = [tag5, tag10, tag11]
puts "experience: #{e14.name}, local: #{e14.local.name} "
reviewPerelachaise1 = Review.new(rating: rand(1..5),
                           content: "Very big, the guided tour is cool, we learn a lot of anecdotes about people resting there.",
                           experience_id: e14.id)

e15 = Experience.create!(name: "Le Scilicet",
                         image_url: "https://cdn.sortiraparis.com/images/80/88174/490087-bar-le-scilicet-les-photos.jpg",
                         location: "Paris, France",
                         description: "In the heart of Paris, in the hollow of a bridge over the Seine.
                         Great views of Paris, good mood, good DJ, tapas and drinks while dancing!",
                         local_id: user2.id)
e15.tags = [tag2, tag6, tag10]
puts "experience: #{e15.name}, local: #{e15.local.name} "
reviewScilicet1 = Review.new(rating: rand(1..5),
                                 content: "Good place to have a drink, but next time I won't order food: too expensive and don't worth it.",
                                 experience_id: e15.id)

e16 = Experience.create!(name: "Sagrada Familia",
                         image_url: "https://cdn.futura-sciences.com/sources/images/Sagrada-Familia-Barcelone.jpg",
                         location: "Barcelona, Spain",
                         description: "Masterpiece of the famous architect Antoni Gaudí, the project was promoted by the people for the people.
                         Today, more than 140 years after the laying of the cornerstone, construction continues on the Basilica!
                         Prebook your tickets, queues are normally 1 or 2 hours long!",
                         local_id: user3.id)
e16.tags = [tag9, tag10, tag11]
puts "experience: #{e16.name}, local: #{e16.local.name} "
reviewSagradafamilia1 = Review.new(rating: rand(1..5),
                                 content: "Absolutely worth a visit!",
                                 experience_id: e16.id)


e17 = Experience.create!(name: "Visit Picasso Museum",
                         image_url: "http://www.blogmuseupicassobcn.org/wp-content/uploads/2013/07/CRO_A.04_0260.jpg",
                         location: "Barcelona, Spain",
                         description: "Even though Picasso was born in Málaga, he spent many time of his life in Barcelona.
                         With more than 4000 works of the famous artist, you will have a good time if you like art!",
                         local_id: user3.id)
e17.tags = [tag8, tag9, tag10]
puts "experience: #{e17.name}, local: #{e17.local.name} "


# seed trips
t1 = Trip.create!(city: "Paris", start_date: Date.today, end_date: Date.new(2022, 12, 4), user_id: user1.id)
t2 = Trip.create!(city: "New York", start_date: Date.new(2022, 12, 10), end_date: Date.new(2022, 12, 12), user_id: user3.id)
t3 = Trip.create!(city: "Vancouver", start_date: Date.new(2022, 12, 21), end_date: Date.new(2022, 12, 27), user_id: user2.id)
t4 = Trip.create!(city: "Barcelona", start_date: Date.new(2022, 12, 29), end_date: Date.new(2023, 01, 02), user_id: user4.id)
