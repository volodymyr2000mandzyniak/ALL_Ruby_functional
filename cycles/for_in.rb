# eggs = %w[0 0 0 0 0 1 2 5 4 0 0 0 2 85 2 0 0 5 8]
# #переводим все до числа
# add_int = eggs.map(&:to_i)
# good_eggs = []
# brocken_eggs = 0

# for item in add_int do
#    if (item != 0)
#     brocken_eggs += 1

#    else
#     good_eggs << item

#    end
# end

# puts eggs.to_s
# puts good_eggs.to_s
# puts brocken_eggs.to_s

#============================================================
# Використовуємо метод for для додавання всіх чисел в масиві
# puts "How size you wont"
# input = gets.chomp.to_i
# array = (1..input).to_a

# puts array.to_s
# puts "Sum of numbers"

# count = 0

# for i in array do
#     count += i.to_i
# end
# puts count
#============================================================
# numbers = [1, 2, 3, 4, 5]
# # Використовуємо метод each для додавання всіх чисел в масиві
# sum = 0
# numbers.each { |number| sum += number }

# puts sum
#============================================================
numbers_array = []

puts "Введіть довжину масиву:"
array_length = gets.chomp.to_i

i = 0
while i < array_length
  numbers_array << rand(101)
  i += 1
end

puts "Згенерований масив: #{numbers_array}"

max_value = numbers_array.max

puts "Максимальне значення в масиві: #{max_value}"
