def contains(word, letter)
    i = word.length
    i = i - 1
    while i >= 0
        if word[i] == letter
            i = -1
            result = "true"
        else
            i = i - 1
            result = "false"
        end
    end
    return result
end

word = gets.chomp
letter = gets.chomp

puts contains(word, letter)