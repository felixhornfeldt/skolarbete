def insertion(arr)
    c_arr = arr.dup
    i = 0 
    while i < c_arr.length - 1
        if c_arr[i] > c_arr[i+1]
            temp = c_arr[i]
            c_arr[i] = c_arr[i+1]
            c_arr[i+1] = temp
            if i != 0
                i -= 1
            end
        else
            i += 1
        end
    end
    return c_arr
end

p insertion([5,0,8,3,9,6,4,8675,7573,343,9,0,12])