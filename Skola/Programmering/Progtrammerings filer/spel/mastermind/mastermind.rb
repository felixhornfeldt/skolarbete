def mastermind()
    puts "Welcome to Mastermind!" #Instruction
    puts "a x mark declares that it's the correct number in the correct position" #Instruction
    puts "a o mark declares that it's not the correct number" #Instruction
    puts "Humbers between 0-5 is accepted" #Instruction
    puts "Guess the secret combination!" #Instruction
    correct = [rand(6), rand(6), rand(6), rand(6)] #The correct combination
    #puts correct.to_s
    i = 0 #Declaring base value of i
    while true #The loop will run until the correct combination is typed
        if i > 0
            puts "Guess again" #If you don't guess right on the first try
        end
        i += 1 # Increase of i by one
        guess = gets.chomp #The guess
        #puts guess.length
        if guess.length == 4 #Checks if the guess is more or less then 4
            guess_arr = [] #An empty array for guess
            z = 0 #base value of z
            while z < 4 #The loop will put the index of the guess into an array
                guess_arr = guess_arr.push(guess[z].to_i) #push the guess index into guess_arr
                z += 1 #Increase of z by one
            end
            #puts guess_arr.to_s
            if guess_arr == correct #Checks if the guess (guess_arr) is the same as correct, if the guess is correct
                if i == 1 #If i equals 1 then the singular version will run
                    puts "Correct! it took you #{i} guess!" #Singular
                    return #Stops the code from running
                end
                puts "Correct! it took you #{i} guesses!" #Plural
                return #Stops the code from running
            end
            clue = ["o", "o", "o", "o"] #the basic output for the clue
            x = 0 #Declaring x as equal to 0
            while x < correct.length #while x is less then correct.length this loop will run and see if an o in the clue should be replaced with "x"
                if guess_arr[x] == correct[x] #Checks if the index in guess_arr is the same as the index as correct
                    clue[x] = "x" #If it's true then replace index x with "x" in the clue array
                end
                x += 1 #Increase x by one
            end
            puts clue.to_s #Reveal the clue for the challenger
        else #If the guess ain't 4 long this will run telling the inputer that it has to be 4 numbers
            puts "Only 4 numbers is accepted"
        end
    end
end

puts mastermind()