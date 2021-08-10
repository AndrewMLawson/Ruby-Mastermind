class Mastermind
    def initialize()
        @code = createCode()
        @guesses = []
        p @code
        playerGuess()
    end

    def createCode()
        codeHash = {1 => rand(1..6), 2 => rand(1..6), 3 => rand(1..6) , 4 => rand(1..6)}
        code = []
        for i in 1..4 do
            code.push(codeHash[i])
        end
        return code
    end

    def playerGuess()
        p "Number of tries = #{@guesses.length}"
        p "Guess the code!"
        guess = gets.chomp
        guessToArray(guess)
    end
    
    def guessToArray(guess)
        guessArray = []
        for i in 0..3 do
            guessArray.push(guess[i].to_i)
        end
        p guessArray
    end
    def guessFeedback(guess)
        
    end
end

newGame = Mastermind.new()