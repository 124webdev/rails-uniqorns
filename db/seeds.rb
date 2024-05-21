
Uniqorn.delete_all
puts "Deleted all existing uniqorn records."

Uniqorn.create([
  {
    name: "Twilight Sparkle",
    age: 5,
    can_fly: true,
    color: "Lavender",
    speed: 90,
    price_per_day: 350,
    user_id: 1
  },
  {
    name: "Rainbow Dash",
    age: 6,
    can_fly: true,
    color: "Sky Blue",
    speed: 120,
    price_per_day: 200,
    user_id: 1
  },
])
