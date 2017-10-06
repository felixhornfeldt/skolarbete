def loopie(num1, num2)
    while 
        if num1 % 2 == 0
            sum = num1
        else
            num1 = num1 + 1
        end
        if num2 % 2 == 0
            sum = sum + num2
        else
            num2 = num2 + 1
        end
        return sum   
    end
end

puts loopie(3, 7)