require './hameleon.rb'


hameleon = Hameleon.new
puts "Enter your color"
color = gets.chomp
hameleon.change_color(color)
