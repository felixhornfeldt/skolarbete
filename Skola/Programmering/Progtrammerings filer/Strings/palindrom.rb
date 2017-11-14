def palindrom(word)
    same = false
    word_ = word
    length = word.length - 1
    reverse = ""
    while length >= 0
            temp = word[length]
            reverse = reverse + temp 
            length = length - 1
    end
    if word_ == reverse
        same = true
    end
    return same
end

puts palindrom("anna")