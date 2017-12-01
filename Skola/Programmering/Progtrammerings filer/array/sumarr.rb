def sumarr(arr)
    i = arr.length - 1
    sum = 0
    while i >= 0
        sum += arr[i]
        i -= 1
    end
    return sum
end

puts sumarr([5,0,2,5,-1])