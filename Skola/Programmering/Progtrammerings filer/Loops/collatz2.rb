def collatz_largest(tal)
    largest = tal
    while tal != 1
        if tal % 2 == 0
            tal = tal / 2
        else
            tal = tal * 3 + 1
            if tal > largest
                largest = tal
            end
        end
    end
    return largest
end

tal = gets.to_i

puts collatz_largest(tal)