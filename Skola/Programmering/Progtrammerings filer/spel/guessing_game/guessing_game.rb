def guessing_game()
    game_size = gets.to_i
    correct = rand(game_size)
    end_game = false

    while end_game == false
        input = gets.to_i
        if input == correct
            end_game = true
        elsif input > correct
            puts "Number is to high, go down"
        else
            puts "Number is to low, go up"
        end
    end
    return "You Won!"
end

puts guessing_game()