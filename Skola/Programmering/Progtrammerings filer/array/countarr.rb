def count(arr, x)
    sum = 0
    i = arr.length - 1
    while i >= 0
        if arr[i] == x
            sum += 1
        end
        i -= 1
    end
    return sum
end

puts count([4,25,4,6,4], 5)