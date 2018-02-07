def ins_sort(arr)
    sort_arr = arr.dup
    i = 0
    while i < sort_arr.length - 1
        if sort_arr[i] > sort_arr[i+1]
            temp = sort_arr[i]
            sort_arr[i] = sort_arr[i+1]
            sort_arr[i+1] = temp
            if i != 0
                i -= 1
            end
        else
            i += 1
        end
    end
    return sort_arr
end

p ins_sort([9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0])