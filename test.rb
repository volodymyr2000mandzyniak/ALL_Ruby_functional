# # Вказуємо шлях до файлу
# file_path = 'b_user.sql'

# # Відкриваємо файл у режимі читання
# File.open(file_path, 'r') do |file|
#   # Читаємо вміст файлу по рядках
#   file.each_line do |line|
#     # Виводимо кожен рядок на екран
#     puts line
#   end
# end
# #
require 'sqlite3'

# Вказуємо шлях до файлу бази даних
db_file = 'b_user.sql'

# Відкриваємо з'єднання з базою даних
db = SQLite3::Database.new(db_file)

# Виконуємо запит для видалення рядків з усіма полями, що мають значення NULL
db.execute('DELETE FROM b_user WHERE column1 IS NULL AND column2 IS NULL AND ...')

# Закриваємо з'єднання з базою даних
db.close
