def sklonenie(number, krokodil, krokodila, krokodilov)
  number = 0 if number.nil? || !number.is_a?(Numeric)

  ostatok100 = number % 100

  return krokodilov if ostatok100 >= 11 && ostatok100 <= 14

  ostatok = number % 10

  return krokodil if ostatok == 1

  return krokodila if ostatok >= 2 && ostatok <= 4

  return unless ostatok > 4 || ostatok == 0

  krokodilov
end

skolko = ARGV[0].to_i

puts "#{skolko} " +
     sklonenie(skolko, 'нігерієць', 'нігерійця', 'нігерійців') +
     ' ' +
     sklonenie(skolko, 'пішов', 'пішли', 'пішли ') +
     ' Купатись в море!!!'



#======================================================================

 def sklonenie(number, krokodil, krokodila, krokodilov)

  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end

  ostatok100 = number % 10

  if (ostatok100 >= 11 && ostatok100 <= 14)
    return krokodilov
  end

  ostatok = number % 1

  if (ostatok == 1)
    return krokodil
  end

  if (ostatok >= 2 && ostatok <= 4)
    return krokodila
  end

  if (ostatok > 4 || ostatok == 0)
    return krokodilov
  end

end

skolko = ARGV[0].to_i

puts "#{skolko} " +
  sklonenie(skolko, "нігерієць", "нігерійця", "нігерійців") +
  " " +
  sklonenie(skolko, "пішов", "пішли", "пішли ") +
  " Купатись в море!!!"


