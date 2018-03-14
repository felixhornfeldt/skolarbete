def bin_2_dec(binary)
    c_binary = binary.dup
    output = 0
    add = 1
    i = c_binary.length - 1
    while i >= 0
        p c_binary[i]
        if c_binary[i] == "1"
            output += add
        end
        add = add * 2
        i -= 1
    end
    return output
end

p bin_2_dec("1001")