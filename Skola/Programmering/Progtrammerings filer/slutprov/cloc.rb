# code_lines: calculates the number of comments in a file.
#
# output - integer, holds the number of times that a comment has been seen.
# i - integer, index variable, choosing which item in array that is to be checked.
# j - integer, index variable for second loop.
# z - integer, index variable for third loop.
# temp_holder - string, holds the choosed array item.
# check - holds a boolean value that is to be checked later.
#
# Examples
#
#   code_lines(["# bananpaj o grillkorv","hello", "my", "friend"])
#   # => 3
#
# Returns the number of code lines
def code_lines(arr)
    output = 0
    begin
        i = 0
        while i < arr.length
            j = 0
            temp_holder = arr[i]
            while j < temp_holder.length
                if temp_holder[j] == "\n" || temp_holder[j] == "#"
                    break
                elsif temp_holder[j] == " "
                    z = j
                    check = false
                    while z < temp_holder.length
                        if temp_holder[z] != " " || temp_holder[z] != "\n"
                            check = true
                            break
                        end
                        z += 1
                    end
                    if check == true
                        output += 1
                        break
                    elsif check == false
                        break
                    else
                        return "error"
                    end
                else
                    output += 1
                    break
                end
                j += 1
            end
            i += 1
        end
    rescue NameError
        p "No variable with this name"
    rescue TypeError
        p "String was not converted into integer"
    rescue IndexError
        p "Index was not inside the paramaters"
    ensure
        return output
    end
end

# comment_lines: calculates the number of comments in a file.
#
# output - integer, holds the number of times that a comment has been seen.
# i - integer, index variable, choosing which item in array that is to be checked.
# j - integer, index variable for second loop.
# temp_holder - string, holds the choosed array item.
#
# Examples
#
#   comment_lines(["# bananpaj o grillkorv","hello", "my", "friend"])
#   # => 1
#
# Returns the number of comments.
def comment_lines(arr)
    output = 0
    begin
        i = 0
        while i < arr.length
            if arr[i] ==  "#\n"
                output += 1
            else
                j = 0
                temp_holder = arr[i]
                while j < temp_holder.length
                    if temp_holder[j] == "#"
                        output += 1
                        break
                    elsif temp_holder[j] != " "
                        break
                    end
                    j += 1
                end
            end
            i += 1
        end
    rescue NameError
        p "No variable with this name"
    rescue TypeError
        p "String was not converted into integer"
    rescue IndexError
        p "Index was not inside the paramaters"
    ensure
        return output
    end
end

# empty_lines: calculates the number of empty lines in a array.
#
# output - integer, holds the number of times that an empty line has been seen.
# i - integer, index variable, choosing which item in array that is to be checked.
# j - integer, index variable for second loop.
# temp_holder - string, holds the choosed array item.
#
# Examples
#
#   empty_lines(["# bananpaj o grillkorv","hello", "my", "\n", "    \n", "friend"])
#   # => 2
#
# Returns the number of empty lines.
def empty_lines(arr)
    output = 0
    begin
        i = 0
        while i < arr.length
            if arr[i] == "\n"
                output += 1
            else
                j = 0
                temp_holder = arr[i]
                while j < temp_holder.length
                    case temp_holder[j]
                    when " "
                        if j + 1 != " " || j + 1 != "\n"
                            break
                        end
                    when "\n"
                        if j + 1 == temp_holder.length
                            output += 1
                            break
                        else
                            break
                        end
                    else
                        break
                    end
                    j += 1
                end
            end
            i += 1
        end
    rescue NameError
        p "No variable with this name"
    rescue TypeError
        p "String was not converted into integer"
    rescue IndexError
        p "Index was not inside the paramaters"
    ensure
        return output
    end
end

# total_lines: returns the length of an array.
#
# arr - input array.
#
# Examples
#
#   total_lines([1,2,3,4])
#   # => 4
#
# Returns the length of an array.
def total_lines(arr)
    return arr.length
end

