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
e20 = Experience.create!(name: "The Cloisters",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/0/07/The_Cloisters_-_The_MET_Cloisters_-_Joy_of_Museums_-_2.jpg",
                        location: "New York, NY",
                        description: "A museum specializing in European medieval art and architecture, with a focus on the Romanesque and Gothic periods.",
                        address: "99 Margaret Corbin Dr, New York, NY 10040",
                        local_id: user1.id)
e20.tags = [tag1, tag3, tag11]
puts "experience: #{e20.name}, local: #{e20.local.name} "


e21 = Experience.create!(name: "The Metropolitan Museum of Art",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg/1200px-Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg",
                        location: "New York, NY",
                        description: "A heritage museum of classic art spanning many cultures and ages of humanity.",
                        address: "1000 5th Ave, New York, NY 10028",
                        local_id: user1.id)
e21.tags = [tag2]
puts "experience: #{e21.name}, local: #{e21.local.name} "


e22 = Experience.create!(name: "John's of Bleecker Street",
                        image_url: "https://media.timeout.com/images/100446663/image.jpg",
                        location: "New York, NY",
                        description: "An amazing slice in the West Village.",
                        address: "278 Bleecker St, New York, NY 10014",
                        local_id: user1.id)
e22.tags = [tag1, tag4]

puts "experience: #{e22.name}, local: #{e22.local.name} "


e23 = Experience.create!(name: "House of Yes",
                        image_url: "https://upload.wikimedia.org/wikipedia/commons/6/64/A_performance_at_the_House_of_Yes_in_Bushwick%2C_Brooklyn.jpg",
                        location: "Brooklyn, NY, USA",
                        description: "A must to do, come and ski at night on Grouse Mountain and admire the view over the city from the top of the slopes! It's open till 10pm.",
                        address: "2 Wyckoff Ave, Brooklyn, NY 11237",
                        local_id: user1.id)
e23.tags = [tag1, tag4, tag5]
puts "experience: #{e23.name}, local: #{e23.local.name} "

e5 = Experience.create!(name: "Local products in the 'End-of-the-line' general store",
                        image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/90/8c/be/the-end-of-the-line-local.jpg",
                        location: "Vancouver, Canada",
                        description: "Just around the corner when you leave the Baden Powell hicking trail, you are always welcome there. You can sit and have a coffe and home made goodies, or find some local products to taste.",
                        address: "4193 Lynn Valley Rd, North Vancouver, BC V7K 2T2, Canada",
                        local_id: user4.id)
e5.tags = [tag2, tag10]

e6 = Experience.create!(name: "Ski at night and admire the view over the city from the top of the slopes!",
                        image_url: "https://www.vancouverplanner.com/wp-content/uploads/2020/04/grouse-mountain-2.jpeg",
                        location: "Vancouver, Canada",
                        description: "A must to do, come and ski at night on Grouse Mountain and admire the view over the city from the top of the slopes! It's open till 10pm.",
                        address: "6400 Nancy Greene Way North Vancouver, BC V7R 4K9",
                        local_id: user4.id)
e6.tags = [tag4, tag5, tag11]
puts "experience: #{e6.name}, local: #{e6.local.name} "

e7 = Experience.create!(name: "Museum of anthropology",
                        image_url: "https://moa.ubc.ca/wp-content/uploads/2018/03/MOA_140611_0078-2.jpg",
                        location: "Vancouver, Canada",
                        description: "Superb place of world arts and cultures with a special emphasis on the First Nations people, on the campus of UBC. Fantastic!",
                        address: "6393 NW Marine Dr, Vancouver, BC V6T 1Z2, Canada",
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
                        address: "200 Granville St #70, Vancouver, BC V6C 1S4, Canada",
                        local_id: user4.id)
e8.tags = [tag2, tag10]
puts "experience: #{e8.name}, local: #{e8.local.name} "

e9 = Experience.create!(name: "Take the seabus to save time in transporation and admire the city from the sea",
                        image_url: "https://pbs.twimg.com/media/EelcMs2WsAYG2Ej.jpg",
                        location: "Vancouver, Canada",
                        description: "There is a lot of traffic jams around Vancouver and mostly on its 2 bridges.
                        The seabus is a very good way to get rid of them and offers you a very beautiful view over the city or mountains from the sea. The crossing takes only 15 min!",
                        address: "123 Carrie Cates Ct, North Vancouver, Canada",
                        local_id: user4.id)
e9.tags = [tag10]
puts "experience: #{e9.name}, local: #{e9.local.name} "

