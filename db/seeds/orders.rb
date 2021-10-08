User.destroy_all
Payment.destroy_all
Type.destroy_all
Order.destroy_all

# User
user = User.create(name: "John Doe")

# Payments methods
stripe = Payment.create(name: "Stripe")
paypal = Payment.create(name: "Paypal")
transbank = Payment.create(name: "Transbank")

# Payments Types
credit_card = transbank.types << Type.create(name: "Credit Card")
webpay = transbank.types << Type.create(name: "WebPay")
one_click = transbank.types << Type.create(name: "One Click")

# Final Order
order = Order.create(user_id: user.id, payment_id: transbank.id, type_id: transbank.types.find_by(name: "WebPay").id, amount: 10000)