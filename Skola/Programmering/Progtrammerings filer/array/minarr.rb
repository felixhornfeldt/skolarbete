def minarr(arr)
    i = arr.length - 1
    min = arr[0]
    while i > 0
        if arr[i] < min
            min = arr[i]
        end
        i -= 1
    end
    return min
end

puts minarr([17,25,4,6,45])