# total_functions: calculates the number of functions in a file.
#
# output - integer, holds the number of times that an empty line has been seen.
# funcDef - string, holds the defintion of a function.
# i - integer, index variable, choosing which item in array that is to be checked.
# j - integer, index variable for second loop.
# temp_holder - string, holds the choosed array item.
# check - holds a boolean value that is to be checked later.
#
# Examples
#
#   total_functions(["# bananpaj o grillkorv","hello", "my", "\n", "    \n", "friend", "def yas(arr)\n", "def hello(arr)\n"])
#   # => 2
#
# Returns the number of functions.
def total_functions(arr)
    output = 0
    begin
        funcDef = "def"
        i = 0
        while i < arr.length
            j = 0
            temp_holder = arr[i]
            while j < temp_holder.length
                if funcDef.length > temp_holder.length
                    break
                else
                    if funcDef[0] == temp_holder[j]
                        z = 0
                        check = false
                        while z < funcDef.length
                            if funcDef[z] == temp_holder[j+z]
                                check = true
                            else
                                check = false
                            end
                            z += 1
                        end
                        if check == true
                            output += 1
                            j += z
                        else
                            j += 1
                        end
                    else
                        j += 1
                    end
                end
            end
            i += 1
        end
    rescue NameError
        p "No variable with this name"
    rescue TypeError
        p "String was not converted into integer"
    rescue IndexError
        p "Index was not inside the paramaters"
    ensure
        return output
    end
end

# Function not working and syntax is unreadable.
# Gives rescue message for NameError.
def documented_functions(arr)
    output = 0
    begin
        i = 0
        while i < arr.length
            j = 0
            temp_holder = arr[i]
            while j < temp_holder.length
                if temp_holder[j] == "#" && #temp_holder.length > 2
                    comment_line = temp_holder.split(" ")
                    funcName = comment_line[1]
                    funcDef = "def"
                    z = 0
                    while z < arr.length
                        checkName = false
                        e = 0
                        arr_item_holder = arr[z]
                        while e < arr_item_holder.length
                            if funcDef.length > arr_item_holder.length
                                break
                            elsif funcDef[0] == arr_item_holder[e]
                                g = 0
                                check = false
                                while g < funcDef.length
                                    if funcDef[g] == arr_item_holder[e+g]
                                        check = true
                                    else
                                        check = false
                                    end
                                    g += 1
                                end
                                if check == true 
                                    checkName = true
                                    break
                                end
                            end
                            e += 1
                        end
                        funcCheck = false
                        if checkName == true
                            function_line = arr_item_holder.split(" ")
                            funcNameLine = function_line[1]
                            u = 0
                            funcCheck = false
                            while u < funcName.length - 1
                                if funcNameLine[u] == funcName[u]
                                    funcCheck = true
                                else
                                    funcCheck = false
                                    break
                                end
                                u += 1
                            end
                        end
                        if funcCheck == true
                            output += 1
                            break
                        end
                        z += 1
                    end
                elsif temp_holder[j] != " "
                    break
                end
                j += 1
            end
            i += 1
        end
    rescue NameError
        p "No variable with this name"
    rescue TypeError
        p "String was not converted into integer"
    rescue IndexError
        p "Index was not inside the paramaters"
    ensure
        return output
    end 
end

def cloc(arr)
    return "No file was attached" if arr.length == 0
    filelines = File.readlines(arr[0])
    # p filelines
    codeLines = code_lines(filelines)
    commentLines = comment_lines(filelines)
    emptyLines = empty_lines(filelines)
    totalLines = total_lines(filelines)
    totalFunctions = total_functions(filelines)
    docFunctions = documented_functions(filelines)
    undocFunctions = totalFunctions - docFunctions
    output = "Lines of code: #{codeLines}\nLines of comments: #{commentLines}\nEmpty lines: #{emptyLines}\nTotal lines: #{totalLines}\nTotal number of functions: #{totalFunctions}\nDocumented functions: #{docFunctions}\nUndocumented functions: #{undocFunctions}"
    return output
end
filename = ARGV
puts cloc(filename)