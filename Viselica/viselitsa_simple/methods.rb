
def get_letters
  slovo = ARGV[0]

  if slovo == nil || slovo == ""
    abort "Ви не ввели літери для гри"
  end

  return slovo.split('')
end


def get_user_input
  letter = ''

  while letter == ''
    letter = STDIN.gets.chomp
  end

  return letter
end


def  check_result(user_input, letters, good_letters, bad_letters)
  if good_letters.include?(user_input) || bad_letters.include?(user_input)
    return 0
  end

  if letters.include?(user_input)
    good_letters << user_input

    #умова коли відгадано всі слова!
    if good_letters.uniq.sort == letters.uniq.sort
      return 1
    else
      return 0
    end

  else
    bad_letters << user_input
    return -1
  end

end

def get_letter_for_print(letters, good_letters)
  result = ""

  for letter in letters do
    if good_letters.include?(letter)
      result += letter + " "
    else
      result += "__ "
    end
  end
  return result
end


def print_status(letters, good_letters, bad_letters, errors)
  puts "\n Слово: #{get_letter_for_print(letters, good_letters)}"
  puts "Помилки (#{errors}): #{bad_letters.join(", ")}"

  if errors >= 7
    puts "Ви програли :("
  else
   if good_letters.uniq.sort == letters.uniq.sort
      puts "Вітаю ви перемогли!!!\n\n"
   else
      puts "У вас залишилось: " + (7-errors).to_s + " Спроби!!!"
   end
  end
end

#метод який приховує загадане слово
def cls
  system "clear" or system "cls"
end
