class BodyBilder

    def initialize
        @biceps  = 0
        @triceps = 0
        @delta   = 0
    end


    def pump(muscle)
      case muscle
        when 'triceps'
          @triceps += 1
        when 'biceps'
          @biceps += 1
        when 'delta'
          @delta += 1
      end
    end

    def show_muscles
        puts "Біцепс:  #{@biceps}"
        puts "Тріцепс: #{@triceps}"
        puts "Дельта:  #{@delta}"
    end

end

