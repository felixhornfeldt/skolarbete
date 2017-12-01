def averagearr(arr)
    i = arr.length - 1
    sum = 0
    while i >= 0
        sum += arr[i]
        i -= 1
    end
    average = sum / arr.length.to_f
    return average
end

puts averagearr([5,0,2,5,-1])