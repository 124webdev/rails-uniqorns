Uniqorn.destroy_all
puts "Deleted all existing uniqorn records."
User.destroy_all
puts "Deleted all existing users."

user = User.create!(
  email: "max@max.com",
  password: "123456"
)

Uniqorn.create!([
  {
    name: "Twilight Sparkle",
    age: 5,
    can_fly: true,
    color: "Lavender",
    speed: 90,
    price_per_day: 350,
    user_id: user.id
  },
  {
    name: "Rainbow Dash",
    age: 6,
    can_fly: true,
    color: "Sky Blue",
    speed: 120,
    price_per_day: 200,
    user_id: user.id
  },
])
