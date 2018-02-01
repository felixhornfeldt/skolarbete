def ins_sort(arr)
    sort_arr = arr.dup
    i = 1
    start = true
    while start
        value = sort_arr[i]
        z = i - 1
        position = z
        while z <= 0
            if value >= sort_arr[z]
                position = z
            end
            z -= 1
        end
        sort_arr.insert(position, value)
        sort_arr.delete_at(position)
        i += 1
    end
end

p ins_sort([9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0])