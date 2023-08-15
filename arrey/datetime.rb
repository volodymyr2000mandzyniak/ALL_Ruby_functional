# Записываем текущее время в переменную time
time = Time.now

# Получаем текущий день недели, вызывая у объекта в переменной time метод wday
week_day = time.wday

# Проверяем номер дня недели (дни нумеруются с нулевого, при этом первый день
# недели - воскресенье, а последний, 6-й - суббота)
if week_day == 0 || week_day == 6
  puts 'Сьогодні вихідний!'
else
  puts 'Сьогодні будній день, за роботу!'
end


puts time