def contains(arr, x)
    i = arr.length - 1
    result = false
    while i >= 0
        if arr[i] == x
            result = true
            return result
        end
        i -= 1
    end
    return result
end

puts contains([4,25,4,6,4], 7)