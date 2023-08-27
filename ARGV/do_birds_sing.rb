all sinh onli t = 22 - 30

if summer t 15 - 35


t = ARGV[0]
puts "How now temperature:  >"


puts "How to dey time year? ( 0 - spring, 1 - summer, 2 - outeum, 3 - winter) "

choos = gets.chomp.to_i


if ( t == 22 .. 30 || choos == 15 .. 35)
    puts "All Birdds sings"
else
    puts "All Birds sleep"
end
