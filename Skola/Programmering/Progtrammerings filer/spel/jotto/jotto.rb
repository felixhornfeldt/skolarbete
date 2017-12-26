def jotto()
    puts "welcome to jotto"
    puts "Guess the secret word (3 letters long)"
    word = File.readlines("text.txt")
    correct = word[rand(word.length)].chomp
    puts correct
    end_game = false
    i = 0
    while end_game == false 
        puts "Make a guess!"
        guess = gets.chomp
        puts guess
        i += 1
        if guess == correct 
            puts "Correct! The secret word was #{correct}."
            puts "It took you #{i} guesses!"
            puts "Would you like to play again?"
            return 
        end
        x = 0
        z = 0
        while z < 3 
            if guess[0] == correct[z]
                x += 1
                z += 1
            end
            if guess[1] == correct[z]
                x += 1
                z += 1
            end
            if guess[2] == correct[z]
                x += 1
                z += 1
            end
            z += 1
        end 
        puts "#{guess} has #{x} characters in common with the secret word"
    end
end

puts jotto()