def selction(arr)
    us_arr = arr.dup
    s_arr = []
    while true
        i = 0
        pos = 0
        value = us_arr[0]
        while i < us_arr.length
            if value > us_arr[i]
                pos = i
                value = us_arr[i]
            end
            i += 1
        end
        s_arr.push(value)
        us_arr.delete_at(pos)
        if us_arr == []
            return s_arr
        end
    end
end

p selction([5,0,8,3,9,6,4])