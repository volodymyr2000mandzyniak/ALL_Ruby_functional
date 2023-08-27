class Person
    def initialize(name, last_name, age)
      @age = age
      @name = name
      @last_name = last_name
    end


    def check_old?
      return @age >= 60
    end


    def full_name
      if check_old?
        puts "#{@name}, #{@last_name}"
      else
        puts "#{@name}"
      end
    end


    def age
      return @age
    end
end





