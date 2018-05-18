def documented_functions(arr)
    output = 0
    begin
        i = 0
        while i < arr.length
            j = 0
            temp_holder = arr[i]
            while j < temp_holder.length
                if temp_holder[j] == "#" && temp_holder.length > 2
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
                            if funcCheck == true
                                output += 1
                                break
                            end
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

filename = ARGV
wow = File.readlines(filename[0])
p documented_functions(wow)