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