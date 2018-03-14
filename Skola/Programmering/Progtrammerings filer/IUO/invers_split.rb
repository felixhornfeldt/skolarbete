def invers_split(string, del)
    c_string = string.dup
    i = 0
    output = []
    list = []
    while i < c_string.length - 1
        p c_string[i]
        if c_string[i] == del
            output += list
            list = []
            c_string.delete_at(i)
        else
            list.push(c_string[i])
            c_string.delete_at(i)
        end
        p list
        i += 1
    end
    return output
end

p invers_split("banan;grill;senap", ";")