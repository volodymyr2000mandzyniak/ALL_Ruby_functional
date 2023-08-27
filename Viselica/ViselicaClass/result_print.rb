class ResultPrinter

  def initialize
    @status_image = []

    current_path = File.dirname(__FILE__)
    counter = 0

    while counter <=7 do
      file_name = current_path + "/image/#{counter}.txt"

      if File.exists?(file_name)
        f = File.new(file_name, 'r:')
        @status_image << f.read
        f.close
      else
        @status_image << "\n[ малюнок не знайдено ]\n"
      end
      counter += 1
    end
  end


  def print_status(game)
    cls
    puts "\n Слово: #{get_letter_for_print(game.letters, game.good_letters)}"
    puts "Помилки (#{game.errors}): #{game.bad_letters.join(", ")}"

    print_viselitsa(game.errors)

    if game.errors >= 7
      puts "Ви програли :("
    else
      if game.letters.uniq.sort == game.good_letters.uniq.sort
        puts "Вітаю ви перемогли!!!\n\n"
      else
        puts "У вас залишилось: " + (7-game.errors).to_s + " Спроби!!!"
      end
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

  #метод який приховує загадане слово
  def cls
    system "clear" or system "cls"
  end

  def print_viselitsa(errors)
    puts @status_image[errors]
  end

end
