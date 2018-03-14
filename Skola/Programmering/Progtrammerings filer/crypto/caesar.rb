def caesar(file)
    file_copy = file.dup
    s = File.readlines("s_alphabet.txt")
    s_alphabet = s[0]
    b = File.readlines("b_alphabet.txt")
    b_alphabet = b[0]
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
                if file_copy[i] == s_alphabet[sa]
                    file_copy[i] = s_alphabet[sa-3]
                    sa_run = false
                end
                if sa >= file_copy.length
                    sa_run = false
                    while ba_run
                        if file_copy[i] == b_alphabet[ba]
                            file_copy[i] = b_alphabet[ba-3]
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
    File.write("crypted.txt", file_copy)
    return file_copy
end

p caesar(File.read("poem.txt"))