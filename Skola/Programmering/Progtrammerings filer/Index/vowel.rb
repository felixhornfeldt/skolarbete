def vowel(character)
    vowels = "aeiouy"
    i = vowels.length - 1
    result = false
    while i >= 0
        if character == vowels[i]
            result = true
            i = -1
        else
            i -= 1
        end
    end
    return result
end

character = gets.chomp

puts vowel(character)