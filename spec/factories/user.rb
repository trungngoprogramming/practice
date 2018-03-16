FactoryGirl.define do
  factory :user do
    name {Faker::Name.name}
    email {Faker::Internet.email}
    password {"123123123"}
    accept_age {1}
  end
end
