FactoryGirl.define do
  factory :post do
    title {Faker::Lorem.paragraph}
    content {Faker::Lorem.paragraphs}
    user_id {FactoryGirl.create(:user).id}
  end
end
