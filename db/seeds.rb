User.create! name: "Trung", email: "admin@admin.com", password: 123123124,
  role: 0

20.times do |n|
  User.create! name: Faker::Name.name, email: Faker::Internet.email,
    password: 123123123
end

20.times do |n|
  Post.create! title: Faker::Lorem.word, content: Faker::Lorem.paragraphs,
    user_id: rand(1..20)
end

20.times do |n|
  Comment.create! content: Faker::Lorem.sentences, user_id: rand(1..20),
    post_id: rand(1..20)
end
