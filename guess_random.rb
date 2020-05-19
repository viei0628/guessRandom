class GuessRandom 

#I give the program access to read from the random variable so it can read but not change it.
    attr_reader :random, :guesses_remaining, :my_guess


    def initialize()
        @guesses = 0
        @guess_right = false
        #Call random_num to ge the random number I am trying to change
        random_num()
        turn()
        #Call the guess method
        guess()
    end

    def turn
        @guesses_remaining = 6 - @guesses
            puts "Guesses remaining: #{@guesses_remaining}"
            puts "Please guess a number between one and a hundred: "
            @my_guess = gets.chomp.to_i
        
        
    end

#Here I ask the user to guess higher or lower depending for as long as they have not guessed correctly
#or until they run out of guesses
    def guess
        
        while @guesses_remaining > 1 && @guess_right == false
            
            if @my_guess == @random
                puts "Correct you guessed it\n\n"
                @guess_right == true
                return @guess_right

            elsif @my_guess < @random
                puts "Please guess higher\n\n"
                

            else
                puts "Please guess lower\n\n"
                
            end
            turn()
            @guesses += 1
            
        end
        
        #If the loop breaks then the user looses and I tell them that.
        if @my_guess != @random
            puts "Sorry better luck next time.\nThe answer was #{@random}"
        else 
            puts "Correct"
        end
    end

#Here I get a random number between 0 and 100
    def random_num
        @random = rand(100)
    end
end



tims_guess = GuessRandom.new()
