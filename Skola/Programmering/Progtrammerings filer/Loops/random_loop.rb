def random(number1, number2, number3)
    sum = 0
    i = 0
    while i < number3
        sum += number1
        i += 1
    end
    i = i - number2
    while i > 0
        sum += number2
        i -= 1
    end
    return sum
end

number1 = gets.to_i
number2 = gets.to_i
number3 = gets.to_i

puts random(number1, number2, number3)