def count(word, letter)
    sum = 0
    i = word.length
    i = i - 1 
    while i >= 0
        if word[i] == letter
            sum = sum  + 1
            i = i - 1
        else
            i = i - 1
        end
    end
    return sum
end

word = gets.chomp
letter = gets.chomp

puts count(word, letter)
