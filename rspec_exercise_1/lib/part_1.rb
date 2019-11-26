def average(num_1, num_2)
    # accept 2 numbers
    # return avg of both numbers
    (num_1 + num_2) / 2.0
end 

def average_array(arr)
    # should accept array of numbers
    # return avg of numbers in array
    arr.reduce(:+) / arr.length.to_f
end 

def repeat(str, n)
    # accept a string and a number
    # return a new string where original is repeated that number of times
    new_string = ''
    n.times do
        new_string += str
    end 
    new_string
end

def yell(str)
    # accept a string as an arg
    # return a yelled version of the string
    str.upcase + '!'
end

def alternating_case(str)
    # accept a sentence string as an arg
    # return sentence with word alternating between lower and uppercase
    new_arr = []
    str.split.each_with_index do |word, idx|
        if idx % 2 == 0 
            new_arr << word.upcase 
        else 
            new_arr << word.downcase 
        end
    end
    new_arr.join(" ")
end 