def sum_of_odd_numbers(up_to)
    sum = 0
    number = 1
    while up_to >= number
        sum = sum + number
        number = number + 2
    end
    return sum
end

puts sum_of_odd_numbers(6579)