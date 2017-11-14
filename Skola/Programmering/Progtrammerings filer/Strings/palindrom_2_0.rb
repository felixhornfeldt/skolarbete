def palindromsimple(word)
    i = 0
    ii = 1
    last = word[word.length - ii]
    first = word[0]
    output = true
    z = word.length / 2
    while i <= z && output
        i += 1
        ii += 1
        if first == last
            first = word[i]
            last = word[word.length - ii]
        else
            output = false
            i = word.length
        end
    end
    return output
end

puts palindromsimple("hej")