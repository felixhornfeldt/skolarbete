def rovarsprak(file)
    file_copy = file.dup
    s = File.readlines("s_const.txt")
    s_const = s[0]
    b = File.readlines("b_const.txt")
    b_const = b[0]
    i = 0
    while i < file_copy.length
        run = true
        if file_copy[i] == "\n"
            i += 1
        end
        while run
            ba_run = true
            sa_run = true
            sa = 0
            ba = 0
            while sa_run
                if file_copy[i] == s_const[sa]
                    file_copy[i] = s_const[sa] + "o" + s_const[sa]
                    sa_run = false
                end
                if sa >= file_copy.length
                    sa_run = false
                    while ba_run
                        if file_copy[i] == b_const[ba]
                            file_copy[i] = b_const[ba] + "o" + b_const[ba]
                            ba_run = false
                        end
                        if ba >= file_copy.length
                            ba_run = false
                        end
                        ba += 1
                    end
                end
                sa += 1
            end
            run = false
        end
        i += 1
    end
    File.write("rovarsprakcrypted.txt", file_copy)
    return file_copy
end

p rovarsprak(File.read("poem.txt"))