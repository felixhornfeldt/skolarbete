def collatz(tal)
    i = 0
    while tal != 1
        if tal % 2 == 0
            tal = tal/2
        else
            tal = tal * 3 + 1
        end
        i = i + 1
    end
    return i
end

tal = gets.to_i

puts collatz(tal)