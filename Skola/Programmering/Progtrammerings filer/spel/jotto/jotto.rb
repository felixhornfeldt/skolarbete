def jotto()
    puts "Welcome To Jotto, The worst word game ever!"
    word = File.readlines("text.txt")
    correct = word[rand(word.length)]
    p correct
    end_game = false
    i = 0
    while end_game == false
        i += 1
        puts "Make a guess plz"
        input = gets.chomp
        if input === correct
            puts "You won!"
            puts "it took you " + i.chomp + " guesses"
            end_game = true
        end
    end
end

puts jotto()