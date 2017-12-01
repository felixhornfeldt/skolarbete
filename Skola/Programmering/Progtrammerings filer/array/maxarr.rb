def maxarr(arr)
    i = arr.length - 1
    max = arr[0]
    while i > 0
        if arr[i] > max
            max = arr[i]
        end
        i -= 1
    end
    return max
end

puts maxarr([17,25,4,6,450000])