def count(sentence, string)
    i = 0 # iteration variabel
    output = 0 # output starting value is equal to 0
    while i <= sentence.length - 1
        z = 0 # iteration variabel for string
        sec_run = true # local variabel set to true so that second while loop runs
        check = false # checks if the sentence part and string is equal to eachother is later checked if true so that output increas with 1
        while sec_run
            if sentence[i] == string[z] # checks if the letter ,at position i, in the sentence is equal to the first letter in string
                check = true
            else # if it's not true the second loop stops running and check is equal to false
                check = false 
                sec_run = false
            end
            if z == 0 && check == false # if z is zero and check is equal to false the second loop stops running because the letter in sentence[i] is not equal to the first letter in the string
                sec_run = false
            end
            if z >= string.length - 1 # if z is bigger or equal to the string length the second loop stops running because else string[z] will give a value of nil
                sec_run = false
            end
            z += 1 # increase z with 1
            i += 1 # increase i with 1
        end
        if check == true 
            output += 1 # increase output with one that declares that the string has been found in the sentence
        end
    end
    return output
end

p count("the quick brown fox jumped over the lazy dog", "the")