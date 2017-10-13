def repeat_loop(number, string)
    i = 0
    full = ""
    while i < number
        full = full + " " + string
        i = i + 1
        puts i
    end
    return full
end

number = gets.to_i
string = gets.chomp

puts repeat_loop(number, string)