def sum(upto)
    sum = 0
    i = 0
    temp = upto
    while i < upto
        sum = sum + temp
        temp = temp - 1
        i = i + 1
    end
    return sum
end

upto = gets.to_i

puts sum(upto)

def factorial(from)
    output = 1
    while from >= 1
        output = output * from
        from = from - 1
    end
    return output
end

from = gets.to_i

puts factorial(from)