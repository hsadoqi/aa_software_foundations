def partition(arr, num)
    small_arr = []
    large_arr = []
    arr.each do |n|
        if n < num 
            small_arr << n 
        else 
            large_arr << n
        end
    end
    [small_arr, large_arr]
end 

def merge(hash_1, hash_2)
    new_hash = {}
    hash_1.each {|k, v| new_hash[k] = v}
    hash_2.each {|k, v| new_hash[k] = v}
    new_hash
end 

def censor(str, arr)
    vowels = "aeiou"
    str.split(" ").map do |word|
        if arr.include?(word.downcase)
            censor_vowels(word)
        else 
            word
        end
    end.join(" ")
end

def censor_vowels(word)
    vowels = "aeiou"
    new_str = ""
    word.each_char do |char|
        if vowels.include?(char.downcase)
            new_str += "*"
        else 
            new_str += char
        end
    end
    new_str
end 


def power_of_two?(n)
    num = 1

    while num < n
        num *= 2
    end

    num == n
end
