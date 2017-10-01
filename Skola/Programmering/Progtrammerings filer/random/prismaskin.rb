def price(age)
    old_price = 15
    youth_price= 10
    regular_price = 20
    if age < 18
        price = youth_price
    elsif age > 65
        price = old_price
    else
        price = regular_price
    end
    return price
end

puts 'How old are you mate?'
age = gets.to_i
puts 'Then that will be'
print price(age)
puts '$'