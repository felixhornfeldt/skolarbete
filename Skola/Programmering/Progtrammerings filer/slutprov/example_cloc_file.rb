# multiplex: Duplicate some text an arbitrary number of times.
#
# text  - The String to be duplicated.
# count - The Integer number of times to duplicate the text.
#
# Examples
#
#   multiplex('Tom', 4)
#   # => 'TomTomTomTom'
#
# Returns the duplicated String.
def multiplex(text, count)
  return text * count
end

def stupid_pluralize(word)
    output = word #woot!
    output += "s"
    return output
end

# stupid_multiply: Multiplies a number an arbitrary number of times
#
# factor1  - The first Integer.
# factor2 - The second Integer.
#
# Examples
#
#   stupid_multiply(4, 4)
#   # => 16
#
# Returns the multiplied number
def stupid_multiply(factor1, factor2)

  output = 0
  i = 0
  while i < factor2
  	output += factor1
  	i += 1
  end
  return output

end

