# Create main test user
User.create!(name: "Test User", email: "test@testuser.com", password: "test1234", password_confirmation: "test1234", admin: true)

# Bulk generate test users
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@testuser.com"
  password = "test1234"
  User.create!(name: name, email: email, password: password, password_confirmation: password)
end
