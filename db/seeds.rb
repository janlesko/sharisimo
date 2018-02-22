# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum suscipit neque et eleifend. Quisque dignissim ornare tortor vitae ullamcorper. Pellentesque id molestie enim. Ut tempus turpis at quam tempus blandit. In ut ultricies mi, eu pellentesque nibh. Quisque luctus tortor eu facilisis lacinia."

5.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password(6), description: lorem)
end

20.times do
  Device.create(user_id: rand(5), name: Faker::Fallout.character)
end
