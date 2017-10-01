# allt inom if till end är true 
# (#) är hash inte hashtag

def if_verktyget(number)
    #true
    if number == 7
        bananas = 6
        senap = 3
    end
    #false (eller efter true)
    grillkorv = 2
end

def if_else_verktyget(number)
    #true
    if number == 7
        bananas = 6
        senap = 3
    end 
    #false
    else
        grillkorv = 7
    end
    #fortsätt oavsett om true eller false
end

def if_elsif_else_verktyget(number)
    if number == 7
        senap = 2
    elsif number == 8
        senap = 75
    elsif number == 25
        senap = 6
    else #frivilligt
        senap = 1337
    end
end

def kedjade_if_verktyget(number)
    if number == 7
        if senap == 2
            if banan ==1337
                bananpaj = 9001
            end
        end 
    end
end