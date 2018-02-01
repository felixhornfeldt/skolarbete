def filter(arr, x)
    i = 0
    list = []
    while i < arr.length
        if arr[i] == x 
            list << arr[i]
        end
        i += 1
    end
    return list
end

puts filter([1,2,3,3], 2)