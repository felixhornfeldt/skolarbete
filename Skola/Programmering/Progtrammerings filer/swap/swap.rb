num1 = 3
num2 = 2

def swap(num1, num2)
    temp = num1
    num1 = num2
    num2 = temp
    return num1, num2
end
puts swap(num1, num2)