e10 = Experience.create!(name: "Discover a whole world under the city at the 14th str/8th av subway station",
                         image_url: "https://img.artlogic.net/w_1010,h_580,c_limit/exhibit-e/54077dc24aa62c276f6eea8c/5228784d5a874f9a33e106ad71adcabe.jpg",
                         location: "New York, NY, USA",
                         description: "The Life Underground sculpture series by Tom Otterness is one of the most delightful sights on the subway and has been entertaining commuters since 2001.
                         Try to spot spot all 130 statues hidden there!",
                         address: "300 W 14th St, New York, NY 10014",
                         local_id: user1.id)
e10.tags = [tag8, tag9]
puts "experience: #{e10.name}, local: #{e10.local.name} "
reviewUndergroundsculpture1 = Review.create!(rating: rand(1..5),
                                             content: "Loved it, we never look around usually.",
                                             experience_id: e10.id,
                                             user_id: user2.id)
puts " reviewUndergroundsculpture1 created"

reviewHouseofyes1 = Review.create!(rating: rand(1..5),
                                   content: "Best club I’ve ever been to. Highly recommend buying tickets to performance. As long as you stay, they let you stick around for the dance party the rest of the evening.",
                                   experience_id: e23.id,
                                   user_id: user3.id)
puts " reviewHouseofyes1 created"

e12 = Experience.create!(name: "Street art in the city at the Welling Court Mural Project",
                         image_url: "https://altinnov.blog/wp-content/uploads/2019/11/Couverture-Wellingcourt-Mural.jpg",
                         location: "New York, NY, USA",
                         description: "It shows the work from 150 mural artists from around the world and really shows off the creativity of the city. Free!",
                         address: "11-98 Welling Ct, Queens, NY 11102",
                         local_id: user1.id)
e12.tags = [tag9, tag10, tag11]
puts "experience: #{e12.name}, local: #{e12.local.name} "
reviewStreetArt1 = Review.create!(rating: rand(1..5),
                                  content: "Cool pieces.it’d be great for the area to be cleaner. Also, not sure if it was just me but I didn’t see as much as I thought I was going to see.",
                                  experience_id: e12.id,
                                  user_id: user4.id)
puts " reviewStreetArt1 created"

e13 = Experience.create!(name: "The Louvre, you can't miss it...",
                         image_url: "https://www.cap-voyage.com/wp-content/uploads/2019/12/paris-louvre.jpg",
                         location: "Paris, France",
                         description: "No need for a description here! One trick: The Louvre is a very busy place. To avoid the crowd, book your ticket online for a wednesday or friday evening!",
                         address: "99 Rue de Rivoli, 75001 Paris, France",
                         local_id: user2.id)
e13.tags = [tag7, tag9, tag10]
puts "experience: #{e13.name}, local: #{e13.local.name} "
reviewLouvre1 = Review.create!(rating: rand(1..5),
                               content: "Amazing collection that can be appreciated by even folks who aren’t art connoisseurs! Plan to spend about 3 hrs and pick a handful of things you want to see ahead of time to help map out your visit.",
                               experience_id: e13.id,
                               user_id: user1.id)
puts " reviewLouvre1 created"


e14 = Experience.create!(name: "Pere Lachaise Cemetery",
                         image_url: "https://www.parisenigmes.com/PICTURE/PERE_LACHAISE/frederic-chopin-tombe.webp",
                         location: "Paris, France",
                         description: "A visit here may sound like a macabre way to spend an afternoon, but a stroll among the tombstones and mausoleums can be fascinating.
                         Pere Lechaise is free to visit but if you want to get more out of the experience, you can take one of the guided tours. A tour lasts 2 to 3 hours and you can see the final resting places of famous people such as Edith Piaf, Jim Morrison and Chopin.",
                         address: "16 Rue du Repos, 75020 Paris, France",
                         local_id: user2.id)
e14.tags = [tag5, tag10, tag11]
puts "experience: #{e14.name}, local: #{e14.local.name} "
reviewPerelachaise1 = Review.create!(rating: rand(1..5),
                                     content: "Very big, the guided tour is cool, we learn a lot of anecdotes about people resting there.",
                                     experience_id: e14.id,
                                     user_id: user3.id)
puts " reviewPerelachaise1 created"

e15 = Experience.create!(name: "Le Scilicet",
                         image_url: "https://cdn.sortiraparis.com/images/80/88174/490087-bar-le-scilicet-les-photos.jpg",
                         location: "Paris, France",
                         description: "In the heart of Paris, in the hollow of a bridge over the Seine.
                         Great views of Paris, good mood, good DJ, tapas and drinks while dancing!",
                         address: "134 Voie Georges Pompidou, 75001 Paris, France",
                         local_id: user2.id)
