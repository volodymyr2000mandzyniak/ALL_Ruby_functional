file_name = ARGV[0]

if file_name == nil
  abort 'Вкажіть імя файла в якості аргумента програми'
end

unless File.exist?(file_name)
  abort 'Файл не знайдено!'
end


file = File.new(file_name, 'r')
lines = file.readlines
file.close


to_arraey = lines.to_a
all_lengch = to_arraey.size
empt = []
last_lines = []

to_arraey.each do |i|
  if i.size == 1
    empt << i
  end
end

puts "last 5 lines:"

rev =  to_arraey.reverse.first(5)
rev.each do |el|
  puts el
end


puts "All lints: #{all_lengch}"
puts "Empt lines: #{empt.size} "

