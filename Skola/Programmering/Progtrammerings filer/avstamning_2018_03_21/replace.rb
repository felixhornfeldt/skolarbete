def replace(string, letter, replace_letter)
    i = 0
    output = string.dup
    while i < string.length
        # p output
        if output[i] == letter
            output[i] = replace_letter
        end
        i += 1
    end
    return output
end

p replace("the quick brown fox jumped over the lazy dog", "t", "z")