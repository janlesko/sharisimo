lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum suscipit neque eteleifend. Quisque dignissim ornare tortor vitae ullamcorper. Pellentesque id molestie enim.Ut tempus turpis at quam tempus blandit. In ut ultricies mi, eu pellentesque nibh."
device_names = ["drone", "camera", "scooter", "surfboard"]

10.times do
  User.create(email: Faker::Internet.email,
              password: Faker::Internet.password(6),
              photo_url: "http://data1.ibtimes.co.in/cache-img-0-450/en/full/639393/1489841887_keanu-reeves.jpg",
              description: lorem)
end

30.times do
  Device.create(user_id: rand(10),
                name: Faker::Fallout.character,
                category: device_names.sample,
                photo_url: "https://dronelife.com/wp-content/uploads/2018/01/mavicAir-e1516727107180.jpg",
                description: lorem,
                price: Faker::Number.decimal(2),
                availability: [true, false].sample)
end
