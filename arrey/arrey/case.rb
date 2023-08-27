puts "Ми маємо таких героїв, кого з ворогів ви хочите дізнатись  \n Batman, Rick, Superman, Tor, Naruto"


hero = STDIN.gets.chomp.downcase

case hero
  when 'batman'
    puts 'Joker'
  when 'rick'
    puts 'Bad Morty'
  when 'superman'
    puts 'Hulk'
  when 'tor'
    puts 'Tanos'
  when 'naruto'
    puts 'Madara'
  else
    puts "Ми незнайшли ворога"
end

