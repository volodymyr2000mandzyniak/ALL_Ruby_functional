current_path = File.dirname(__FILE__)

questions_path = current_path + '/data/questions.txt'
answers_path = current_path + '/data/answer.txt'

unless File.exist?(answers_path) && File.exist?(questions_path)
  abort 'Один из файлів не знайдено!'
end


questions_file = File.new(questions_path, 'r:')
questions = questions_file.readlines
questions_file.close

answers_file = File.new(answers_path, 'r:')
answers = answers_file.readlines
answers_file.close

correct_answers = 0

current_index = 0

puts ' Міні вікторина  Відповіді на питання.'

while current_index < questions.size
  puts
  puts questions[current_index]

  user_answer = STDIN.gets.chomp
  correct_answer = answers[current_index].chomp

  if user_answer == correct_answer
    puts 'Правильна відповідь!'
    correct_answers += 1
  else
    puts 'Неправильна. Правильна відповідь: ' + correct_answer
  end

  current_index += 1
end

puts
puts "Правильних відповідей: #{correct_answers} із #{questions.size}"
