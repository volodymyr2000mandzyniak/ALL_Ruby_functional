# # метод який повертає площу круга
# def circle_square(radius)
#   return 3.14159 * radius * radius
# end

# puts "Ведіть довжину радіусм круга: "
# radius = gets.chomp.to_f

# puts "Площа вашого круга = " + circle_square(radius).to_s
#======================================================================
# мотоди які повертаютьмасив на задану довжину
# @kovbasa = Array(1..11)
# puts "Ось яку ковбасу ми маєм"
# puts @kovbasa.to_s

# def your_kovbasa(element)
#   return @kovbasa.take(element)
# end

# puts "Скільки перших елементів вам дати:"
# element = gets.chomp.to_i
# puts "Ваша ковбаса" + your_kovbasa(element).to_s

#-----------------------------------------------
# @kovbasa = Array(1..11)
# puts "Ось яку ковбасу ми маєм"
# puts @kovbasa.to_s

# def your_kovbasa(element)
#   return Array(1..element)
# end

# puts "Скільки перших елементів вам дати:"
# element = gets.chomp.to_i
# puts "Ваша ковбаса" + your_kovbasa(element).to_s
#============================================================================
# метод який повертає кількість * яку задав користувач

# def count_stars(number)
#     count_star = ''

#     while count_star.length < number do
#       count_star += '*'
#     end
#     puts count_star
# end

# puts "Скільки зіроквам потрібно * "
# stars = gets.to_i

# puts "Ваші зірки:"
# count_stars(stars)
#============================================================================
# метод вгадай число

def check_number(guess, number)
  if guess == number
    puts 'Ура, ви виграли!'
    exit
  end

  if guess > number
    puts 'потрібно менше'
  else
    puts 'потрібно більше'
  end

  if (guess - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end

number = rand(16)

puts 'Загадано число від 0 до 15, відгадай яку?'
guess = gets.to_i

check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

puts 'Цьогоразу вам не повезло. Було загадагл число ' + number.to_s
