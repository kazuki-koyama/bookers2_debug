# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  User.create!(
    email: "user#{n + 1}@example.com",
    encrypted_password: "testtest",
    name: "testuser#{n + 1}",
    introduction: "testuser#{n + 1}です。よろしくおねがいします",
    postcode: "",
    prefecture_code: "",
    address_city: "",
    address_street: "",
    address_building: ""
  )
end