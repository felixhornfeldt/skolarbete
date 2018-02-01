def crypo(str)
    crypto = ""
    i = 0
    number = 0
    yo = true
    letter = str[i]
    while yo == true
        if str[i] == letter
            number += 1
            crypto = "#{number}#{str[i]}"
        else
            yo = false
            i -= 1
        end
        i += 1
    end
    return crypto
end

p crypo("wwwwwbwwwwwbbbbbbbewewewwweeeee")