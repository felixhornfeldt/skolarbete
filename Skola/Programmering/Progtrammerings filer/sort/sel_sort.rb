def sel_sort(arr)
    unsort_arr = arr.dup
    sort_arr = []
    start = true
    while start 
        i = 0
        position = 0
        small = unsort_arr[0]
        while i < unsort_arr.length
            if small > unsort_arr[i]
                small = unsort_arr[i]
                position = i
            end
            i += 1
        end
        sort_arr << small
        unsort_arr.delete_at(position)
        if unsort_arr == []
            start = false
        end
    end
    return sort_arr
end

list = (1...1000).map{rand(1000)}


p sel_sort(list) == list.sort