puts "hello it's your arrey"
cart = []

cart << 'apple'

cart.push("orange", "cherry", "tomato")
puts cart[3]

cart.delete_at(0,1)
puts cart.to_s
