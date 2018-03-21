def contains(sentence, string)
    i = 0
    output = false
    run = true
    while run
        z = 0
        sec_run = true
        while sec_run
            if sentence[i] == string[z]
                output = true
            else 
                output = false
                sec_run = false
            end
            if z == 0 && output == false
                sec_run = false
            end
            if z >= string.length - 1
                sec_run = false
            end
            z += 1
            i += 1
        end
        if output == true || i >= sentence.length - 1
            run = false
        end
    end
    return output
end

p contains("the quick brown fox jumped over the lazy dog", "the quick brown fox ")