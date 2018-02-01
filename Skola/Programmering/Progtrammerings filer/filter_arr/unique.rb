def unique(arr)
    #list = arr.dup
    #list = list.uniq
    list = []
    i = 0
    while i < arr.length
        x = 0
        sum = 0
        while x < arr.length
            if arr[x] == arr[i]
                sum += 1
            end
            x += 1
        end
        if sum == 1 
            list << arr[i]
        end
        i += 1
    end
    return list
end

p unique([1,2,3,3])