user_name = []
add_name = nil

while add_name != " " do
    add_name = gets.chomp
    user_name << add_name
end

for item in user_name do
    puts "З нами: " + item
    sleep 0.5
   if item == "alise"
    puts "How is the elis"
    sleep 1
    break
   end
end

puts "Може вона не курить "
puts "Може вона не п'є "
