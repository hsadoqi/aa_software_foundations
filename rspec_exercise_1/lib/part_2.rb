def hipsterfy(str)
    # accept word 
    # return word its last vowel removed
    # return original word if no vowels
    vowels = "aeiou"
    vowel_arr = []

    str.split("").each_with_index do |char, idx|
        if vowels.include?(char)
            vowel_arr << idx
        end
    end

    if vowel_arr.length != 0 
        str.slice!(vowel_arr[-1])
    end
    str   
end

def vowel_counts(str)
    # accept str
    # return hash with each key is vowel of string and val is number of times it appears
    vowels = "aeiou"
    hash = Hash.new(0)
    str.downcase.split("").each do |char|
        if vowels.include?(char)
            if hash[char]
                hash[char] += 1
            end
        end
    end
    hash
end

def caesar_cipher(str, num)
    # accept a message and number as an arg
    # return new string where every letter is shifted n positions 
    # not modify non-alphabetic characters
    alpha = ("a".."z").to_a
    new_str = ""
    str.split("").map! do |char|
        if alpha.include?(char)
            new_idx = alpha.index(char) + num
            new_str += alpha[new_idx % 26]
        else 
            new_str += char
        end
    end
    new_str
end

