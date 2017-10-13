def counting_loop(faktor1, faktor2)
    sum = 0
    i = 0
    while i < faktor2 
        sum = sum + faktor1
        i = i + 1
    end
    return sum
end

faktor1 = gets.to_i
faktor2 = gets.to_i

puts counting_loop(faktor1, faktor2)