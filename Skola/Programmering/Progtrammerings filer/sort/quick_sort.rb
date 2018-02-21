def quick(arr)
    if arr.length == 0
        return []
    end
    output = []
    copy_arr = arr.dup
    i = 0
    smaller = []
    bigger = []
    pivot = copy_arr[copy_arr.length-1]
    while i < copy_arr.length - 1
        if pivot > copy_arr[i]
            smaller << copy_arr[i]
        else
            bigger << copy_arr[i]
        end
        i += 1
    end

    output = quick(smaller) + [pivot] + quick(bigger)
    p output
    return output
end

# p quick([4555,4,3,67,9,45,3,667,6])

list = (1...1000).map{rand(1000)}

p quick(list) == list.sort