require "pony"
require "io/console"

puts "Enter your email adres"
my_mail = STDIN.gets.chomp

puts "Enter your password"
password = STDIN.noecho(&:gets).chomp

puts " How is get mail"
send_to = STDIN.gets.chomp

puts "Reading text for mail"
body = STDIN.gets.chomp


Pony.mail(
  {
    :to => send_to,
    :from => my_mail,
    :subject => 'Hello it is Ruby',
    :body => body,

    :via => :smtp,
    :via_options => {
        :address              => 'smtp.gmail.com',
        :port                 => '587',
        :enable_starttls_auto => true,
        :user_name            => my_mail,
        :password             => password,
        :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      }
  }
)

puts "Leters seng well"
