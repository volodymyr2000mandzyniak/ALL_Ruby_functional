current_path = File.dirname(__FILE__)
file_path = current_path + '/data/movies.txt'


if File.exist?(file_path)
  f = File.new(file_path, 'r')
  lines = f.readlines
  f.close
  puts "Сьогодні пропонуєм для пергляду фільм: #{lines.sample}"

else
  puts "Файл не знайдено"
end
