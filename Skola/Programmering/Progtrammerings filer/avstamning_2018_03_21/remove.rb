def remove(string, letter)
    i = 0
    output = string.dup
    while i < string.length
        if output[i] == letter
            output[i] = ""
        end
        i += 1
    end
    return output
end

p remove("the quick brown fox jumped over the lazy dog", "t")