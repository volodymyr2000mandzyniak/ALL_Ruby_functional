require_relative 'move'

puts 'Фильмы какого режиссера вы хотите посмотреть?'
director_name = gets.chomp

films = []

while films.size < 3
  puts 'Какой-нибудь его хороший фильм?'
  film_name = gets.chomp


  move = Move.new(film_name, director_name)


  films << move
end

move = films.sample
puts "И сегодня вечером рекомендую посмотреть: #{move.title}"
puts "Режиссера: #{move.director_name}"
