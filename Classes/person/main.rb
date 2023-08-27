# frozen_string_literal: true

require './prsone'

person = Person.new('roman', 'dot', 51)
peple  = Person.new('Ocksana', 'Bohdsnivna', 37)
techer = Person.new('Stanislava', 'Romanivna', 62)

puts 'У нас є три людини: '
puts person.full_name
puts "І йому #{person.age} - #{person.check_old? ? 'Старший' : 'Молодий'}"

puts peple.full_name
puts "І йому #{peple.age} - #{peple.check_old? ? 'Старший' : 'Молодий'}"

puts techer.full_name
puts "І йому #{techer.age} - #{techer.check_old? ? 'Старший' : 'Молодий'}"
