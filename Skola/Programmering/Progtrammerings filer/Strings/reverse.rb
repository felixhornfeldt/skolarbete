def reverse(word)
    length = word.length - 1
    reverse = ""
    while length >= 0
        temp = word[length]
        reverse = reverse + temp 
        length = length - 1
    end
    return reverse
end

puts reverse("hej")