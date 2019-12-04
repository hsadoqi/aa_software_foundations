def element_count(arr)
    element_hash = {}

    arr.each do |ele|
        if element_hash[ele]
            element_hash[ele] += 1
        else 
            element_hash[ele] = 1
        end
    end 

    element_hash
end 

def char_replace!(str, hash)
    str.split("").each do |char|
        if hash[char]
            str.gsub!(char, hash[char])
        end
    end
    str
end 

def product_inject(arr)
    arr.inject(:*)
end