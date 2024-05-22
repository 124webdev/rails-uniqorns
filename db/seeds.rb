Uniqorn.destroy_all
puts "Deleted all existing uniqorn records."
User.destroy_all
puts "Deleted all existing users."

users = User.create!([
  {
    email: "max@max.com",
    password: "123456",
  },
  {
    email: "moritz@moritz.com",
    password: "1234567",
  }
])

Uniqorn.create!([
  {
    name: "Twilight Sparkle",
    age: 5,
    can_fly: true,
    color: "Lavender",
    speed: 90,
    price_per_day: 350,
    user_id: users.sample.id
  },
  {
    name: "Rainbow Dash",
    age: 6,
    can_fly: true,
    color: "Sky Blue",
    speed: 120,
    price_per_day: 200,
    user_id: users.sample.id
  },
  {
    name: "Mandinga Diva",
    age: 98,
    can_fly: true,
    color: "Panther Black",
    speed: 1000,
    price_per_day: 500,
    user_id: users.sample.id
  },
  {
    name: "Starlight Glimmer",
    age: 340,
    can_fly: false,
    color: "Light Purple",
    speed: 85,
    price_per_day: 140,
    user_id: users.sample.id
  },
  {
    name: "Sunset Shimmer",
    age: 7,
    can_fly: true,
    color: "Amber",
    speed: 295,
    price_per_day: 260,
    user_id: users.sample.id
  },
  {
    name: "Libro Heartstrings",
    age: 399,
    can_fly: false,
    color: "Mint Green",
    speed: 100,
    price_per_day: 99,
    user_id: users.sample.id
  },
])
