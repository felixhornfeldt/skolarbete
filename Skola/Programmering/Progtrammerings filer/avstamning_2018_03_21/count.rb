def count(string, letter)
    i = 0
    output = 0
    while i < string.length
        if string[i] == letter
            output += 1
        end
        i += 1
    end
    return output
end

p count("the quick brown fox jumped over the lazy dog", "e")