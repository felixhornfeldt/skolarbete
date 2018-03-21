def contains(string, letter)
    i = 0
    output = false
    run = true
    while run
        if string[i] == letter
            output = true
            run = false
        elsif i >= string.length
            run = false
        end
        i += 1
    end
    return output
end

p contains("the quick brown fox jumped over the lazy dog", "q")