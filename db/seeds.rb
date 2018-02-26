lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum suscipit neque eteleifend. Quisque dignissim ornare tortor vitae ullamcorper. Pellentesque id molestie enim.Ut tempus turpis at quam tempus blandit. In ut ultricies mi, eu pellentesque nibh."
device_categories = ["drone", "camera", "scooter", "surfboard"]

photos = { camera: ["https://i.imgur.com/V8GYl2a.jpg", "https://i.imgur.com/EkY4EFT.jpg", "https://i.imgur.com/K0h2i8C.jpg"],
           drone: ["https://i.imgur.com/FRHRHNc.jpg", "https://i.imgur.com/VwL1e5i.jpg", "https://i.imgur.com/sjH32ko.jpg"],
           scooter: ["https://i.imgur.com/rf53Fuf.jpg", "https://i.imgur.com/VDIzsZm.jpg", "https://i.imgur.com/jmY4wgg.jpg"],
           surfboard: ["https://i.imgur.com/WpS5E1Q.jpg", "https://i.imgur.com/ZUN3DfL.jpg"] }

10.times do
  User.create(email: Faker::Internet.email,
              password: Faker::Internet.password(6),
              photo_url: "http://data1.ibtimes.co.in/cache-img-0-450/en/full/639393/1489841887_keanu-reeves.jpg",
              description: lorem)
end

30.times do
  category = device_categories.sample
  Device.create(user_id: rand(10),
                name: Faker::Fallout.character,
                category: category,
                photo_url: photos[category.to_sym].sample,
                description: lorem,
                price: Faker::Number.decimal(2),
                availability: [true, false].sample,
                address: ["Jl. Batu Mejan No.8, Canggu, Kuta Utara, Kabupaten Badung, Bali 80361","Jalan Pura Batu Mejan, Canggu, Kuta Utara, Canggu, Kuta Utara, Kabupaten Badung, Bali 80361","Jalan Pantai Batu Mejan, No. 282 Echo Beach, Canggu, Kuta Utara, Kabupaten Badung, Bali 80361","Jl. Pantai Batu Bolong, Kuta Utara, Canggu, Kuta Utara, Kabupaten Badung, Bali","Jl. Pantai Batu Bolong, Canggu, Kuta Utara, Kabupaten Badung, Bali 80361","Jalan Batu Mejan, Gang Echo, Desa Canggu, Kuta Utara, Canggu, Kuta Utara, Kabupaten Badung, Bali 80361"].sample)
end
