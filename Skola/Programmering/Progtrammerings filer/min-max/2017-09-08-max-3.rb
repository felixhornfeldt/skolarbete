num1 = 5
num2 = 6
num3 = 7

def max(num1, num2, num3)
    if  num1 > num2
        largest = num1
    else
        largest = num2
    end
    if  num3 > largest
        largest = num3
    end
    return largest
end
puts max(num1, num2, num3)