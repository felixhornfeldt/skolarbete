def bubble(arr)
    copy_a = arr.dup
    while true
        i = 0
        c = 0
        while i < copy_a.length - 1
            if copy_a[i] > copy_a[i+1]
                temp = copy_a[i]
                copy_a[i] = copy_a[i+1]
                copy_a[i + 1] = temp
                c += 1
            end
            i += 1
        end
        if c <= 0
            return copy_a
        end
    end
end

p bubble([5,0,8,3,9,6,4,8675,7573,343,9,0,12])