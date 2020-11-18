# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

ryan = User.create!(
  email: "ryanrickerts@gmail.com",
  name_first: "Ryan",
  name_last: "Rickerts",
  phone: "(360) 927-2340"
)

lood = User.create!(
  email: "lood@entabenisystems.com",
  name_first: "Lood",
  name_last: "Adriaanse",
  phone: "3175083348"
)

Faker::Config.locale = 'en-US'
5.times do
    user = User.create(name_last: Faker::Name.last_name, name_first: Faker::Name.first_name, phone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email)
end