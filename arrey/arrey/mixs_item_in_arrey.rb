# arrey_1 = [1, 2, 3, 4, 5]
# puts arrey_1.to_s

# arrey_1.reverse()
# puts arrey_1.to_s

#=================================================================================
# cars = %w[Toyota BMW Ford Honda Mercedes-Benz Chevrolet Nissan Audi Volkswagen Hyundai]

# puts "We have all #{cars.size} cars. How you wonted"

# namber = gets.chomp.to_i
# choice = namber + 1

# if cars[choice]
#   puts "Your car: #{cars[choice]}"
# else
#   puts "There is not such car"
# end
#=================================================================================


# chuvachi = %w[криниця ножниці папір]
# puts "Choose:\n 0-криниця\n 1-ножниці\n 2-папір "

# choose = gets.chomp.to_i
# puts "Your choice: #{choose}, #{chuvachi[choose]}"

# mixs = chuvachi.sample

# if (choose == 0 && mixs == "ножниці") || (choose == 1 && mixs == "папір") || (choose == 2 && mixs == "криниця")
#   puts "PC choice: #{mixs}"
#   puts "You win!)))"
# elsif choose == mixs
#   puts "PC choice: #{mixs}"
#   abort "It's a draw"
# else
#   puts "PC choice: #{mixs}"
#   puts "You lost((("
# end







# fruits = ["banana", "apple", "orange"]
# puts "Початковий масив: #{fruits}"

# # Додамо новий елемент до початку масиву
# fruits.unshift("grape")
# puts "Масив після додавання 'grape': #{fruits}"

# # Додамо кілька елементів до початку масиву
# fruits.unshift("cherry", "kiwi")
# puts "Масив після додавання 'cherry' та 'kiwi': #{fruits}"

numbers = (1..10).to_a
puts numbers.to_s

revers_number = []

for namber in numbers do
    revers_number.unshift(namber)
end

puts revers_number.to_s
