Order.destroy_all
User.destroy_all

user = User.create(name: "John Doe")
Order.create(user_id: user.id, amount: 10000)