15.times do
  User.create!(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end

tester = User.create!(
  name:     'Tester Guy',
  email:    'Test@example.com',
  password: '12345678'
)

users = User.all

50.times do
  Item.create!(
    name: Faker::Company.bs,
    user: users.sample,
    created_at: Faker::Time.backward(6)
  )
end

puts "#{User.count} users created"
puts "#{Item.count} items created"
