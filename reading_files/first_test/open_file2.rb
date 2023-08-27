#позволяє відкривати файл з любого мізця
current_path = File.dirname(__FILE__)
file_path = current_path + '/data/comment.txt'

if File.exist?(file_path)
  f = File.new(file_path, 'r')
  lines = f.readlines
  f.close
  puts lines.sample
else
  puts "Файл не знайдено"
end
