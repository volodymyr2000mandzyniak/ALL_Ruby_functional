require_relative './bodybylder.rb'

bodybilder1 = BodyBilder.new
bodybilder2 = BodyBilder.new
bodybilder3 = BodyBilder.new

5.times do
  bodybilder1.pump('triceps')
end

7.times do
  bodybilder1.pump('biceps')
end

3.times do
    bodybilder1.pump('delta')
end


2.times do
  bodybilder2.pump('triceps')
end

8.times do
  bodybilder2.pump('biceps')
end

1.times do
  bodybilder2.pump('delta')
end


4.times do
  bodybilder3.pump('triceps')
end

4.times do
  bodybilder3.pump('biceps')
end

3.times do
  bodybilder3.pump('delta')
end


puts 'Перший бодібілдер:'
bodybilder1.show_muscles
puts

puts 'Другий бодібілдер:'
bodybilder2.show_muscles
puts

puts 'Третій бодібілдер:'
bodybilder3.show_muscles
puts
