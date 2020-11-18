# require 'factory_bot'
# not working
FactoryBot.define do
    factory :user do
      id {1}
      name_last { Faker::Name.last_name } 
      name_first {  Faker::Name.first_name }
      phone { Faker::PhoneNumber.cell_phone }
      email { Faker::Internet.email }
    end
  end