def quick(arr)
    if arr.length == 0
        return []
    end
    output = []
    copy_a = arr.dup
    smaller = []
    bigger = []
    i = 0
    pivot = copy_a[copy_a.length - 1]
    while i < copy_a.length - 1
        if pivot > copy_a[i]
            smaller << copy_a[i]
        else
            bigger << copy_a[i]
        end
        i += 1
    end
    output = quick(smaller) + [pivot] + quick(bigger)
    return output
end

p quick([5,656456,34212,35,6,4645,6,53,54,6,2,5345,5,45,4])