if File.exist?('./data/comment.txt')
  f = File.new('./data/comment.txt', 'r')
  text = f.read
  puts text
else
  puts "Файл не знайдено"
end
