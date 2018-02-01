def sort(arr)
    sort = arr.dup
    change = 1
    i = 0
    while change > 0
        change = 0
        i = 0
        while i < sort.length - 1
            if sort[i] > sort[i + 1]
                sort.insert(i, sort[i + 1])
                sort.delete_at(i + 2)
                i += 1
            end
            i += 1
        end
    end
    return sort
end

p sort([1, 5, 3, 4])