e15.tags = [tag2, tag6, tag10]
puts "experience: #{e15.name}, local: #{e15.local.name} "
reviewScilicet1 = Review.create!(rating: rand(1..5),
                                 content: "Good place to have a drink, but next time I won't order food: too expensive and don't worth it.",
                                 experience_id: e15.id,
                                 user_id: user4.id)
puts " reviewScilicet1 created"

e16 = Experience.create!(name: "Sagrada Familia",
                         image_url: "https://cdn.futura-sciences.com/sources/images/Sagrada-Familia-Barcelone.jpg",
                         location: "Barcelona, Spain",
                         description: "Masterpiece of the famous architect Antoni Gaudí.
                         Today, 140 years after the laying of the cornerstone, construction continues on the Basilica!
                         Prebook your tickets, queues are normally 1 or 2 hours long!",
                         address: "C/ de Mallorca, 401, 08013 Barcelona, Spain",
                         local_id: user3.id)
e16.tags = [tag9, tag10, tag11]
puts "experience: #{e16.name}, local: #{e16.local.name} "
reviewSagradafamilia1 = Review.create!(rating: rand(1..5),
                                       content: "Absolutely worth a visit!",
                                       experience_id: e16.id,
                                       user_id: user1.id)
puts " reviewSagradafamilia1 created"


e17 = Experience.create!(name: "Visit Picasso Museum",
                         image_url: "http://www.blogmuseupicassobcn.org/wp-content/uploads/2013/07/CRO_A.04_0260.jpg",
                         location: "Barcelona, Spain",
                         description: "Even though Picasso was born in Málaga, he spent many time of his life in Barcelona.
                         With more than 4000 works of the famous artist, you will have a good time if you like art!",
                         address: "Carrer de Montcada, 15-23, 08003 Barcelona, Spain",
                         local_id: user3.id)
e17.tags = [tag8, tag9, tag10]
puts "experience: #{e17.name}, local: #{e17.local.name} "
reviewPicassoMuseum1 = Review.create!(rating: rand(1..5),
                                      content: "Interesting, learned a lot about hte artist.",
                                      experience_id: e17.id,
                                      user_id: user2.id)
puts " reviewPicassoMuseum1 created"


e18 = Experience.create!(name: "Montserrat natural park",
                         image_url: "https://s27363.pcdn.co/wp-content/uploads/2020/05/Hiking-Montserrat.jpg.optimal.jpg",
                         location: "Barcelona, Spain",
                         description: "You should definitely make a one-day trip to Montserrat Natural Park to see different parts of the Llobregat River and the pre-coastal mountain range, together with incredible nature.",
                         address: "Catalunya, Barcelona, Spain",
                         local_id: user3.id)
e18.tags = [tag1, tag3, tag11]
puts "experience: #{e18.name}, local: #{e18.local.name} "
reviewMonserratPark1 = Review.create!(rating: rand(1..5),
                                      content: "You need to plan a one-day-trip to go there, but it great.",
                                      experience_id: e18.id,
                                      user_id: user4.id)
puts " reviewMonserratPark1 created"


e19 = Experience.create!(name: "Moog NightClub",
                         image_url: "https://www.barcelona-life.com/wp-content/uploads/2018/02/club-moog-barcelona.jpg",
                         location: "Barcelona, Spain",
                         description: "Night club with 2 dance floors at your disposal.Heaven for techno music lovers.",
                         address: "Carrer de l'Arc del Teatre, 3, 08002 Barcelona, Spain",
                         local_id: user3.id)
e19.tags = [tag8, tag6, tag12]
puts "experience: #{e19.name}, local: #{e19.local.name} "
reviewMoog1 = Review.create!(rating: rand(1..5),
                             content: "Good music if you like techno, a bit expensive though and definetly too crowdy.",
                             experience_id: e19.id,
                             user_id: user1.id)
puts " reviewMoog1 created"

# seed trips
t1 = Trip.create!(city: "Paris", start_date: Date.today, end_date: Date.new(2022, 12, 4), user_id: user1.id)
t2 = Trip.create!(city: "New York", start_date: Date.new(2022, 12, 10), end_date: Date.new(2022, 12, 12), user_id: user3.id)
t3 = Trip.create!(city: "Vancouver", start_date: Date.new(2022, 12, 21), end_date: Date.new(2022, 12, 27), user_id: user2.id)
t4 = Trip.create!(city: "Barcelona", start_date: Date.new(2022, 12, 29), end_date: Date.new(2023, 01, 02), user_id: user4.id)
