def medianarr(arr)
    if arr.length % 2 != 0
        median = arr[arr.length / 2]
    else
        median = (arr[(arr.length / 2) - 1] + arr[arr.length / 2]) / 2.to_f
    end
    return median
end

puts medianarr([5,0,6,-1,2])