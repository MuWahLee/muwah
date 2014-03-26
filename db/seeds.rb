User.destroy_all
Product.destroy_all

temp_password = "123"

users = User.create([
  {
    email: "chas@munat.com",
    password: temp_password,
    password_confirmation: temp_password
  },
  {
    email: "betty@example.com",
    password: temp_password,
    password_confirmation: temp_password
  },
  {
    email: "tim@example.com",
    password: temp_password,
    password_confirmation: temp_password
  }
])


products = Product.create([
  {
    name: "T-shirt",
    weight: 50,
    calories: 0
  },
  {
    name: "First aid kit",
    weight: 200,
    calories: 0
  },
  {
    name: "Energy bar",
    weight: 10,
    calories: 200
  }
])

users[0].products << products[0]
users[0].products << products[2]
